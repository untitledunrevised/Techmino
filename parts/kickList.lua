local zero={0,0}
local Zero={zero}
local ZERO={[01]=Zero,[10]=Zero,[03]=Zero,[30]=Zero,[12]=Zero,[21]=Zero,[32]=Zero,[23]=Zero,[02]=Zero,[20]=Zero,[13]=Zero,[31]=Zero}

local map={}
for x=-3,3 do map[x]={}for y=-3,3 do map[x][y]={x,y}end end
local function collect(T)--Make all vec point to the same vec
	if type(T)=="table"then
		for _,T in next,T do
			for k,vec in next,T do
				T[k]=map[vec[1]][vec[2]]
			end
		end
	end
end

local function C_sym(L)--Use this if the block is centrosymmetry, *PTR!!!
	L[23]=L[01]L[32]=L[10]
	L[21]=L[03]L[12]=L[30]
end
local function flipList(O)--Use this to copy a symmetry list
	if not O then return end
	local L={}
	for i=1,#O do
		L[i]={-O[i][1],O[i][2]}
	end
	return L
end
local function reflect(a)
	local b={}
	b[03]=flipList(a[01])
	b[01]=flipList(a[03])
	b[30]=flipList(a[10])
	b[32]=flipList(a[12])
	b[23]=flipList(a[21])
	b[21]=flipList(a[23])
	b[10]=flipList(a[30])
	b[12]=flipList(a[32])
	b[02]=flipList(a[02])
	b[20]=flipList(a[20])
	b[31]=flipList(a[13])
	b[13]=flipList(a[31])
	return b
end
local function pushZero(T)
	for _,L in next,T do
		if type(L)=="table"then
			for _,v in next,L do
				table.insert(v,1,zero)
			end
		end
	end
end

