--Vertical red-green gradient
local gc=love.graphics
local back={}
local shader=SHADER.grad2

local t
function back.init()
    t=math.random()*2600
    BG.resize(nil,SCR.h)
end
function back.resize(_,h)
    shader:send('h',h*SCR.dpi)
end
function back.update(dt)
    t=t+dt
end
function back.draw()
    gc.clear(.08,.08,.084)
    shader:send('t',t)
    gc.setShader(shader)
    gc.rectangle('fill',0,0,SCR.w,SCR.h)
    gc.setShader()
end
return back
