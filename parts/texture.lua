local gc=love.graphics

local function NSC(x,y)--New & Set Canvas
    local _=gc.newCanvas(x,y)
    gc.setCanvas(_)
    return _
end
local TEXTURE={}


gc.setDefaultFilter('nearest','nearest')


TEXTURE.miniBlock={}--29 mini blocks image
do
    gc.setColor(1,1,1)
    for i=1,29 do
        local b=BLOCKS[i][0]
        TEXTURE.miniBlock[i]=NSC(#b[1]*2,#b*2)
        for y=1,#b do for x=1,#b[1]do
            if b[y][x]then
                gc.rectangle('fill',2*(x-1),2*(#b-y),2,2)
            end
        end end
    end
end

TEXTURE.puzzleMark={}--Texture for puzzle mode
do
    gc.setLineWidth(2)
    for i=1,17 do
        TEXTURE.puzzleMark[i]=GC.DO{30,30,
            {'setLW',2},
            {'setCL',BLOCK_COLORS[i][1],BLOCK_COLORS[i][2],BLOCK_COLORS[i][3],.7},
            {'dRect',5,5,20,20},
            {'dRect',10,10,10,10},
        }
    end
    for i=18,24 do
        TEXTURE.puzzleMark[i]=GC.DO{30,30,
            {'setCL',BLOCK_COLORS[i]},
            {'dRect',7,7,16,16},
        }
    end
    TEXTURE.puzzleMark[-1]=GC.DO{30,30,
        {'setCL',1,1,1,.8},
        {'draw',GC.DO{30,30,
            {'setLW',3},
            {'line',5,5,25,25},
            {'line',5,25,25,5},
        }}
    }
end

TEXTURE.pixelNum={}--A simple pixel font
for i=0,9 do
    TEXTURE.pixelNum[i]=GC.DO{5,9,
        {('1011011111'):byte(i+1)>48,'fRect',1,0,3,1},--up
        {('0011111011'):byte(i+1)>48,'fRect',1,4,3,1},--middle
        {('1011011011'):byte(i+1)>48,'fRect',1,8,3,1},--down
        {('1000111011'):byte(i+1)>48,'fRect',0,1,1,3},--up-left
        {('1111100111'):byte(i+1)>48,'fRect',4,1,1,3},--up-right
        {('1010001010'):byte(i+1)>48,'fRect',0,5,1,3},--down-left
        {('1101111111'):byte(i+1)>48,'fRect',4,5,1,3},--down-right
    }
end


gc.setDefaultFilter('linear','linear')


TEXTURE.title=NSC(1040,236)--Title image (Middle: 580,118)
do
    gc.translate(10,10)
    gc.setColor(.2,.2,.2)
    for i=1,#SVG_TITLE_FILL do
        local triangles=love.math.triangulate(SVG_TITLE_FILL[i])
        for j=1,#triangles do
            gc.polygon('fill',triangles[j])
        end
    end
    gc.setLineWidth(6)
    gc.setColor(COLOR.Z)
    for i=1,#SVG_TITLE_LINE do
        gc.polygon('line',SVG_TITLE_LINE[i])
    end
    gc.translate(-10,-10)
end

TEXTURE.title_color=NSC(1040,236)--Title image (colored)
do
    local titleColor={COLOR.P,COLOR.F,COLOR.V,COLOR.A,COLOR.M,COLOR.N,COLOR.W,COLOR.Y}

    gc.translate(10,10)
    for i=1,#SVG_TITLE_FILL do
        local triangles=love.math.triangulate(SVG_TITLE_FILL[i])
        gc.setColor(COLOR.D)
        for j=1,#triangles do
            gc.polygon('fill',triangles[j])
        end

        gc.setColor(.2+.8*titleColor[i][1],.2+.8*titleColor[i][2],.2+.8*titleColor[i][3],.3)
        for j=1,#triangles do
            gc.polygon('fill',triangles[j])
        end
    end
    gc.setLineWidth(6)
    gc.setColor(COLOR.Z)
    for i=1,#SVG_TITLE_LINE do
        gc.polygon('line',SVG_TITLE_LINE[i])
    end
    gc.translate(-10,-10)
end

TEXTURE.multiple=GC.DO{15,15,
    {'setLW',3},
    {'line',2,2,12,12},
    {'line',2,12,12,2},
}

TEXTURE.playerBorder=GC.DO{334,620,
    {'setLW',2},
    {'setCL',.97,.97,.97},
    {'dRect',16,1,302,618,5},
    {'fRect',17,612,300,2},
    {'dRect',318,10,15,604,3},
    {'dRect',1,10,15,604,3},
}

TEXTURE.gridLines=(function()
    local L={300,640,{'setLW',2}}
    for x=1,9 do table.insert(L,{'line',30*x,0,30*x,640})end
    for y=0,20 do table.insert(L,{'line',0,10+30*y,300,10+30*y})end
    return GC.DO(L)
end)()

TEXTURE.dial={
    frame=GC.DO{80,80,
        {'setLW',3},
        {'dCirc',40,40,38},
    },
    needle=GC.DO{32,3,
        {'setLW',3},
        {'fRect',0,0,32,3,2},
        {'setCL',1,.3,.3},
        {'fRect',0,0,12,3,2},
    }
}

gc.setCanvas()
return TEXTURE
