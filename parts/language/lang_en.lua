local C=COLOR
return{
    loadText={
        loadSFX="Loading sound effects",
        loadSample="Loading instrument samples",
        loadVoice="Loading voice packs",
        loadFont="Loading fonts",
        loadModeIcon="Loading mode icons",
        loadMode="Loading modes",
        loadOther="Loading other assets",
        finish="Press any key to start!",
    },
    sureQuit="Press again to quit",
    sureReset="Press again to reset",
    sureDelete="Press again to delete",
    newDay="A new day, a new beginning!",
    playedLong="You have been playing for a long time. Time to take a break!",
    playedTooMuch="You have been playing for far too long! Techmino is fun, but remember to take some rests!",
    settingWarn="Careful — you’re about to change some uncommon settings!",

    atkModeName={"Random","Badges","K.O.s","Attackers"},
    royale_remain="$1 Players Left",
    powerUp={[0]="+000%","+025%","+050%","+075%","+100%"},
    cmb={nil,"1 Combo","2 Combo","3 Combo","4 Combo","5 Combo","6 Combo","7 Combo","8 Combo","9 Combo","10 Combo!","11 Combo!","12 Combo!","13 Combo!","14 Combo!!","15 Combo!!","16 Combo!!","17 Combo!!!","18 Combo!!!","19 Combo!!!","MEGACMB"},
    spin="-spin",
    clear={"Single","Double","Triple","Techrash","Pentacrash","Hexacrash","Heptacrash","Octacrash","Nonacrash","Decacrash","Undecacrash","Dodecacrash","Tridecacrash","Tetradecacrash","Pentadecacrash","Hexadecacrash","Heptadecacrash","Octadecacrash","Nonadecacrash","Ultracrash","Impossicrash"},
    cleared="$1 lines",
    mini="Mini",b2b="B2B ",b3b="B2B2B ",
    PC="Perfect Clear",HPC="Hemi-Perfect Clear",
    replaying="[Replay]",
    tasUsing="[TAS]",

    stage="Stage $1 cleared!",
    great="Great!",
    awesome="Awesome!",
    almost="Almost There!",
    continue="Keep Going!",
    maxspeed="MAX SPEED!",
    speedup="Speed Up!",
    missionFailed="Wrong Clear",

    speedLV="Speed Level",
    piece="Piece",line="Lines",atk="Attack",eff="Efficiency",
    rpm="RPM",tsd="TSD",
    grade="Grade",techrash="Techrash",
    wave="Wave",nextWave="Next",
    combo="Combo",maxcmb="Max Combo",
    pc="Perfect Clear",ko="KOs",

    win="Win!",
    lose="Lose",

    finish="Finished",
    gamewin="You Won",
    gameover="Game Over",

    pause="Pause",
    pauseCount="Pauses",
    finesse_ap="All Perfect",
    finesse_fc="Full Combo",

    page="Page ",

    cc_fixed="CC is incompatible with fixed sequences.",
    cc_swap="CC is incompatible when the hold mode is set to Swap.",
    ai_prebag="AI is incompatible with custom sequences that contain non-tetrominoes.",
    ai_mission="AI is incompatible with custom missions.",
    switchSpawnSFX="Please turn on the block spawn SFX!",
    needRestart="Restart to apply all changes.",

    loadError_errorMode="'$1' loading failed: no load mode '$2'",
    loadError_read="'$1' loading failed: read failed",
    loadError_noFile="'$1' loading failed no file:",
    loadError_other="'$1' loading failed: $2",
    loadError_unknown="'$1' loading failed: unknown reason",

    saveError_duplicate="'$1' saving failed: duplicated filename",
    saveError_encode="'$1' saving failed: encode failed",
    saveError_other="'$1' saving failed: $2",
    saveError_unknown="'$1' saving failed: unknown reason",

    copyDone="Copied!",
    saveDone="Data saved",
    exportSuccess="Exported successfully",
    importSuccess="Imported successfully",
    dataCorrupted="Data corrupted",
    pasteWrongPlace="Paste at the wrong place?",
    noFile="File missing",

    nowPlaying="Now playing:",

    VKTchW="Touch weight",
    VKOrgW="Origin weight",
    VKCurW="Current position wt.",

    noScore="No scores",
    modeLocked="Locked",
    unlockHint="Achieve Rank B or above in the preceding modes to unlock",
    highScore="High Scores",
    newRecord="New Record!",

    replayBroken="Cannot load replay",

    dictNote="==Copied from TetroDictionary==",

    getNoticeFail="Failed to fetch announcements",
    oldVersion="Version $1 is now available",
    needUpdate="Newer version required!",
    versionNotMatch="Versions do not match!",
    notFinished="Coming soon!",

    jsonError="JSON error",

    noUsername="Please enter your username",
    wrongEmail="Invalid email address",
    noPassword="Please enter your password",
    diffPassword="Passwords don’t match",
    registerRequestSent="A sign up request has been sent.",
    registerOK="Sign up successful!",
    loginOK="You are now logged in!",
    accessOK="Access granted",

    wsConnecting="Websocket connecting…",
    wsFailed="WebSocket connection failed",
    wsClose="WebSocket closed:",
    netTimeout="Connection timed out",

    onlinePlayerCount="Online",
    createRoomSuccessed="Room created",
    started="Playing",
    joinRoom="has entered the room.",
    leaveRoom="has left the room.",
    ready="Ready",
    connStream="Connecting",
    waitStream="Waiting",
    spectating="Spectating",
    chatRemain="Online",
    chatStart="------Beginning of log------",
    chatHistory="------New messages below------",

    keySettingInstruction="Press to bind key\nescape: cancel\nbackspace: delete",
    customBGhelp="Drop image file here to apply custom background",
    customBGloadFailed="Unsupport image format for custom background",

    errorMsg="Techmino ran into a problem and needs to restart.\nYou can send the error log to the developers.",

    modInstruction="Choose your modifiers!\nMods allow you to change the game,\nbut they may also crash the game.\nScores will not be saved when using mods.",
    modInfo={
        next="NEXT\nOverrides the number of Next pieces displayed.",
        hold="HOLD\nOverrides the number of Hold pieces displayed.",
        hideNext="Hidden NEXT\nHides the specified amount of pieces on the Next queue.",
        infHold="InfiniHold\nAllows you to hold pieces infinitely.",
        hideBlock="Hide Current Piece:\nMakes the piece you are controlling invisible.",
        hideGhost="No Ghost\nMakes the Ghost Piece invisible.",
        hidden="Hide Locked Pieces.\nMakes locked pieces fade out in  specified time.",
        hideBoard="Hide Board\nPartially or fully hides the field.",
        flipBoard="Flip Board\nFlips or rotates the field.",
        dropDelay="Gravity\nOverrides the falling speed in frames per block.",
        lockDelay="Lock Delay\nOverrides the lock delay (in frames).",
        waitDelay="Spawn Delay\nOverrides the spawn delay (in frames).",
        fallDelay="Line Clear Delay\nOverrides the line clear delay in frames.",
        life="Life\nChanges the initial number of extra lives.",
        forceB2B="B2B Only\nEnds the game when the B2B gauge drops below the initial line.",
        forceFinesse="Finesse Only\nEnds the game on finesse fault",
        tele="Teleport\nForces 0 DAS and 0 ARR.",
        noRotation="No Rotation\nDisables piece rotations.",
        noMove="No Movement\nDisables left and right movements.",
        customSeq="Randomizer\nOverrides the randomizer of the block sequence.",
        pushSpeed="Garbage Speed\nOverride the rising speed of garbage lines (blocks/frame).",
        boneBlock="[ ]\nPlay with [ ] blocks.",
    },
    pauseStat={
        "Time:",
        "Key/Rot./Hold:",
        "Pieces:",
        "Row/Dig:",
        "Attack/DigAtk:",
        "Received:",
        "Clears:",
        "Spins:",
        "B2B/B3B/PC/HPC:",
        "Finesse:",
    },
    radar={"DEF","OFF","ATK","SEND","SPD","DIG"},
    radarData={"D’PM","ADPM","APM","SPM","L’PM","DPM"},
    stat={
        "Times Launched:",
        "Play Count:",
        "Play Time:",
        "Key/Rot./Hold:",
        "Block/Row/Atk.:",
        "Recv./Res./Asc.:",
        "Dig/Dig Atk.:",
        "Eff./Dig Eff.:",
        "B2B/B3B:",
        "PC/HPC:",
        "Fns. Errs/Rate:",
    },
    aboutTexts={
        "This is just an *ordinary* block stacker. Really, that’s it.",
        "Inspired by C2/IO/JS/WWC/KOS etc.",
        "",
        "Powered by LÖVE",
        "Any suggestions or bug reports are appreciated!",
        "Make sure to get the game only from official sources,",
        "as we can’t make sure you’re safe if you got it elsewhere.",
        "The author is not responsible for any modifications.",
        FNNS and"/"or"While the game is free, donations are appreciated.",
        FNNS and"/"or"Check Zictionary for more",
    },
    staff={
        "ORIGINALLY BY MrZ",
        "E-mail: 1046101471@qq.com",
        "",
        "Programmed, Developed, And Designed By",
        "MrZ",
        "",
        "Music Made Using",
        "Beepbox",
        "FL Studio",
        "FL Mobile",
        "Logic Pro X",
        "",
        "[POWERED BY LÖVE]",
        "",
        "Programming",
        "MrZ",
        "ParticleG",
        "Gompyn",
        "Trebor",
        "(scdhh)",
        "(FinnTenzor)",
        "(NOT_A_ROBOT)",
        "(user670)",
        "",
        "GitHub CI, Packaging & Backend",
        "ParticleG",
        "Trebor",
        "LawrenceLiu",
        "Gompyn",
        "flaribbit",
        "scdhh",
        "",
        "Visual Designs, UI & UX",
        "MrZ",
        "Gnyar",
        "C₂₉H₂₅N₃O₅",
        "ScF",
        "(旋律星萤)",
        "(T0722)",
        "",
        "Musical Designs",
        "MrZ",
        "柒栎流星",
        "ERM",
        "Trebor",
        "C₂₉H₂₅N₃O₅",
        "(T0722)",
        "(Aether)",
        "(Hailey)",
        "",
        "Sound Effects & Voice Packs",
        "Miya",
        "Xiaoya",
        "Mono",
        "MrZ",
        "Trebor",
        "",
        "Translations & Localizations",
        "User670",
        "MattMayuga",
        "Mizu",
        "Mr.Faq",
        "ScF",
        "C₂₉H₂₅N₃O₅",
        "NOT_A_ROBOT",
        "sakurw",
        "Airun",
        "幽灵3383",
        "",
        "Performances",
        "Electric283",
        "Hebomai",
        "",
        "Special Thanks to",
        "Flyz",
        "Big_True",
        "NOT_A_ROBOT",
        "思竣",
        "yuhao7370",
        "Farter",
        "Teatube",
        "蕴空之灵",
        "T9972",
        "No-Usernam8",
        "andrew4043",
        "smdbs-smdbs",
        "paoho",
        "Allustrate",
        "Haoran SUN",
        "Tianling Lyu",
        "huaji2369",
        "Lexitik",
        "Tourahi Anime",
        "[All other test staff]",
        "…And You!",
    },
    used=[[
    Tools used:
        BeepBox
        GoldWave
        GFIE
        FL Mobile
    Libs used:
        Cold_Clear [MinusKelvin]
        json.lua [rxi]
        profile.lua [itraykov]
        simple-love-lights [dylhunn]
    ]],
    support="Support the author",
    WidgetText={
        main={
            offline="Single Player",
            qplay="Last Played",
            online="Multiplayer",
            custom="Custom Game",
            setting="Settings",
            stat="Statistics",
            dict="Zictionary",
            replays="Replays",
        },
        main_simple={
            sprint="Sprint",
            marathon="Marathon",
        },
        mode={
            mod="Mods (F1)",
            start="Start",
        },
        mod={
            title="Mods",
            reset="Reset (tab)",
            unranked="Unranked",
        },
        pause={
            setting="Settings (S)",
            replay="Replay (P)",
            save="Save (O)",
            resume="Resume (esc)",
            restart="Retry (R)",
            quit="Quit (Q)",
            tas="TAS (T)",
        },
        net_menu={
            league="Tech League",
            ffa="FFA",
            rooms="Rooms",
            logout="Log out",
        },
        net_league={
            match="Find Match",
        },
        net_rooms={
            password="Password",
            refreshing="Refreshing rooms",
            noRoom="No rooms available",
            refresh="Refresh",
            new="New Room",
            join="Join",
        },
        net_newRoom={
            title="Room Config",
            roomName="Room name (Default: “[username]'s room”)",
            password="Password",
            description="Room Description",

            life="Lives",
            pushSpeed="Push Speed",
            garbageSpeed="Garbage Line Speed",
            visible="Visibility",
            freshLimit="Lock Reset Limit",

            fieldH="Field Height",
            bufferLimit="Buffer Limit",
            heightLimit="Height Limit",

            drop="Drop Delay",
            lock="Lock Delay",
            wait="Entry Delay",
            fall="Line Delay",
            hang="Death Delay",
            hurry="ARE Interruption",

            capacity="Capacity",
            create="Create",

            ospin="O-spin",
            fineKill="100% Finesse",
            b2bKill="No B2B Breaks",
            lockout="Fail on Lock Out",
            easyFresh="Normal Lock Reset",
            deepDrop="Deep Drop",
            bone="Bone Blocks",

            eventSet="Rule Set",

            holdMode="Hold Mode",
            nextCount="Next",
            holdCount="Hold",
            infHold="Infinite Hold",
            phyHold="In-place Hold",
        },
        net_game={
            ready="Ready",
            spectate="Spectate",
            cancel="Cancel ready",
        },
        setting_game={
            title="Game Settings",
            graphic="←Video",
            sound="Audio→",
            style="Style",

            ctrl="Control Settings",
            key="Key Mappings",
            touch="Touch Settings",
            showVK="Show Virtual Keys",
            reTime="Start Delay",
            RS="Rotation System",
            menuPos="Menu Button Pos.",
            sysCursor="Use System Cursor",
            autoPause="Pause When Unfocused",
            autoSave="Auto-save New Records",
            autoLogin="Auto-login on Start",
            simpMode="Simplistic Mode",
        },
        setting_video={
            title="Video Settings",
            sound="←Audio",
            game="Game→",

            block="Draw Blocks",
            smooth="Smooth Falling",
            upEdge="3D Block",
            bagLine="Bag Separators",

            ghostType="Ghost Type",
            ghost="Ghosts",
            center="Rotation Centers",
            grid="Grid",
            lineNum="line No.",

            lockFX="Lock FX",
            dropFX="Drop FX",
            moveFX="Move FX",
            clearFX="Clear FX",
            splashFX="Splash FX",
            shakeFX="Field Sway",
            atkFX="Atk FX",

            frame="Render Frame Rate (%)",

            text="Line Clear Pop-Ups",
            score="Score Pop-Ups",
            bufferWarn="Buffer Alerts",
            showSpike="Spike Counter",
            nextPos="Spawn Preview",
            highCam="Screen Scrolling",
            warn="Danger Alerts",

            clickFX="Click FX",
            power="Battery Info",
            clean="Quick Draw",
            fullscreen="Fullscreen",

            bg_on="Normal B.G.",
            bg_off="No B.G.",
            bg_custom="Use Custom B.G.",

            blockSatur="Block Saturation",
            fieldSatur="Field Saturation",
        },
        setting_sound={
            title="Audio Settings",

            game="←Game",
            graphic="Video→",

            mainVol="Main Volume",
            bgm="BGM",
            sfx="SFX",
            stereo="Stereo",
            spawn="Spawn SFX",
            warn="Warning SFX",
            vib="Vibrations",
            voc="Voices",

            autoMute="Mute When Unfocused",
            fine="Finesse Error SFX",
            sfxPack="SFX Pack",
            vocPack="Voice Pack",
            apply="Apply",
        },
        setting_control={
            title="Control Settings",
            preview="Preview",

            das="DAS",arr="ARR",
            dascut="DAS cut",
            dropcut="Auto-lock cut",
            sddas="Soft Drop DAS",sdarr="Soft Drop ARR",
            ihs="Initial Hold",
            irs="Initial Rotation",
            ims="Initial Movement",
            reset="Reset",
        },
        setting_key={
            a1="Move Left",
            a2="Move Right",
            a3="Rotate Right",
            a4="Rotate Left",
            a5="Rotate 180°",
            a6="Hard Drop",
            a7="Soft Drop",
            a8="Hold",
            a9="Function 1",
            a10="Function 2",
            a11="Instant Left",
            a12="Instant Right",
            a13="Sonic Drop",
            a14="Down 1",
            a15="Down 4",
            a16="Down 10",
            a17="Left Drop",
            a18="Right Drop",
            a19="Left Zangi",
            a20="Right Zangi",
            restart="Retry",
        },
        setting_skin={
            skinSet="Block Skin",
            title="Style Settings",
            skinR="Reset Colors",
            faceR="Reset Dir.",
        },
        setting_touch={
            default="Default",
            snap="Snap to Grid",
            size="Size",
            shape="Shape",
        },
        setting_touchSwitch={
            b1= "Move Left:",    b2="Move Right:", b3="Rotate Right:",  b4="Rotate Left:",
            b5= "Rotate 180°:",  b6="Hard Drop:",  b7="Soft Drop:",      b8="Hold:",
            b9= "Function 1:",    b10="Function 2:", b11="Instant Left:", b12="Instant Right:",
            b13="Sonic Drop:",   b14="Down 1:",    b15="Down 4:",       b16="Down 10:",
            b17="Left Drop:",    b18="Right Drop:",b19="Left Zangi:",   b20="Right Zangi:",

            norm="Normal",
            pro="Advanced",
            icon="Icon",
            sfx="SFX",
            vib="VIB",
            alpha="Alpha",

            track="Auto Track",
            dodge="Auto Dodge",
        },
        customGame={
            title="Custom Game",
            defSeq="Default Seq.",
            noMsn="No Missions",

            drop="Drop Delay",
            lock="Lock Delay",
            wait="Entry Delay",
            fall="Line Delay",
            hang="Death Delay",
            hurry="ARE Interruption",

            bg="Background",
            bgm="Music",

            copy="Copy Field+Seq+Mssn",
            paste="Paste Field+Seq+Mssn",
            play_clear="Start-Clear",
            play_puzzle="Start-Puzzle",

            reset="Reset (del)",
            advance="More (A)",
            mod="Mods (F1)",
            field="Edit Field (F)",
            sequence="Edit Sequences (S)",
            mission="Edit Missions (M)",

            eventSet="Rule Set",

            holdMode="Hold Mode",
            nextCount="Next",
            holdCount="Hold",
            infHold="Infinite Hold",
            phyHold="In-place Hold",

            fieldH="Field Height",
            visible="Visibility",
            freshLimit="Lock Reset Limit",
            opponent="Opponent",
            life="Lives",
            pushSpeed="Push Speed",
            garbageSpeed="Garbage Speed",

            bufferLimit="Buffer Limit",
            heightLimit="Height Limit",
            ospin="O-Spin",
            fineKill="100% Finesse",
            b2bKill="No B2B Breaks",
            lockout="Fail on Lock Out",
            easyFresh="Normal Lock Reset",
            deepDrop="Deep Drop",
            bone="Bone Blocks",
        },
        custom_field={
            title="Custom Game",
            subTitle="Field",

            any="Erase",
            smart="Smart",

            push="Add Line (K)",
            del="Del Line (L)",

            demo="Don’t Show “×”",

            newPg="New Page (N)",
            delPg="Del Page (M)",
            prevPg="Prev Page",
            nextPg="Next Page",
        },
        custom_sequence={
            title="Custom Game",
            subTitle="Sequence",
            sequence="Sequence",
        },
        custom_mission={
            title="Custom Game",
            subTitle="Mission",

            _1="1",_2="2",_3="3",_4="4",
            any1="any1",any2="any2",any3="any3",any4="any4",
            PC="PC",
            Z1="Z1",S1="S1",J1="J1",L1="L1",T1="T1",O1="O1",I1="I1",
            Z2="Z2",S2="S2",J2="J2",L2="L2",T2="T2",O2="O2",I2="I2",
            Z3="Z3",S3="S3",J3="J3",L3="L3",T3="T3",O3="O3",I3="I3",
            O4="O4",I4="I4",
            mission="Force Mission",
        },
        about={
            staff="Staff",
            his="History",
            legals="Legals",
        },
        dict={
            title="TetroDictionary",
        },
        stat={
            path="Open Data Folder",
            save="Data Management",
        },
        music={
            title="Music Room",
            arrow="→",
            now="Now Playing:",

            bgm="BGM",
            sound="SFXs",
        },
        launchpad={
            title="SFX Room",
            bgm="BGM",
            sfx="SFX",
            voc="VOC",
            music="BGMs",
            label="label",
        },
        login={
            title="Sign In",
            register="Sign Up",
            email="Email Address",
            password="Password",
            showEmail="Show Email",
            keepPW="Remember me",
            login="Log In",
        },
        register={
            title="Sign Up",
            login="Sign In",
            username="Username",
            email="Email Address",
            password="Password",
            password2="Re-enter Password",
            register="Sign Up",
            registering="Waiting for response…",
        },
        account={
            title="Account",
        },
        app_15p={
            color="Color",
            invis="Invis",
            slide="Slide",
            pathVis="Show Path",
            revKB="Reverse",
        },
        app_schulteG={
            rank="Size",
            invis="Invis",
            disappear="Hide",
            tapFX="Tap FX",
        },
        app_AtoZ={
            level="Level",
            keyboard="Keyboard",
        },
        app_2048={
            invis="Invis",
            tapControl="Tap controls",

            skip="Skip Round",
        },
        app_ten={
            next="Next",
            invis="Invis",
            fast="Fast",
        },
        app_dtw={
            color="Color",
            mode="Mode",
            bgm="BGM",
            arcade="Arcade",
        },
        app_link={
            invis="Invis",
        },
        savedata={
            export="Export to clipboard",
            import="Import from clipboard",
            unlock="Progress",
            data="Stats",
            setting="Settings",
            vk="Virtual Key Layout",

            couldSave="Cloud Save (CAUTION: TESTING)",
            notLogin="[Login to access cloud save]",
            upload="Upload to Cloud",
            download="Download from Cloud",
        },
    },
    modes={
        ['sprint_10l']=     {"Sprint",            "10L",            "Clear 10 lines!"},
        ['sprint_20l']=     {"Sprint",            "20L",            "Clear 20 lines!"},
        ['sprint_40l']=     {"Sprint",            "40L",            "Clear 40 lines!"},
        ['sprint_100l']=    {"Sprint",            "100L",           "Clear 100 lines!"},
        ['sprint_400l']=    {"Sprint",            "400L",           "Clear 400 lines!"},
        ['sprint_1000l']=   {"Sprint",            "1,000L",          "Clear 1,000 lines!"},
        ['sprintPenta']=    {"Sprint",            "PENTOMINO",      "40L with 18 pentominoes"},
        ['sprintMPH']=      {"Sprint",            "MPH",            "Memoryless\nPreviewless\nHoldless"},
        ['sprint123']=      {"Sprint",            "M123",           "40L with only monominoes, dominoes, and triminoes"},
        ['secret_grade']=   {"Secret Grade",      "",               "Build a zig-zag hole formation, following to the guide!"},
        ['dig_10l']=        {"Dig",               "10L",            "Dig 10 garbage lines as fast as you can!"},
        ['dig_40l']=        {"Dig",               "40L",            "Dig 40 garbage lines as fast as you can!"},
        ['dig_100l']=       {"Dig",               "100L",           "Dig 100 garbage lines as fast as you can!"},
        ['dig_400l']=       {"Dig",               "400L",           "Dig 400 garbage lines as fast as you can!"},
        ['dig_eff_10l']=    {"Dig",               "EFFICIENCY 10L", "Dig 10 garbage lines with the least pieces!"},
        ['dig_eff_40l']=    {"Dig",               "EFFICIENCY 40L", "Dig 40 garbage lines with the least pieces!"},
        ['dig_eff_100l']=   {"Dig",               "EFFICIENCY 100L","Dig 100 garbage lines with the least pieces!"},
        ['dig_eff_400l']=   {"Dig",               "EFFICIENCY 400L","Dig 400 garbage lines with the least pieces!"},
        ['drought_n']=      {"Drought",           "100L",           "No I-pieces available"},
        ['drought_l']=      {"Drought+",          "100L",           "W T F"},
        ['marathon_n']=     {"Marathon",          "NORMAL",         "200-line marathon with increasing speed"},
        ['marathon_h']=     {"Marathon",          "HARD",           "200-line high-speed marathon"},
        ['solo_e']=         {"Battle",            "EASY",           "Defeat the AI!"},
        ['solo_n']=         {"Battle",            "NORMAL",         "Defeat the AI!"},
        ['solo_h']=         {"Battle",            "HARD",           "Defeat the AI!"},
        ['solo_l']=         {"Battle",            "LUNATIC",        "Defeat the AI!"},
        ['solo_u']=         {"Battle",            "ULTIMATE",       "Defeat the AI!"},
        ['techmino49_e']=   {"Tech 49",           "EASY",           "49-player battle.\nThe last one standing wins"},
        ['techmino49_h']=   {"Tech 49",           "HARD",           "49-player battle.\nThe last one standing wins"},
        ['techmino49_u']=   {"Tech 49",           "ULTIMATE",       "49-player battle.\nThe last one standing wins"},
        ['techmino99_e']=   {"Tech 99",           "EASY",           "99-player battle.\nThe last one standing wins"},
        ['techmino99_h']=   {"Tech 99",           "HARD",           "99-player battle.\nThe last one standing wins"},
        ['techmino99_u']=   {"Tech 99",           "ULTIMATE",       "99-player battle.\nThe last one standing wins"},
        ['round_e']=        {"Turn-Based",        "EASY",           "Take turns to play against the AI!"},
        ['round_n']=        {"Turn-Based",        "NORMAL",         "Take turns to play against the AI!"},
        ['round_h']=        {"Turn-Based",        "HARD",           "Take turns to play against the AI!"},
        ['round_l']=        {"Turn-Based",        "LUNATIC",        "Take turns to play against the AI!"},
        ['round_u']=        {"Turn-Based",        "ULTIMATE",       "Take turns to play against the AI!"},
        ['big_n']=          {"Big",               "NORMAL",         "Play in a smaller field!"},
        ['big_h']=          {"Big",               "HARD",           "Play in a smaller field!"},
        ['master_n']=       {"Master",            "NORMAL",         "For 20G beginners"},
        ['master_h']=       {"Master",            "HARD",           "For 20G pros"},
        ['master_m']=       {"Master",            "M21",            "For 20G Masters"},
        ['master_final']=   {"Master",            "FINAL",          "20G and beyond"},
        ['master_ph']=      {"Master",            "PHANTASM",        "???"},
        ['master_g']=       {"Master",            "GRADED",         "Get the highest grade you can!"},
        ['master_ex']=      {"GrandMaster",       "EXTRA",          "An eternity shorter than an instant"},
        ['master_instinct']={"Master",            "INSTINCT",       "What if the active piece turned invisible?"},
        ['strategy_e']=     {"Strategy",          "EASY",           "Fast 20G decision"},
        ['strategy_h']=     {"Strategy",          "HARD",           "Fast 20G decision"},
        ['strategy_u']=     {"Strategy",          "ULTIMATE",       "Fast 20G decision"},
        ['strategy_e_plus']={"Strategy",          "EASY+",          "Holdless strategy!"},
        ['strategy_h_plus']={"Strategy",          "HARD+",          "Holdless strategy!"},
        ['strategy_u_plus']={"Strategy",          "ULTIMATE+",      "Holdless strategy!"},
        ['blind_e']=        {"Invisible",         "HALF",           "For novices"},
        ['blind_n']=        {"Invisible",         "ALL",            "For intermediates"},
        ['blind_h']=        {"Invisible",         "SUDDEN",         "For the experienced"},
        ['blind_l']=        {"Invisible",         "SUDDEN+",        "For professionals"},
        ['blind_u']=        {"Invisible",         "?",              "Are you ready?"},
        ['blind_wtf']=      {"Invisible",         "WTF",            "You’re not ready"},
        ['classic_e']=      {"Classic",           "EASY",           "A low-speed recreation from the 80s"},
        ['classic_h']=      {"Classic",           "HARD",           "A medium-speed recreation from the 80s"},
        ['classic_l']=      {"Classic",           "LUNATIC",        "A high-speed recreation from the 80s"},
        ['classic_u']=      {"Classic",           "ULTIMATE",       "A very high-speed recreation from the 80s"},
        ['survivor_e']=     {"Survival",          "EASY",           "How long can you survive?"},
        ['survivor_n']=     {"Survival",          "NORMAL",         "How long can you survive?"},
        ['survivor_h']=     {"Survival",          "HARD",           "How long can you survive?"},
        ['survivor_l']=     {"Survival",          "LUNATIC",        "How long can you survive?"},
        ['survivor_u']=     {"Survival",          "ULTIMATE",       "How long can you survive?"},
        ['attacker_h']=     {"Attacker",          "HARD",           "Practice your attacking skills!"},
        ['attacker_u']=     {"Attacker",          "ULTIMATE",       "Practice your attacking skills!"},
        ['defender_n']=     {"Defender",          "NORMAL",         "Practice your defensing skills!"},
        ['defender_l']=     {"Defender",          "LUNATIC",        "Practice your defensing skills!"},
        ['dig_h']=          {"Driller",           "HARD",           "Digging practice!"},
        ['dig_u']=          {"Driller",           "ULTIMATE",       "Digging practice!"},
        ['clearRush']=      {"Clear Rush",        "NORMAL",         "All-spin tutorial!\n[Under construction]"},
        ['c4wtrain_n']=     {"C4W Training",      "NORMAL",         "Infinite combos"},
        ['c4wtrain_l']=     {"C4W Training",      "LUNATIC",        "Infinite combos"},
        ['pctrain_n']=      {"PC Training",       "NORMAL",         "Perfect Clear practice"},
        ['pctrain_l']=      {"PC Training",       "LUNATIC",        "A harder Perfect Clear practice"},
        ['pc_n']=           {"PC Challenge",      "NORMAL",         "Get PCs within 100 lines!"},
        ['pc_h']=           {"PC Challenge",      "HARD",           "Get PCs within 100 lines!"},
        ['pc_l']=           {"PC Challenge",      "LUNATIC",        "Get PCs within 100 lines!"},
        ['pc_inf']=         {"Inf. PC Challenge", "",               "Get PCs as much as you can"},
        ['tech_n']=         {"Tech",              "NORMAL",         "Try to keep the\nBack-to-Back chain!"},
        ['tech_n_plus']=    {"Tech",              "NORMAL+",        "Spins & PCs only"},
        ['tech_h']=         {"Tech",              "HARD",           "Try to keep the\nBack-to-Back chain!"},
        ['tech_h_plus']=    {"Tech",              "HARD+",          "Spins & PCs only"},
        ['tech_l']=         {"Tech",              "LUNATIC",        "Try to keep the\nBack-to-Back chain!"},
        ['tech_l_plus']=    {"Tech",              "LUNATIC+",       "Spins & PCs only"},
        ['tech_finesse']=   {"Tech",              "FINESSE",        "No finesse faults!"},
        ['tech_finesse_f']= {"Tech",              "FINESSE+",       "No normal clears and finesse faults!"},
        ['tsd_e']=          {"TSD Challenge",     "EASY",           "T-Spin Doubles only!"},
        ['tsd_h']=          {"TSD Challenge",     "HARD",           "T-Spin Doubles only!"},
        ['tsd_u']=          {"TSD Challenge",     "ULTIMATE",       "T-Spin Doubles only!"},
        ['backfire_n']=     {"Backfire",          "NORMAL",         "Hold back the backfiring garbage lines"},
        ['backfire_h']=     {"Backfire",          "HARD",           "Hold back the backfiring garbage lines"},
        ['backfire_l']=     {"Backfire",          "LUNATIC",        "Hold back the backfiring garbage lines"},
        ['backfire_u']=     {"Backfire",          "ULTIMATE",       "Hold back the backfiring garbage lines"},
        ['sprintAtk']=      {"Sprint",            "100 Attack",     "Send 100 lines!"},
        ['sprintEff']=      {"Sprint",            "Efficiency",     "Send more attack in 40lines!"},
        ['zen']=            {'Zen',               "200",            "A 200-line run without a time limit"},
        ['ultra']=          {'Ultra',             "EXTRA",          "A 2-minute score attack"},
        ['infinite']=       {"Infinite",           "",              "Just a sandbox"},
        ['infinite_dig']=   {"Infinite: Dig",      "",              "Dig-diggin’-dug"},
        ['marathon_inf']=   {"Marathon",           "INFINITE",      "Infinite marathon."},

        ['custom_clear']=   {"Custom",            "NORMAL"},
        ['custom_puzzle']=  {"Custom",            "PUZZLE"},
    },
    getTip={refuseCopy=true,
        ":pog:",
        "(RUR’U’)R’FR2U’R’U’(RUR’F’)",
        "“Techmino.app” cannot be opened because the developer cannot be verified.",
        "“Techmino.app” will damage your computer. You should move it to the Bin.",
        "“TechminOS”",
        "\\jezevec/\\jezevec/\\jezevec/",
        "\\osk/\\osk/\\osk/",
        "↑↑↓↓←→←→BA",
        "$include<studio.h>",
        "0next 0hold.",
        "1next 0hold",
        "1next 1hold!",
        "1next 6hold!",
        "20G actually is a brand new game rule!",
        "40-line Sprint WR: 14.915s by Reset_",
        "6next 1hold!",
        "6next 6hold?!",
        "Achievement system coming soon!",
        "ALL SPIN!",
        "Am G F G",
        "B2B2B???",
        "B2B2B2B does not exist.",
        "Back-to-Back Techrash, 10 Combo, PC!",
        "Be sure to give it your best shot again today!",
        "Bridge clear coming soon!",
        "Can you master this modern yet familiar stacker?",
        "Certainly within this heart lies my M@STERPIECE.",
        "Changelogs in English can be found on Discord.",
        "Color clear coming soon!",
        "Decreasing DAS and ARR makes your game faster but harder to control.",
        "Did I just see a Back-to-Back-to-Back?",
        "Does B2B2B2B exist?",
        "Don’t let a small glitch ruin your entire day!",
        "Don’t look directly at the bugs!",
        "Enjoy the Techmino rotation system!",
        "Excellent, but let’s go better next time…",
        "Find out what’s in the settings!",
        "Found any bugs? Open up an issue in our GitHub page!",
        "Free-to-play block stacking game with a Battle Royale mode!",
        "git commit",
        "git push -f",
        "Got any suggestions? Post them in our Discord!",
        "Have you noticed what “rotating” does do to a block?",
        "Headphones recommended for a better experience.",
        "Hello world!",
        "I3 and L3 are the only two unique triminoes.",
        "if a==true",
        "Increase your frame rate for a better experience.",
        "Initial [insert action] system can save you.",
        "Is B2B2B2B possible?",
        "It is loading! Not just a cutscene!",
        "It’s possible to finish 40L without left/right buttons.",
        "It’s possible to finish 40L without rotation buttons.",
        "Join our Discord!",
        "l-=-1",
        "Let the bass kick!",
        "Low frame rates reduce your gaming experience.",
        "LrL RlR LLr RRl RRR LLL FFF RfR RRf rFF",
        "Lua No.1",
        "Mix clear coming soon!",
        "Most of the button icons are realized by using self-drawn glyphs in the Unicode Private Use Area.",
        "Music too distracting? You can turn it off.",
        "No easter eggs in this menu if you have the simplistic style turned on!",
        "O-Spin Triple!",
        "OHHHHHHHHHHHHHH",
        "Play single-handedly!",
        "Playing good takes some time!",
        "Powered by LÖVE",
        "Powered by Un..LÖVE",
        "pps-0.01",
        "Server down randomly",
        "Some requirements to achieve rank X are intentionally set to be difficult for even the best players.",
        "Soon, you’ll be able to play against friends and foes all over the world.",
        "Split clear coming soon!",
        "sudo rm -rf /*",
        "Techmino is a portmanteau of “technique” and “tetromino”.",
        "Techmino is so fun!",
        "Techmino on Nspire-CX: yes it exists, no it’s not the same game.",
        "TetroDictionary is now available in English.",
        "Most of the music tracks in this game are made using Beepbox.",
        "The names that appeared in the background of the Staff page is a list of our sponsors.",
        "The stacker future is yours in Techmino!",
        "There are several hidden modes in the game that cannot be entered using the map.",
        "There is a total of 18 different pentominoes.",
        "There is a total of 7 different tetrominoes.",
        "Try online multiplayer! Expect things to break though.",
        "Try using multiple Hold Queues!",
        "Try using two rotation buttons. Using all three of them is better.",
        "Warning: Programmer Art",
        "What about 20 PCs?",
        "What about 23 PCs in 100 lines?",
        "What about 26 TSDs?",
        "What is this cheap UI & music smh",
        "while(false)",
        "You are a Grand Master!",
        "You are welcome to help us to make BGMs and SFXs!",
        "You can connect a keyboard to your phone or tablet (not functional on iOS though).",
        "You can customize the key mappings in settings!",
        "You can open the save directory from the Stats page.",
        "You can perform a spin with all of the minoes in this game.",
        "You can set the spawning orientation for each piece.",
        "ZS JL T O I",
        {C.C,"Also try 15puzzle!"},
        {C.C,"Also try Ballance!"},
        {C.C,"Also try Minecraft!"},
        {C.C,"Also try Minesweeper!"},
        {C.C,"Also try Orzmic!"},
        {C.C,"Also try osu!"},
        {C.C,"Also try Phigros!"},
        {C.C,"Also try Puyo Puyo!"},
        {C.C,"Also try Rubik’s cube!"},
        {C.C,"Also try Terraria!"},
        {C.C,"Also try Touhou Project!"},
        {C.C,"Also try VVVVVV!"},
        {C.C,"Also try World of goo!"},
        {C.C,"Also try Zuma!"},
        {C.H,"REGRET!!"},
        {C.lP,"Secret number: 626"},
        {C.lR,"Z ",C.lG,"S ",C.lS,"J ",C.lO,"L ",C.lP,"T ",C.lY,"O ",C.lC,"I"},
        {C.lY,"COOL!!"},
        {C.N,"Lua",C.Z," No.1"},
        {C.P,"T-spin!"},
        {C.R,"“DMCA abusing”"},
        {C.R,"“Intellectual property law”"},
        {C.R,"DD",C.Z," Cannon=",C.P,"TS",C.R,"D",C.Z,"+",C.P,"TS",C.R,"D",C.Z," Cannon"},
        {C.R,"DT",C.Z," Cannon=",C.P,"TS",C.R,"D",C.Z,"+",C.P,"TS",C.R,"T",C.Z," Cannon"},
        {C.R,"LrL ",C.G,"RlR ",C.B,"LLr ",C.O,"RRl ",C.P,"RRR ",C.P,"LLL ",C.C,"FFF ",C.Y,"RfR ",C.Y,"RRf ",C.Y,"rFF"},
        {C.Y,"O-Spin Triple!"},
        {C.Z,"What? ",C.lC,"Xspin?"},
    }
}
