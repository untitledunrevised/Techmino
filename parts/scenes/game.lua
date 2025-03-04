local gc,tc=love.graphics,love.touch
local gc_setColor,gc_setLineWidth=gc.setColor,gc.setLineWidth
local gc_draw,gc_line=gc.draw,gc.line
local gc_circle,gc_print=gc.circle,gc.print

local sin=math.sin

local SCR,VK=SCR,VK
local GAME,PLAYERS=GAME,PLAYERS
local setFont,mStr=FONT.set,GC.mStr

local noTouch,noKey=false,false
local touchMoveLastFrame=false
local trigGameRate,gameRate
local modeTextPos,modeTextWidK

local replaying
local repRateStrings={[0]="pause",[.125]="0.125x",[.5]="0.5x",[1]="1x",[2]="2x",[5]="5x"}

local scene={}

local function _updateMenuButtons()
    WIDGET.active.restart.hide=replaying

    local pos=(GAME.tasUsed or replaying)and'right'or SETTING.menuPos
    modeTextWidK=math.min(280/TEXTOBJ.modeName:getWidth(),1)
    if GAME.replaying then
        WIDGET.active.pause.x=1195
        modeTextPos=1185-TEXTOBJ.modeName:getWidth()*modeTextWidK
    elseif pos=='right'then
        WIDGET.active.restart.x=1125
        WIDGET.active.pause.x=1195
        modeTextPos=1115-TEXTOBJ.modeName:getWidth()*modeTextWidK
    elseif pos=='middle'then
        WIDGET.active.restart.x=360
        WIDGET.active.pause.x=860
        modeTextPos=940
    elseif pos=='left'then
        WIDGET.active.restart.x=120
        WIDGET.active.pause.x=190
        modeTextPos=1200-TEXTOBJ.modeName:getWidth()*modeTextWidK
    end
end
local function _updateRepButtons()
    local L=scene.widgetList
    if replaying or GAME.tasUsed then
        for i=1,6 do L[i].hide=false end L[7].hide=true
        if gameRate==0 then
            L[1].hide=true
            L[7].hide=false
        elseif gameRate==.125 then
            L[2].hide=true
        elseif gameRate==.5 then
            L[3].hide=true
        elseif gameRate==1 then
            L[4].hide=true
        elseif gameRate==2 then
            L[5].hide=true
        elseif gameRate==5 then
            L[6].hide=true
        end
    else
        for i=1,7 do L[i].hide=true end
    end
end
local function _speedUp()
    if gameRate==.125 then gameRate=.5
    elseif gameRate==.5 then gameRate=1
    elseif gameRate==1 then gameRate=2
    elseif gameRate==2 then gameRate=5
    end
    _updateRepButtons()
end
local function _speedDown()
    if gameRate==.5 then gameRate=.125
    elseif gameRate==1 then gameRate=.5
    elseif gameRate==2 then gameRate=1
    elseif gameRate==5 then gameRate=2
    end
    _updateRepButtons()
end
local function _rep0()
    scene.widgetList[1].hide=true
    scene.widgetList[7].hide=false
    gameRate=0
    _updateRepButtons()
end
local function _repP8()
    scene.widgetList[2].hide=true
    gameRate=.125
    _updateRepButtons()
end
local function _repP2()
    scene.widgetList[3].hide=true
    gameRate=.5
    _updateRepButtons()
end
local function _rep1()
    scene.widgetList[4].hide=true
    gameRate=1
    _updateRepButtons()
end
local function _rep2()
    scene.widgetList[5].hide=true
    gameRate=2
    _updateRepButtons()
end
local function _rep5()
    scene.widgetList[6].hide=true
    gameRate=5
    _updateRepButtons()
end
local function _step()trigGameRate=trigGameRate+1 end

local function _restart()
    resetGameData(PLAYERS[1].frameRun<240 and'q')
    noKey=replaying
    noTouch=replaying
    trigGameRate,gameRate=0,1
    _updateRepButtons()