local TRS
do
	local OspinList={
		{111,5,2, 0,-1,0},{111,5,2,-1,-1,0},{111,5,0,-1, 0,0},--T
		{333,5,2,-1,-1,0},{333,5,2, 0,-1,0},{333,5,0, 0, 0,0},--T
		{313,1,2,-1, 0,0},{313,1,2, 0,-1,0},{313,1,2, 0, 0,0},--Z
		{131,2,2, 0, 0,0},{131,2,2,-1,-1,0},{131,2,2,-1, 0,0},--S
		{331,3,2, 0,-1,0},{113,3,0, 0, 0,0},{113,3,2,-1, 0,0},--J
		{113,4,2,-1,-1,0},{331,4,0,-1, 0,0},{331,4,2, 0, 0,0},--L
		{222,7,2,-1, 0,1},{222,7,2,-2, 0,1},{222,7,2, 0, 0,1},--I
		{121,6,0, 1,-1,2},{112,6,0, 2,-1,2},{122,6,0, 1,-2,2},--O
		{323,6,0,-1,-1,2},{332,6,0,-2,-1,2},{322,6,0,-1,-2,2},--O
	}--{keys, ID, dir, dx, dy, freeLevel (0=immovable,1=L+R immovable,2=free)}
	local XspinList={
		{{ 1,-1},{ 1, 0},{ 1, 1},{ 1,-2},{ 1, 2}},
		{{ 0,-1},{ 0,-2},{ 0, 1},{ 0,-2},{ 0, 2}},
		{{-1,-1},{-1, 0},{-1, 1},{-1,-2},{-1, 2}},
	}
	TRS={
		{
			[01]={{-1, 0},{-1, 1},{ 0,-2},{-1, 2},{ 0, 1}},
			[10]={{ 1, 0},{ 1,-1},{ 0, 2},{ 1,-2},{ 1,-2}},
			[03]={{ 1, 0},{ 1, 1},{ 0,-2},{ 1,-1},{ 1,-2}},
			[30]={{-1, 0},{-1,-1},{ 0, 2},{-1, 2},{ 0,-1}},
			[12]={{ 1, 0},{ 1,-1},{ 0, 2},{ 1, 2}},
			[21]={{-1, 0},{-1, 1},{ 0,-2},{-1,-2}},
			[32]={{-1, 0},{-1,-1},{ 0, 2},{-1, 2}},
			[23]={{ 1, 0},{ 1, 1},{ 0,-2},{ 1,-2}},
			[02]={{ 1, 0},{-1, 0},{ 0,-1},{ 0, 1}},
			[20]={{-1, 0},{ 1, 0},{ 0, 1},{ 0,-1}},
			[13]={{ 0,-1},{ 0, 1},{-1, 0},{ 0,-2}},
			[31]={{ 0, 1},{ 0,-1},{ 1, 0}},
		},--Z
		false,--S
		{
			[01]={{-1, 0},{-1, 1},{ 1, 0},{ 0,-2},{ 1, 1}},
			[10]={{ 1, 0},{ 1,-1},{-1, 0},{ 0, 2},{ 1, 2}},
			[03]={{ 1, 0},{ 1, 1},{ 0,-2},{ 1,-2},{ 1,-1},{ 0, 1}},
			[30]={{-1, 0},{-1,-1},{ 0, 2},{-1, 2},{ 0,-1},{-1, 1}},
			[12]={{ 1, 0},{ 1,-1},{ 1, 1},{-1, 0},{ 0,-1},{ 0, 2},{ 1, 2}},
			[21]={{-1, 0},{-1, 1},{-1,-1},{ 1, 0},{ 0, 1},{ 0,-2},{-1,-2}},
			[32]={{-1, 0},{-1,-1},{ 1, 0},{ 0, 2},{-1, 2},{-1, 1}},
			[23]={{ 1, 0},{ 1,-1},{-1, 0},{ 1, 1},{ 0,-2},{ 1,-2}},
			[02]={{-1, 0},{ 1, 0},{ 0,-1},{ 0, 1}},
			[20]={{ 1, 0},{-1, 0},{ 0, 1},{ 0,-1}},
			[13]={{ 0,-1},{ 0, 1},{ 1, 0}},
			[31]={{ 0, 1},{ 0,-1},{-1, 0}},
		},--J
		false,--L
		{
			[01]={{-1, 0},{-1, 1},{ 0,-2},{-1,-2},{ 0, 1}},
			[10]={{ 1, 0},{ 1,-1},{ 0, 2},{ 1, 2},{ 0,-1}},
			[03]={{ 1, 0},{ 1, 1},{ 0,-2},{ 1,-2},{ 0, 1}},
			[30]={{-1, 0},{-1,-1},{ 0, 2},{-1, 2},{ 0,-1}},
			[12]={{ 1, 0},{ 1,-1},{ 0,-1},{-1,-1},{ 0, 2},{ 1, 2}},
			[21]={{-1, 0},{ 0,-2},{-1,-2},{ 1, 1}},
			[32]={{-1, 0},{-1,-1},{ 0,-1},{ 1,-1},{ 0, 2},{-1, 2}},
			[23]={{ 1, 0},{ 0,-2},{ 1,-2},{-1, 1}},
			[02]={{-1, 0},{ 1, 0},{ 0, 1}},
			[20]={{ 1, 0},{-1, 0},{ 0,-1}},
			[13]={{ 0,-1},{ 0, 1},{ 1, 0},{ 0,-2},{ 0, 2}},
			[31]={{ 0,-1},{ 0, 1},{-1, 0},{ 0,-2},{ 0, 2}},
		},--T
		function(P,d)
			if P.human then SFX.fieldPlay("rotate",nil,P)end
			if not P.gameEnv.ospin then return end
			local x,y=P.curX,P.curY
			if y==P.imgY and((P:solid(x-1,y)or P:solid(x-1,y+1)))and(P:solid(x+2,y)or P:solid(x+2,y+1))then
				local D=P.spinSeq%100*10+d
				P.spinSeq=D
				if D<100 then
					P:freshBlock(true,true)
					return
				end
				for i=1,#OspinList do
					local L=OspinList[i]
					if D==L[1]then
						local id,dir=L[2],L[3]
						local bk=blocks[id][dir]
						local x,y=P.curX+L[4],P.curY+L[5]
						if not P:ifoverlap(bk,x,y)and(L[6]>0 or P:ifoverlap(bk,x-1,y)and P:ifoverlap(bk,x+1,y))and(L[6]==2 or P:ifoverlap(bk,x,y-1))and P:ifoverlap(bk,x,y+1)then
							local C=P.cur
							C.id=id
							C.bk=bk
							P.curX,P.curY=x,y
							P.r,P.c=#bk,#bk[1]
							P.dir,P.sc=dir,spinCenters[id][dir]
							P.spinLast=2
							P.stat.rotate=P.stat.rotate+1
							P:freshBlock(false,true)
							P.spinSeq=0
							SFX.fieldPlay("rotatekick",nil,P)
							return
						end
					end
				end
			else
				P.spinSeq=0
				P:freshBlock(true,true)
			end
		end,--O
		{
			[01]={{ 0, 1},{ 1, 0},{-2, 0},{-2,-1},{ 1, 2}},
			[10]={{ 2, 0},{-1, 0},{-1,-2},{ 2, 1},{ 0, 1}},
			[03]={{ 0, 1},{-1, 0},{ 2, 0},{ 2,-1},{-1, 2}},
			[30]={{-2, 0},{ 1, 0},{ 1,-2},{-2, 1},{ 0, 1}},
			[12]={{-1, 0},{ 2, 0},{ 2,-1},{ 0,-1},{-1, 2}},
			[21]={{-2, 0},{ 1, 0},{ 1,-2},{-2, 1},{ 0, 1}},
			[32]={{ 1, 0},{-2, 0},{-2,-1},{ 0,-1},{ 1, 2}},
			[23]={{ 2, 0},{-1, 0},{-1,-2},{ 2, 1},{ 0, 1}},
			[02]={{-1, 0},{ 1, 0},{ 0,-1},{ 0, 1}},
			[20]={{ 1, 0},{-1, 0},{ 0, 1},{ 0,-1}},
			[13]={{ 0,-1},{-1, 0},{ 1, 0},{ 0, 1}},
			[31]={{ 0,-1},{ 1, 0},{-1, 0},{ 0, 1}},
		},--I
		{
			[01]={{-1, 0},{ 0, 1},{ 1, 1},{ 0,-3},{ 0, 2},{ 0, 3},{-1, 2}},
			[10]={{ 1, 0},{ 0,-1},{-1,-1},{ 0,-2},{ 0,-3},{ 0, 3},{ 1,-2}},
			[03]={{ 1, 0},{ 0,-3},{ 0, 1},{ 0, 2},{ 0, 3},{ 1, 2}},
			[30]={{-1, 0},{ 0, 1},{ 0,-2},{ 0,-3},{ 0, 3},{-1,-2}},
		},--Z5
		false,--S5
		{
			[01]={{-1, 0},{-1, 1},{ 0,-2},{-1,-2},{-1,-1},{ 0, 1}},
			[10]={{ 1, 0},{ 1,-1},{ 0, 2},{ 1, 2},{ 0,-1},{ 1, 1}},
			[03]={{ 1, 0},{ 1, 1},{ 0,-2},{-1, 1}},
			[30]={{-1, 0},{-1,-1},{ 0, 2},{-1, 2}},
			[12]={{ 1, 0},{ 1,-1},{ 0, 2},{ 1, 2},{ 1, 1}},
			[21]={{-1, 0},{-1,-1},{-1, 1},{ 0,-2},{-1,-2},{-1,-1}},
			[32]={{-1, 0},{-1,-1},{-1, 1},{ 1, 0},{ 0,-1},{ 0, 2},{-1, 2}},
			[23]={{ 1, 0},{ 1, 1},{-1, 0},{ 0,-2},{ 1,-2}},
			[02]={{-1, 0},{ 0,-1},{ 0, 1}},
			[20]={{ 1, 0},{ 0, 1},{ 0,-1}},
			[13]={{ 1, 0},{ 0, 1},{-1, 0}},
			[31]={{-1, 0},{ 0,-1},{ 1, 0}},
		},--P
		false,--Q
		{
			[01]={{-1, 0},{ 1, 0},{-1, 1},{ 0,-2},{ 0,-3}},
			[10]={{ 1, 0},{ 1,-1},{-1, 0},{ 0, 2},{ 0, 3}},
			[03]={{ 1, 0},{ 1,-1},{ 0, 1},{ 0,-2},{ 0,-3}},
			[30]={{-1, 1},{ 1, 0},{ 0,-1},{ 0, 2},{ 0, 3}},
			[12]={{ 1, 0},{ 0,-1},{-1, 0},{ 0, 2}},
			[21]={{-1, 0},{ 0, 1},{ 1, 0},{ 0,-2}},
			[32]={{-1, 0},{ 0, 1},{-1, 1},{ 1, 0},{ 0, 2},{-2, 0}},
			[23]={{ 1, 0},{ 1,-1},{ 0,-1},{-1, 0},{ 0,-2},{ 2, 0}},
			[02]={{ 1, 0},{-1, 0},{-1,-1}},
			[20]={{-1, 0},{ 1, 0},{ 1, 1}},
			[13]={{ 0,-1},{-1, 1},{ 0, 1}},
			[31]={{ 0,-1},{ 1,-1},{ 0, 1}},
		},--F
		false,--E
		{
			[01]={{ 0,-1},{-1,-1},{ 1, 1},{ 1, 0},{ 1,-3},{-1, 0},{ 0, 2},{-1, 2}},
			[10]={{ 1, 0},{ 0,-1},{-1,-1},{ 0,-2},{-1, 1},{ 0,-3},{ 1,-2},{ 0, 1}},
			[03]={{ 0,-1},{ 1,-1},{-1,-1},{-1, 0},{-1,-3},{ 1, 0},{ 0, 2},{ 1, 2}},
			[30]={{-1, 0},{ 0,-1},{ 1,-1},{ 0,-2},{ 1, 1},{ 0,-3},{-1,-2},{ 0, 1}},
			[12]={{ 1, 0},{-1, 0},{ 0,-2},{ 0,-3},{ 0, 1},{-1, 1}},
			[21]={{ 1,-1},{-1, 0},{ 1, 0},{ 0,-1},{ 0, 2},{ 0, 3}},
			[32]={{-1, 0},{ 1, 0},{ 0,-2},{ 0,-3},{ 0, 1},{ 1, 1}},
			[23]={{-1,-1},{ 1, 0},{-1, 0},{ 0,-1},{ 0, 2},{ 0, 3}},
			[02]={{ 0, 1},{ 0,-1},{ 0, 2}},
			[20]={{ 0,-1},{ 0, 1},{ 0,-2}},
			[13]={{ 1, 0},{-1, 1},{-2, 0}},
			[31]={{-1, 0},{ 1, 1},{ 2, 0}},
		},--T5
		{
			[01]={{-1, 0},{-1, 1},{ 0,-2},{-1,-2}},
			[10]={{ 1, 0},{ 1,-1},{ 0, 2},{ 1, 2}},
			[03]={{ 1, 0},{ 1, 1},{ 0,-2},{ 1,-2}},
			[30]={{-1, 0},{-1,-1},{ 0,-2},{-1, 2}},
			[12]={{ 1, 0},{ 1,-1},{ 1, 1}},
			[21]={{-1,-1},{-1, 1},{-1,-1}},
			[32]={{-1, 0},{-1,-1},{-1, 1}},
			[23]={{ 1,-1},{ 1, 1},{ 1,-1}},
			[02]={{ 0, 1}},
			[20]={{ 0,-1}},
			[13]={{ 0,-1},{ 0, 1},{ 1, 0}},
			[31]={{ 0,-1},{ 0, 1},{-1, 0}},
		},--U
		{
			[01]={{ 0, 1},{-1, 0},{ 0,-2},{-1,-2}},
			[10]={{ 0, 1},{ 1, 0},{ 0,-2},{ 1,-2}},
			[03]={{ 0,-1},{ 0, 1},{ 0, 2}},
			[30]={{ 0,-1},{ 0, 1},{ 0,-2}},
			[12]={{ 0,-1},{ 0, 1}},
			[21]={{ 0,-1},{ 0,-2}},
			[32]={{ 1, 0},{-1, 0}},
			[23]={{-1, 0},{ 1, 0}},
			[02]={{-1, 1},{ 1,-1}},
			[20]={{ 1,-1},{-1, 1}},
			[13]={{ 1, 1},{-1,-1}},
			[31]={{-1,-1},{ 1, 1}},
		},--V
		{
			[01]={{ 0,-1},{-1, 0},{ 1, 0},{ 1,-1},{ 0, 2}},
			[10]={{ 0,-1},{-1,-1},{ 0, 1},{ 0,-2},{ 1,-2},{ 0, 2}},
			[03]={{ 1, 0},{ 1, 1},{ 0,-1},{ 0,-2},{ 0,-3},{ 1,-1},{ 0, 1},{ 0, 2},{ 0, 3}},
			[30]={{-1, 0},{-1, 1},{ 0,-1},{ 0,-2},{ 0,-3},{-1,-1},{ 0, 1},{ 0, 2},{ 0, 3}},
			[12]={{ 1, 0},{ 0,-1},{-2, 0},{ 1, 1},{-1, 0},{ 0, 1},{-1,-1}},
			[21]={{-1, 0},{ 0,-1},{ 2, 0},{-1, 1},{ 1, 0},{ 0, 1},{ 1,-1}},
			[32]={{ 0,-1},{ 1, 0},{ 0, 1},{-1, 0},{-1,-1},{ 0, 2}},
			[23]={{ 0,-1},{ 1,-1},{ 0, 1},{ 0,-2},{-1,-2},{ 0, 2}},
			[02]={{ 0,-1},{-1, 0}},
			[20]={{ 0, 1},{ 1, 0}},
			[13]={{ 0, 1},{-1, 0}},
			[31]={{ 0,-1},{ 1, 0}},
		},--W
		function(P,d)
			if P.human then SFX.fieldPlay("rotate",nil,P)end
			local iki=XspinList[d]
			for test=1,#iki do
				local x,y=P.curX+iki[test][1],P.curY+iki[test][2]
				if not P:ifoverlap(P.cur.bk,x,y)then
					P.curX,P.curY=x,y
					P.spinLast=1
					P:freshBlock(false,true)
					P.stat.rotate=P.stat.rotate+1
					return
				end
			end
			P:freshBlock(true,true)
		end,--X
		{
			[01]={{-1, 0},{-1, 1},{ 0,-3},{-1, 1},{-1, 2},{ 0, 1}},
			[10]={{-1, 0},{ 1,-1},{ 0, 3},{ 1,-1},{ 1,-2},{ 0, 1}},
			[03]={{ 0,-1},{ 1,-1},{-1, 0},{ 1, 1},{ 0,-2},{ 1,-2},{ 0,-3},{ 1,-3},{-1, 1}},
			[30]={{ 0, 1},{-1, 1},{ 1, 0},{-1,-1},{ 0, 2},{-1, 2},{ 0, 3},{-1, 3},{ 1,-1}},
			[12]={{ 1, 0},{ 1,-1},{ 0,-1},{ 1,-2},{ 0,-2},{ 1, 1},{-1, 0},{ 0, 2},{ 1, 2}},
			[21]={{-1, 0},{-1, 1},{ 0, 1},{-1, 2},{ 0, 2},{-1,-1},{ 1, 0},{ 0,-2},{-1,-2}},
			[32]={{-1, 0},{-1, 1},{-1,-1},{ 1, 0},{ 0, 2},{-1, 2},{ 0,-2}},
			[23]={{ 1, 0},{ 1,-1},{ 1, 1},{-1, 0},{ 0,-2},{ 1,-2},{ 0, 2}},
			[02]={{ 0,-1},{ 1,-1},{-1, 0},{ 2,-1},{ 0, 1}},
			[20]={{ 0, 1},{-1, 1},{ 1, 0},{-2, 1},{ 0,-1}},
			[13]={{-1, 0},{-1,-1},{ 0, 1},{-1,-2}},
			[31]={{ 1, 0},{ 1, 1},{ 0,-1},{ 1, 2}},
		},--J5
		false,--L5
		{
			[01]={{-1, 0},{-1, 0},{-1, 1},{ 1, 0},{-1, 2},{-1,-1},{ 0,-3},{ 0, 1}},
			[10]={{-1, 0},{ 1, 0},{ 1,-1},{ 1, 0},{ 1,-2},{ 1, 1},{ 0, 3},{ 0, 1}},
			[03]={{ 0,-1},{ 1, 0},{ 1,-1},{-1, 0},{ 1, 1},{ 0,-2},{ 1,-2},{ 0,-3},{ 1,-3},{-1, 1}},
			[30]={{ 0, 1},{-1, 0},{-1, 1},{ 1, 0},{-1,-1},{ 0, 2},{-1, 2},{ 0, 3},{-1, 3},{ 1,-1}},
			[12]={{ 1, 0},{ 1,-1},{ 0,-1},{ 1,-2},{ 0,-2},{ 1, 1},{-1, 0},{ 0, 2},{ 1, 2}},
			[21]={{-1, 0},{-1, 1},{ 0, 1},{-1, 2},{ 0, 2},{-1,-1},{ 1, 0},{ 0,-2},{-1,-2}},
			[32]={{ 0,-1},{-1, 0},{-1, 1},{-1,-1},{ 1, 0},{ 0, 2},{-1, 2},{ 0,-2}},
			[23]={{ 0, 1},{ 1, 0},{ 1,-1},{ 1, 1},{-1, 0},{ 0,-2},{ 1,-2},{ 0, 2}},
			[02]={{ 0,-1},{ 1,-1},{-1, 0},{ 2,-1},{ 0, 1}},
			[20]={{ 0, 1},{-1, 1},{ 1, 0},{-2, 1},{ 0,-1}},
			[13]={{-1, 0},{-1,-1},{ 0, 1},{-1,-2}},
			[31]={{ 1, 0},{ 1, 1},{ 0,-1},{ 1, 2}},
		},--R
		false,--Y
		{
			[01]={{-1, 0},{-1, 1},{ 0, 1},{ 1, 0},{-1, 2},{-2, 0},{ 0,-2}},
			[10]={{ 1, 0},{-1, 0},{ 0,-1},{ 1,-1},{ 1,-2},{ 2, 0},{ 0, 2}},
			[03]={{-1, 0},{ 1,-1},{ 0,-2},{ 0,-3},{ 1, 0},{ 1,-2},{ 1,-3},{ 0, 1},{-1, 1}},
			[30]={{-1, 0},{ 1,-1},{ 1,-2},{ 1, 0},{ 0,-2},{ 1,-3},{-1, 2},{ 0, 3},{-1, 3}},
			[12]={{-1, 0},{ 1,-1},{-1,-1},{ 1,-2},{ 1, 0},{ 0,-2},{ 1,-3},{-1, 2},{ 0, 3},{-1, 3}},
			[21]={{-1, 0},{ 1,-1},{ 1, 1},{ 0,-2},{ 0,-3},{ 1, 0},{ 1,-2},{ 1,-3},{ 0, 1},{-1, 1}},
			[32]={{-1, 0},{ 0,-1},{-1,-2},{ 1,-1},{ 1, 0},{ 1, 1},{ 0, 2},{ 0, 3}},
			[23]={{ 0,-2},{ 0,-3},{ 1, 2},{ 1, 0},{ 0, 1},{-1, 1},{ 0,-1},{ 0, 2}},
			[02]={{-1, 0},{ 0, 2},{ 0,-1}},
			[20]={{ 1, 0},{ 0,-2},{ 0, 1}},
			[13]={{-1, 0},{-1,-1},{ 0, 1},{ 1, 2}},
			[31]={{ 1, 0},{ 1, 1},{ 0,-1},{-1,-2}},
		},--N
		false,--H
		{
			[01]={{ 1,-1},{ 1, 0},{ 1, 1},{ 0, 1},{-1, 1},{-1, 0},{-1,-1},{ 0,-1},{ 0,-2},{-2,-1},{-2,-2},{ 2, 0},{ 2,-1},{ 2,-2},{ 1, 2},{ 2, 2},{-1, 2},{-2, 2}},
			[10]={{-1, 0},{-1,-1},{ 0,-1},{ 1,-1},{-2,-2},{-2,-1},{-2, 0},{-1,-2},{ 0,-2},{ 1,-2},{ 2,-2},{-1, 1},{-2, 1},{-2, 2},{ 1, 0},{ 2, 0},{ 2,-1},{ 0, 1},{ 1,-1},{ 2,-2}},
			[03]={{-1,-1},{-1, 0},{-1, 1},{-0, 1},{ 1, 1},{ 1, 0},{ 1,-1},{-0,-1},{-0,-2},{ 2,-1},{ 2,-2},{-2, 0},{-2,-1},{-2,-2},{-1, 2},{-2, 2},{ 1, 2},{ 2, 2}},
			[30]={{ 1, 0},{ 1,-1},{-0,-1},{-1,-1},{ 2,-2},{ 2,-1},{ 2, 0},{ 1,-2},{-0,-2},{-1,-2},{-2,-2},{ 1, 1},{ 2, 1},{ 2, 2},{-1, 0},{-2, 0},{-2,-1},{ 0, 1},{-1,-1},{-2,-2}},
		},--I5
	}
	TRS[2]=	reflect(TRS[1])--SZ
	TRS[4]=	reflect(TRS[3])--LJ
	TRS[9]=	reflect(TRS[8])--S5Z5
	TRS[11]=reflect(TRS[10])--PQ
	TRS[13]=reflect(TRS[12])--FE
	TRS[20]=reflect(TRS[19])--L5J5
	TRS[22]=reflect(TRS[21])--RY
	TRS[24]=reflect(TRS[23])--HN
	pushZero(TRS)

	C_sym(TRS[8])
	C_sym(TRS[9])
	C_sym(TRS[25])
	for i=1,25 do collect(TRS[i])end
