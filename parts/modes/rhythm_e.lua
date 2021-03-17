local gc=love.graphics
local dropSpeed={[0]=40,33,27,20,16,12,11,10,9,8,7,6,5,4,3,3,2,2,1,1}

-- sample name format: 
-- music_sample_<instrument>_<name>
-- eg. music_sample_drumset_kick
--     music_sample_piano_C#4

local music_track_list={
	-- format:
	-- key: track name (key name in music_track_data)
	-- value: instrument name
	kick="drums",
	snare="drums",
	hat="drums"
}
local music_track_data={
	-- format:
	-- key: track name (defined above)
	-- value: an array of strings, each string represent the sample name to
	--        play. Empty string or nil means play nothing.
	-- This implementation only allows 1 sample per tick per track, if need to
	-- play chords, split the track into many.
	kick={
		"kick", nil, nil, nil
	},
	snare={
		nil, nil, "snare", nil
	},
	hat={
		"hatClosed", "hatClosed", "hatClosed", "hatClosed"
	}
}
local music_intro_length=0
local music_loop_length=4
local function music_play_tick(t)
	-- if tick # is longer than the music, wrap it back into the music's
	-- length
	if t>music_intro_length+music_loop_length then
		t=t-music_intro_length-1
		t=t%music_loop_length
		t=t+1
	end
	local sample=""
	-- for each track...
	for track, instrument in pairs(music_track_list) do
		-- take the tick...
		sample=music_track_data[track][t]
		-- if the sample name is not "" nor nil...
		if sample~="" and sample ~=nil then
			-- construct the sample name and play
			SFX.play("music_sample_"..instrument.."_"..sample)
		end
	end
end
		

return{
	color=COLOR.green,
	env={
		noTele=true,
		lock=1e99,
		wait=20,fall=90,
		mindas=7,minarr=1,minsdarr=1,
		keyCancel={6},
		dropPiece=function(P)
			if P.stat.row>=P.modeData.target then
				if P.modeData.target==200 then
					P:win("finish")
				else
					P.modeData.bpm=40+2*P.modeData.target/10
					P.modeData.beatFrame=3600/(P.modeData.bpm*P.modeData.tickrate)
					P.gameEnv.fall=math.floor(3600/P.modeData.bpm)
					P.gameEnv.wait=math.max(P.gameEnv.wait-2,0)
					P.gameEnv.drop=dropSpeed[P.modeData.target/10]
					P.modeData.target=P.modeData.target+10
					SFX.play("reach")
				end
			end
		end,
		task=function(P)
			P.modeData.target=10
			P.modeData.bpm=40
			P.modeData.tickrate=4
			-- technically it's "tickFrame" hm
			P.modeData.beatFrame=3600/(P.modeData.bpm*P.modeData.tickrate)
			P.gameEnv.fall=math.floor(3600/P.modeData.bpm)
			P.modeData.counter=0 -- so that a tick starts when game begins
			P.modeData.tickCounter=0
			while true do
				YIELD()
				P.modeData.counter=P.modeData.counter-1
				if P.modeData.counter<=0 then
					-- fractional-frame tick length support (not quite)
					P.modeData.counter=P.modeData.counter+P.modeData.beatFrame
					-- if it's a beat tick and not beginning of game:
					if P.modeData.tickCounter%P.modeData.tickrate==0 and P.modeData.tickCounter~=0 then
						-- do hard drop
						SFX.play("click",.3)
						P:switchKey(6,true)
						P:pressKey(6)
						P:switchKey(6,false)
					end
					-- play sample
					P.modeData.tickCounter=P.modeData.tickCounter+1
					music_play_tick(P.modeData.tickCounter)
				end
			end
		end,
		bg="bg2",bgm="push",
	},
	pauseLimit=true,
	slowMark=true,
	load=function()
		PLY.newPlayer(1)
	end,
	mesDisp=function(P)
		setFont(45)
		mStr(P.stat.row,69,320)
		mStr(P.modeData.target,69,370)
		gc.rectangle("fill",25,375,90,4)

		setFont(30)
		mStr(P.modeData.bpm,69,178)

		gc.setLineWidth(4)
		gc.circle("line",69,200,30)

		local beat=((P.modeData.counter/P.modeData.beatFrame)+(P.modeData.tickrate-(P.modeData.tickCounter-1)%P.modeData.tickrate)-1)/P.modeData.tickrate
		gc.setColor(1,1,1,1-beat)
		gc.setLineWidth(3)
		gc.circle("line",69,200,30+45*beat)
	end,
	score=function(P)return{math.min(P.stat.row,200),P.stat.time}end,
	scoreDisp=function(D)return D[1].." Lines   "..TIMESTR(D[2])end,
	comp=function(a,b)return a[1]>b[1]or a[1]==b[1]and a[2]<b[2]end,
	getRank=function(P)
		local L=P.stat.row
		return
			L>=200 and 5 or
			L>=170 and 4 or
			L>=140 and 3 or
			L>=100 and 2 or
			L>=50 and 1 or
			L>=20 and 0
	end,
}