end
local function _checkGameKeyDown(key)
    local k=KEY_MAP.keyboard[key]
    if k then
        if k>0 then
            if noKey then return end
            PLAYERS[1]:pressKey(k)
            VK.press(k)
            return
        elseif not GAME.fromRepMenu then
            _restart()
            return
        end
    end
    return true--No key pressed
end

function scene.sceneInit()
    if GAME.init then
        resetGameData()
        GAME.init=false
    end

    replaying=GAME.replaying
    noKey=replaying
    noTouch=not SETTING.VKSwitch or replaying

    if SCN.prev~='depause'and SCN.prev~='pause'then
        trigGameRate,gameRate=0,1
    elseif not replaying then
        if GAME.tasUsed then
            trigGameRate,gameRate=0,0
        else
            trigGameRate,gameRate=0,1
        end
    end

    _updateRepButtons()
    _updateMenuButtons()
end

scene.mouseDown=NULL
function scene.touchDown(x,y)
    if noTouch then return end

    local t=VK.on(x,y)
    if t then
        PLAYERS[1]:pressKey(t)
        VK.touch(t,x,y)
    end
end
function scene.touchUp(x,y)
    if noTouch then return end

    local n=VK.on(x,y)
    if n then
        PLAYERS[1]:releaseKey(n)
        VK.release(n)
    end
end
function scene.touchMove()
    if noTouch or touchMoveLastFrame then return end
    touchMoveLastFrame=true

    local L=tc.getTouches()
    for i=#L,1,-1 do
        L[2*i-1],L[2*i]=SCR.xOy:inverseTransformPoint(tc.getPosition(L[i]))
    end
    local keys=VK.keys
    for n=1,#keys do
        local B=keys[n]
        if B.ava then
            for i=1,#L,2 do
                if(L[i]-B.x)^2+(L[i+1]-B.y)^2<=B.r^2 then
                    goto CONTINUE_nextKey
                end
            end
            PLAYERS[1]:releaseKey(n)
            VK.release(n)
        end
        ::CONTINUE_nextKey::
    end
end
function scene.keyDown(key,isRep)
    if replaying then
        if key=='space'then
            if not isRep then
                gameRate=gameRate==0 and 1 or 0
            end
            _updateRepButtons()
        elseif key=='left'then
            if not isRep then
                _speedDown()
            end
        elseif key=='right'then
            if gameRate==0 then
                _step()
            elseif not isRep then
                _speedUp()
            end
        elseif key=='escape'then
            pauseGame()
        end
    else
        if isRep then
            return
        elseif _checkGameKeyDown(key)then
            if GAME.tasUsed then
                if key=='f1'then
                    if not isRep then
                        gameRate=gameRate==0 and .125 or 0
                    end
                    _updateRepButtons()
                elseif key=='f2'then
                    if not isRep then
                        _speedDown()
                    end
                elseif key=='f3'then
                    if gameRate==0 then
                        _step()
                    elseif not isRep then
                        _speedUp()
                    end
                end
            end
            if key=='escape'then
                pauseGame()
            end
        end
    end
end
function scene.keyUp(key)
    if noKey then return end
    local k=KEY_MAP.keyboard[key]
    if k then
        if k>0 then
            PLAYERS[1]:releaseKey(k)
            VK.release(k)
        end
    end
end
function scene.gamepadDown(key)
    if noKey then return end
    local k=KEY_MAP.joystick[key]
    if k then
        if k>0 then
            PLAYERS[1]:pressKey(k)
            VK.press(k)
        else
            _restart()
        end
    elseif key=='back'then
        pauseGame()
    end
end
function scene.gamepadUp(key)
    if noKey then return end
    local k=KEY_MAP.joystick[key]
    if k then
        if k>0 then
            PLAYERS[1]:releaseKey(k)
            VK.release(k)
        end
    end
end

local function _update_common(dt)
    --Update control
    touchMoveLastFrame=false
    VK.update(dt)

    --Update players
    for p=1,#PLAYERS do PLAYERS[p]:update(dt)end

    --Fresh royale target
    if PLAYERS[1].frameRun%120==0 and PLAYERS[1].gameEnv.layout=='royale'then
        freshMostDangerous()
    end

    --Warning check
    checkWarning(dt)