end

local AIRS
do
	AIRS={
		{
			[01]={{-1,0},{-1, 1},{ 0,-2},{-1,-2}},
			[10]={{ 1,0},{ 1,-1},{ 0, 2},{ 1, 2}},
			[03]={{ 1,0},{ 1, 1},{ 0,-2},{ 1,-2}},
			[30]={{-1,0},{-1,-1},{ 0, 2},{-1, 2}},
			[12]={{ 1,0},{ 1,-1},{ 0, 2},{ 1, 2}},
			[21]={{-1,0},{-1, 1},{ 0,-2},{-1,-2}},
			[32]={{-1,0},{-1,-1},{ 0, 2},{-1, 2}},
			[23]={{ 1,0},{ 1, 1},{ 0,-2},{ 1,-2}},
		},
		false,
		false,
		false,
		false,
		function()end,
		{
			[01]={{-2, 0},{ 1, 0},{-2,-1},{ 1, 2}},
			[10]={{ 2, 0},{-1, 0},{ 2, 1},{-1,-2}},
			[12]={{-1, 0},{ 2, 0},{-1, 2},{ 2,-1}},
			[21]={{ 1, 0},{-2, 0},{ 1,-2},{-2, 1}},
			[23]={{ 2, 0},{-1, 0},{ 2, 1},{-1,-2}},
			[32]={{-2, 0},{ 1, 0},{-2,-1},{ 1, 2}},
			[30]={{ 1, 0},{-2, 0},{ 1,-2},{-2, 1}},
			[03]={{-1, 0},{ 2, 0},{-1, 2},{ 2,-1}},
		}
	}
	collect(AIRS[1])
	collect(AIRS[7])
	pushZero(AIRS)
	for i=2,5 do AIRS[i]=AIRS[1]end
	for i=8,25 do AIRS[i]=AIRS[1]end

end
local NONE={}
for i=1,25 do NONE[i]=ZERO end

return{
	TRS=TRS,
	AIRS=AIRS,
	NONE=NONE,
}