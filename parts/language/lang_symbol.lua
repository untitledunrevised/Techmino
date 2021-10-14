return{
    fallback='en',

    atkModeName={"?","(  )","!","←→"},
    royale_remain="$1 ~",
    cmb={nil,"!","!!","!!!","!!!!","!!!!!","!!!!!!","!!!!!!!","!!!!!!!!","!!!!!!!!!","!!!!!!!!!!","!!!!!!!!!!!","!!!!!!!!!!!!","!!!!!!!!!!!!!","!!!!!!!!!!!!!!","!!!!!!!!!!!!!!!","!!!!!!!!!!!!!!!!","!!!!!!!!!!!!!!!!!","!!!!!!!!!!!!!!!!!!","!!!!!!!!!!!!!!!!!!!","!!!!!!!!!!!!!!!!!!!!",},
    spin=" ~",
    clear={"1","2","3","4","5","6"},
    mini="v",b2b="^ ",b3b="^^ ",
    PC="#<>#",HPC="<>",
    replaying="[R]",
    tasUsing="[TAS]",

    stage="::$1::",
    great="!~",
    awesome="!!~",
    almost="...!",
    continue="~~",
    maxspeed="!!!",
    speedup="~!~",
    missionFailed="-X_X-",

    win=": )",
    lose=": (",

    finish="&",
    gamewin=">>",
    gameover="x",

    pause="=",
    pauseCount="==",
    finesse_ap="AP",
    finesse_fc="FC",

    page=":",

    cc_fixed="CC X!!!",
    cc_swap="CC X!!!",
    ai_prebag="X!!!",
    ai_mission="X!!!",
    needRestart="!!*#R#*!!",

    saveDone="~~~",
    saveError="x!:",
    saveError_duplicate="X←→X ?",
    loadError="x!:",
    exportSuccess="~Out~",
    importSuccess="~In~",
    dataCorrupted="XXXXX",
    pasteWrongPlace="_?X.",
    -- noFile="File not found",

    nowPlaying="~:",

    VKTchW="Tch↓",
    VKOrgW="Org↓",
    VKCurW="Cur↓",

    noScore="?_____?",
    modeLocked="XXXXX",
    unlockHint="\\B/!",
    highScore="__&:",
    newRecord="^!!!^",

    replayBroken=">x.",

    errorMsg="T&chm1n0 ^@n 1nt0 @ p^0bl&m @nd n&&d$ t0 ^&$t@^t.\nY0u c@n $&nd th& &^^0^ l0g t0 th& d&v$.",

    pauseStat={
        "~:",
        "=/''/[ ]:",
        "□:",
        "-/↓:",
        "→/↓→:",
        "←:",
        "□↓:",
        "~↓:",
        "^^/^^^/#<>#/<>:",
        "!#!X:",
    },
    stat={
        "@:",
        "##:",
        "~:",
        "=/''/[ ]:",
        "□/-/→.:",
        "←/-↓/↑:",
        "↓/↓→.:",
        "^%/↓^%:",
        "^/^^:",
        "#<>#/<>:",
        "!#!X/%:",
    },
    aboutTexts={
        "□!!~~~,□□□□X",
        "□!!==*/*/*/*/*~",
        "",
        "Powered by LÖVE",
        "Any suggestions or bug reports are appreciated!",
        "Make sure to only obtain the game from official sources;",
        "We can't make sure you're safe if you got it elsewhere.",
        "The author is not responsible for any modified binaries.",
        "While the game is free, donations are appreciated."
    },
    WidgetText={
        main={
            offline="!",
            qplay="(!)",
            online="!!!",
            custom="_?!",
            setting="_?_",
            stat="=___",
            dict="z",
            replays="=~~~",
        },
        mode={
            mod="?!?!?!(F1)",
            start="!!!",
        },
        mod={
            title="?!?!?!",
            reset="R",
            unranked="X!!!",
        },
        pause={
            setting="_?_ (S)",
            replay="## (P)",
            save="0101 (O)",
            resume="!! (esc)",
            restart="_→_ (R)",
            quit="X (Q)",
            tas="#&; (T)",
        },
        net_menu={
            league="TL",
            ffa="FFA",
            rooms="< >",
            logout="@_@x",
        },
        net_league={
            match="!",
        },
        net_rooms={
            password="***",
            refreshing="R...",
            noRoom="X_X",
            refresh="R",
            new="+< >",
            join="→< >",
        },
        net_newRoom={
            title="!@#$%^&*",
            roomName="xxx",
            password="******",
            description="...",

            life="<R>",
            pushSpeed="_↑__",
            garbageSpeed="#↑↑",
            visible="?=",
            freshLimit="@",

            fieldH="↑[]↓",
            bufferLimit="^↑",
            heightLimit="#↑",

            drop="↓",
            lock="↓_",
            wait="→=",
            fall="↓=",

            capacity="<0/?>",
            create=">",

            ospin="O→Any",
            fineKill="12 XX 21",
            b2bKill="_1 XX",
            easyFresh="↓_↓_↓_",
            deepDrop="\\↓↓/",
            bone="[]",

            eventSet="Rule Set",

            holdMode="? [ ]",
            nextCount="→",
            holdCount="[ ]",
            infHold="∞*[ ]",
            phyHold="P-[ ]",
        },
        net_game={
            ready="!_!",
            spectate="-_-",
            cancel="x",
        },
        setting_game={
            title="%~~%",

            graphic="←Video",
            sound="Sound→",

            ctrl="=?=",
            key="=?",
            touch="_?",
            reTime="3-2-1",
            RS="''?",
            layout="=-=-=",
            menuPos="←M→?",
            sysCursor="?→*",
            autoPause="A||",
            swap="=+=+=",
            autoSave="!!!>%",
            simpMode=".",
        },
        setting_video={
            title="{~~}",
            sound="←Sound",
            game="Game→",

            block="==↓==",
            smooth="~~↓~~",
            upEdge="[]`",
            bagLine="123|123",

            ghostType="__↓?__",
            ghost="__↓__",
            center="+",
            grid="#",
            lineNum="--No.",

            lockFX="↓_~",
            dropFX="↓~",
            moveFX="←→~",
            clearFX="↓↓↓~",
            splashFX="↑↑↑~",
            shakeFX="~|~|~",
            atkFX="→→~",

            frame="|=|%",
            FTlock="||=|→→|=||",

            text="ABC",
            score="+123",
            bufferWarn="^+",
            showSpike="→→+",
            nextPos="???←",
            highCam="↑__↑",
            warn="!↑↑↑!",

            clickFX="_.~",
            power="+.",
            clean="[]→→O",
            fullscreen="|←→|",
            bg="__?__",

            blockSatur="==#0x",
            fieldSatur="[]#0x",
        },
        setting_sound={
            title="(~~)",

            game="←Game",
            graphic="Video→",

            mainVol="#_#",
            bgm="#~#",
            sfx="#!#",
            stereo="←~→",
            spawn="#[]#",
            warn="!↑↑↑!",
            vib="=~=",

            autoMute="#x#",
            fine="12 X 21",
            voc="~~~",
            apply="!",
        },
        setting_control={
            title="[~~]",
            preview="?:",

            das="x---x x x",arr="x   x-x-x",
            dascut="x x ↓___x x",
            dropcut="↓_ !↓↓x",
            sddas="↓---↓ ↓ ↓",sdarr="↓   ↓-↓-↓",
            ihs="![ ]",
            irs="!''",
            ims="!←→",
            reset="R",
        },
        setting_key={
            a1="←",
            a2="→",
            a3="R→",
            a4="←R",
            a5="R↑↓",
            a6="↓↓",
            a7="↓",
            a8="□←",
            a9="F1",
            a10="F2",
            a11="|←",
            a12="→|",
            a13="↓_",
            a14="↓1",
            a15="↓4",
            a16="↓10",
            a17="←↓→↓",
            a18="→↓↓",
            a19="←↓→↓",
            a20="→↓←↓",
            restart="_→_",
        },
        setting_skin={
            skinSet="[x]?",
            title="%{~~}",
            skinR="R @%&",
            faceR="R ↑↓←→.",
        },
        setting_touch={
            default="$0",
            snap="_ _",
            size="←→",
            shape="@?",
        },
        setting_touchSwitch={
            b1="←:",    b2="→:",   b3="R→:",   b4="←R:",
            b5="R↑↓:",   b6="↓↓:",   b7="↓:",     b8="□←:",
            b9="F1:",    b10="F2:",  b11="←←:",  b12="→→:",
            b13="↓_:",   b14="↓1:",  b15="↓4:",   b16="↓10:",
            b17="←↓→↓:", b18="→↓↓:", b19="←↓→↓:",b20="→↓←↓:",

            norm="-",
            pro="+",
            hide="--?",
            icon="@?",
            sfx="#!#",
            vib="=~=",
            alpha="+?",

            track="~=?",
            dodge="←_→",
        },
        customGame={
            title="!@#$%^&*",
            defSeq="0-[123]",
            noMsn="-x-",

            drop="↓",
            lock="↓_",
            wait="→=",
            fall="↓=",

            bg="{~}",
            bgm="(~)",

            copy="Field+Seq+Misn→__",
            paste="__→Field+Seq+Misn",
            clear="Start-Clear",
            puzzle="Start-Puzzle",

            reset="Reset (Del)",
            advance="More (A)",
            mod="?!?!?! (F1)",
            field="Edit Field (F)",
            sequence="Edit Sequence (S)",
            mission="Edit Mission (M)",

            eventSet="Rule Set",

            holdMode="? [ ]",
            nextCount="→",
            holdCount="[ ]",
            infHold="∞*[ ]",
            phyHold="P-[ ]",

            fieldH="↑[]↓",
            visible="?=",
            freshLimit="@",
            opponent="^_^",
            life="<R>",
            pushSpeed="_↑__",
            garbageSpeed="#↑↑",

            bufferLimit="^↑",
            heightLimit="#↑",
            ospin="O→Any",
            fineKill="12 XX 21",
            b2bKill="_1 XX",
            easyFresh="↓_↓_↓_",
            deepDrop="\\↓↓/",
            bone="[]",
        },
        custom_field={
            title="!@#$%^&*",
            subTitle="!@#$%^&* [##]",

            any="_",
            smart="~",

            push="↑↑↑↑↑(K)",
            del="==X==(L)",

            demo="X ×",

            newPg="+[_](N)",
            delPg="x[_](M)",
            prevPg="←[_]",
            nextPg="[_]→",
        },
        custom_sequence={
            title="!@#$%^&*",
            subTitle="Sequence",
            sequence="$=",
        },
        custom_mission={
            title="!@#$%^&*",
            subTitle="(!)",

            mission="Force mission",
        },
        about={
            staff="Orz",
            his="_&_",
            qq="_@_",
        },
        dict={
            title="TetroDictionary",
            link="~~e>>",
        },
        stat={
            path="%$%",
            save="%0123%",
        },
        music={
            title="(~~~~)",
            arrow="→",
            now="~:",

            bgm="#~#",
            sound="=><=",
        },
        launchpad={
            title="SFX Room",
            bgm="#~#",
            sfx="#!#",
            voc="~~~",
            music="~~~",
            label="...",
        },
        login={
            title="Log in",
            register="Sign up",
            email="@",
            password="*",
            -- keepPW="I",
            login="Log in",
        },
        register={
            title="Sign up",
            login="Log in",
            username="#",
            email="@",
            password="*",
            password2="*",
            register="Sign up",
            registering="......",
        },
        account={
            title="@_@",
        },
        app_15p={
            reset="!@#$%",
            color="~~~",
            invis="???",
            slide="~_~",
            pathVis="--==>",
            revKB="Reverse",
        },
        app_schulteG={
            reset="!@#$%",
            rank="←?→",
            invis="???",
            disappear="=X=",
            tapFX="↓ !",
        },
        app_pong={
            reset="R",
        },
        app_AtoZ={
            level="_ _ _",
            keyboard="[##]",
            reset="R",
        },
        app_2048={
            reset="R",
            invis="???",
            tapControl="_↓",
            skip=">>",
        },
        app_ten={
            reset="R",
            next="→",
            invis="???",
            fast="~~→",
        },
        app_dtw={
            reset="R",
            color="~~~",
            mode="?",
            bgm="#~#",
            arcade="↓↓",
        },
    },
    getTip=function()
        local L="!@#$%^&*()-=_+[]{}\\|;:\'\",<.>/?"
        local s=""
        for _=1,math.random(16,26)do
            local p=math.random(#L)
            s=s..L:sub(p,p)
        end
        return s
    end,
}