end
function scene.update(dt)
    trigGameRate=trigGameRate+gameRate
    while trigGameRate>=1 do
        trigGameRate=trigGameRate-1
        _update_common(dt)
    end
end

local tasText=gc.newText(getFont(100),"TAS")
local function _drawAtkPointer(x,y)
    local t=TIME()
    local a=t*3%1*.8
    t=sin(t*20)

    gc_setColor(.2,.7+t*.2,1,.6+t*.4)
    gc_circle('fill',x,y,25,6)

    gc_setColor(0,.6,1,.8-a)
    gc_circle('line',x,y,30*(1+a),6)
end
function scene.draw()
    local tas=GAME.tasUsed
    if tas then
        setFont(100)
        gc_setColor(.4,.4,.4,.5)
        mDraw(tasText,640,360,nil,5)
    end

    local repMode=GAME.replaying or tas

    --Players
    for p=1,#PLAYERS do
        PLAYERS[p]:draw(repMode)
    end

    --Virtual keys
    VK.draw()

    --Attacking & Being attacked
    if PLAYERS[1].gameEnv.layout=='royale'then
        local P=PLAYERS[1]
        gc_setLineWidth(5)
        gc_setColor(.8,1,0,.2)
        for i=1,#P.atker do
            local p=P.atker[i]
            gc_line(p.centerX,p.centerY,P.x+300*P.size,P.y+620*P.size)
        end
        if P.atkMode~=4 then
            if P.atking then
                _drawAtkPointer(P.atking.centerX,P.atking.centerY)
            end
        else
            for i=1,#P.atker do
                local p=P.atker[i]
                _drawAtkPointer(p.centerX,p.centerY)
            end
        end
    end

    --Mode info
    gc_setColor(1,1,1,.82)
    gc_draw(TEXTOBJ.modeName,modeTextPos,10,0,modeTextWidK,1)
    local M=GAME.curMode
    if M and M.score and M.records[1]then
        setFont(15)
        gc_setColor(1,1,1,.6)
        gc_print(M.scoreDisp(M.records[1]),modeTextPos,45)
    end

    --Replaying
    if replaying or tas then
        setFont(20)
        gc_setColor(1,1,TIME()%.8>.4 and 1 or 0)
        mStr(replaying and text.replaying or text.tasUsing,770,6)
        gc_setColor(1,1,1,.8)
        mStr(("%s   %sf"):format(repRateStrings[gameRate],PLAYERS[1].frameRun),770,31)
    end

    --Warning
    drawWarning()
end
scene.widgetList={
    WIDGET.newKey{name='rep0',   x=40,y=50,w=60, code=_rep0,    font=40,fText=CHAR.icon.pause},
    WIDGET.newKey{name='repP8',  x=105,y=50,w=60,code=_repP8,   font=40,fText=CHAR.icon.speedOneEights},
    WIDGET.newKey{name='repP2',  x=170,y=50,w=60,code=_repP2,   font=40,fText=CHAR.icon.speedOneHalf},
    WIDGET.newKey{name='rep1',   x=235,y=50,w=60,code=_rep1,    font=40,fText=CHAR.icon.speedOne},
    WIDGET.newKey{name='rep2',   x=300,y=50,w=60,code=_rep2,    font=40,fText=CHAR.icon.speedTwo},
    WIDGET.newKey{name='rep5',   x=365,y=50,w=60,code=_rep5,    font=40,fText=CHAR.icon.speedFive},
    WIDGET.newKey{name='step',   x=430,y=50,w=60,code=_step,    font=40,fText=CHAR.icon.nextFrame},
    WIDGET.newKey{name='restart',x=0,y=45,w=60,  code=_restart, font=40,fText=CHAR.icon.retry_spin},
    WIDGET.newKey{name='pause',  x=0,y=45,w=60,  code=pauseGame,font=40,fText=CHAR.icon.pause},
}

return scene
