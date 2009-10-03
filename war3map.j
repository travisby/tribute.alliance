// 
//
// DBZ-Tribute Alliance
//
// Copyright (C) 2009 xXxXshadowXxXx	<tobeappended>
// Copyright (C) 2009 Matrixboy 	<travisby@gmail.com>
// Copyright (C) 2009 Wivot		<tobeappended>
// Copyright (C) 2009 pwned-orchunter	<tobeappended>
// Copyright (C) 2009 The_Forsaken	<tobeappended>
// Copyright (C) 2009 Orgrim		<tobeappended>
// 
// This file is part of DBZ-Tribute Alliance.
//
//    DBZ-Tribute Alliance is free software: you can redistribute it and/or modify
//    it under the terms of the GNU General Public License as published by
//    the Free Software Foundation, either version 3 of the License, or
//    (at your option) any later version.
//
//    DBZ-Tribute Alliance is distributed in the hope that it will be useful,
//    but WITHOUT ANY WARRANTY; without even the implied warranty of
//    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//    GNU General Public License for more details.
//
//    You should have received a copy of the GNU General Public License
//    along with DBZ-Tribute Alliance.  If not, see <http://www.gnu.org/licenses/>.
//
//


globals
//globals from TimerUtils:
        constant integer TimerUtils___OFFSET     = 0x100000
        constant integer TimerUtils___QUANTITY   = 256
        constant integer TimerUtils___ARRAY_SIZE = 8191 //changing this to a higher value would effectively
                                                   //cripple the performance making this thing irrelevant

// processed:         integer array TimerUtils___data[TimerUtils___ARRAY_SIZE]
        timer array TimerUtils___tT
        integer TimerUtils___tN = 0
        constant integer TimerUtils___HELD=0x28829022
        //use a totally random number here, the more improbable someone uses it, the better.
//endglobals from TimerUtils
    // User-defined
    unit array              udg_character

    // Generated
    rect                    gg_rct_BigArseBaddytest    = null
    rect                    gg_rct_EnterHfil           = null
    rect                    gg_rct_EnterLookout        = null
    rect                    gg_rct_FruitGuard1test     = null
    rect                    gg_rct_FruitGuard2test     = null
    rect                    gg_rct_Hfil                = null
    rect                    gg_rct_LeaveLookout        = null
    rect                    gg_rct_NoBigBaddy          = null
    rect                    gg_rct_NoFruitGuard1       = null
    rect                    gg_rct_NoFruitGuard2       = null
    rect                    gg_rct_OlibuTourney        = null
    rect                    gg_rct_Otherworld          = null
    rect                    gg_rct_OtherworldChecker   = null
    rect                    gg_rct_OtherworldMoveOut   = null
    rect                    gg_rct_OtherworldMoveto1   = null
    rect                    gg_rct_OtherworldMoveto2   = null
    rect                    gg_rct_OTourneyEnter       = null
    rect                    gg_rct_OTourneyJoin        = null
    rect                    gg_rct_OTourneyRing        = null
    rect                    gg_rct_PikkonTourney       = null
    rect                    gg_rct_SpawnBubbles        = null
    rect                    gg_rct_SpawnGregory        = null
    rect                    gg_rct_SpawnLesser1        = null
    rect                    gg_rct_SpawnLesser2        = null
    rect                    gg_rct_SpawnLesser3        = null
    rect                    gg_rct_SpawnOlibu          = null
    rect                    gg_rct_SpawnPikkon         = null
    rect                    gg_rct_SpawnYamcha         = null
    rect                    gg_rct_TourneyEnter        = null
    rect                    gg_rct_TourneyFighter1     = null
    rect                    gg_rct_TourneyFighter2     = null
    rect                    gg_rct_TourneyRing         = null
    rect                    gg_rct_TourneyWait         = null
    rect                    gg_rct_AnninRespawn        = null
    rect                    gg_rct_EnteringLookout     = null
    rect                    gg_rct_LeavingLookout      = null
    rect                    gg_rct_SpawnFruitGuard1    = null
    rect                    gg_rct_SpawnFruitGuard2    = null
    rect                    gg_rct_SpawnBigBaddie      = null
    rect                    gg_rct_LeaveGravChamber    = null
    rect                    gg_rct_EnterGravChamber    = null
    rect                    gg_rct_EnteringGravChamber = null
    rect                    gg_rct_LeavingGravChamber  = null
    rect                    gg_rct_1NorthSaga          = null
    rect                    gg_rct_2EastSaga           = null
    rect                    gg_rct_3WestSaga           = null
    rect                    gg_rct_4SouthSaga          = null
    rect                    gg_rct_Buu_Area            = null
    rect                    gg_rct_Create_Buu          = null
    rect                    gg_rct_Cooler              = null
    rect                    gg_rct_Rain_in_The_City    = null
    rect                    gg_rct_Cell_Forest         = null
    rect                    gg_rct_Geti                = null
    rect                    gg_rct_Lake                = null
    rect                    gg_rct_Little_Desert       = null
    rect                    gg_rct_Holding_Area        = null
    rect                    gg_rct_Kid_Buu_Transform_Good = null
    rect                    gg_rct_Buu_Region_Kid_Buu  = null
    rect                    gg_rct_Fruit_Spawn_HFIL    = null
    rect                    gg_rct_Region_051          = null
    rect                    gg_rct_Region_055          = null
    rect                    gg_rct_Region_056          = null
    rect                    gg_rct_Region_063          = null
    rect                    gg_rct_Region_064          = null
    rect                    gg_rct_Region_057          = null
    rect                    gg_rct_Region_066          = null
    rect                    gg_rct_Region_065          = null
    trigger                 gg_trg_Tournament          = null
    trigger                 gg_trg_Selling             = null
    trigger                 gg_trg_functions_called_from_boss_timers = null
    trigger                 gg_trg_Initialization      = null
    trigger                 gg_trg_User_Leaves         = null
    trigger                 gg_trg_game_text_commands  = null
    trigger                 gg_trg_TimerUtils          = null
    trigger                 gg_trg_TimerUtilsOld       = null
    unit                    gg_unit_n00L_0150          = null
        group participants
        timer gametime

trigger l__library_init

//JASSHelper struct globals:
integer array s__TimerUtils___data
trigger array st___prototype6

endglobals
function sc___prototype6_execute takes integer i returns nothing

    call TriggerExecute(st___prototype6[i])
endfunction
function sc___prototype6_evaluate takes integer i returns nothing

    call TriggerEvaluate(st___prototype6[i])

endfunction

//library TimerUtils:
//*********************************************************************
//* TimerUtils (Red flavor)
//* ----------
//*
//*  To implement it , create a custom text trigger called TimerUtils
//* and paste the contents of this script there.
//*
//*  To copy from a map to another, copy the trigger holding this
//* library to your map.
//*
//* (requires vJass)   More scripts: htt://www.wc3campaigns.net
//*
//* For your timer needs:
//*  * Attaching
//*  * Recycling (with double-free protection)
//*
//* set t=NewTimer()      : Get a timer (alternative to CreateTimer)
//* ReleaseTimer(t)       : Relese a timer (alt to DestroyTimer)
//* SetTimerData(t,2)     : Attach value 2 to timer
//* GetTimerData(t)       : Get the timer's value.
//*                         You can assume a timer's value is 0
//*                         after NewTimer.
//*
//* Red flavor: Fastest, method in existence for timer attaching,
//*             only takes an array lookup, H2I and subtraction. 
//*             However, all the code in your map requires extra care
//*             not to forget to call ReleaseTimer. It also requires
//*             to preload a lot of timers at map init, they use
//*             memory and handle ids.
//*
//*             I recommend you run your map in debug mode the first
//* time after adding it, make sure you can see map init messages
//* if nothing appears, all is done, if an error appears, it might
//* suggest you a value with OFFSET, in that case, update that value
//* if it still does not work after updating (rare), try a bigger
//* OFFSET by 1000 for example. (Sounds hard? Then use blue or purple
//* timerutils that are friendlier though not as fast)
//*
//********************************************************************

//================================================================

    //=================================================================================================
    function TimerUtils___H2I takes handle h returns integer
        return h
        return 0
    endfunction

    //==================================================================================================

    //It is dependent on jasshelper's recent inlining optimization in order to perform correctly.
    function SetTimerData takes timer t,integer value returns nothing
         if ( TimerUtils___H2I(t) - TimerUtils___OFFSET < 0 ) then
             call BJDebugMsg("SetTimerData: Wrong handle id, only use SetTimerData on timers created by NewTimer")
         endif
        set s__TimerUtils___data[TimerUtils___H2I(t) - TimerUtils___OFFSET]= value
    endfunction

    function GetTimerData takes timer t returns integer
         if ( TimerUtils___H2I(t) - TimerUtils___OFFSET < 0 ) then
             call BJDebugMsg("GetTimerData: Wrong handle id, only use GetTimerData on timers created by NewTimer")
         endif

        return s__TimerUtils___data[TimerUtils___H2I(t) - TimerUtils___OFFSET]
    endfunction

    //==========================================================================================

    //==========================================================================================
    function NewTimer takes nothing returns timer
        if ( TimerUtils___tN == 0 ) then
            //If this happens then the QUANTITY rule has already been broken, try to fix the
            // issue, else fail.
             call BJDebugMsg("NewTimer: Warning, Exceeding TimerUtils_QUANTITY, please increase it for your map, fix your map's timer leaks or switch to blue flavor when applicable")
            set TimerUtils___tT[0]=CreateTimer()
            if ( TimerUtils___H2I(TimerUtils___tT[0]) - TimerUtils___OFFSET < 0 ) or ( TimerUtils___H2I(TimerUtils___tT[0]) - TimerUtils___OFFSET >= TimerUtils___ARRAY_SIZE ) then
                //all right, couldn't fix it
                call BJDebugMsg("NewTimer: Unable to allocate a timer, you should probably switch to the blue flavor or fix timer leaks.")
                return null
            endif
        else
            set TimerUtils___tN = TimerUtils___tN - 1
        endif
        call SetTimerData(TimerUtils___tT[TimerUtils___tN] , 0)
     return TimerUtils___tT[TimerUtils___tN]
    endfunction

    //==========================================================================================
    function ReleaseTimer takes timer t returns nothing
        if ( t == null ) then
             call BJDebugMsg("Warning: attempt to release a null timer")
            return 
        endif
        if ( TimerUtils___tN == 8191 ) then
             call BJDebugMsg("Warning: Timer stack is full, destroying timer!!")

            //stack is full, the map already has much more troubles than the chance of bug
            call DestroyTimer(t)
        else
            call PauseTimer(t)
            if ( GetTimerData(t) == TimerUtils___HELD ) then
                 call BJDebugMsg("Warning: ReleaseTimer: Double free!")
                return 
            endif
            call SetTimerData(t , TimerUtils___HELD)
            set TimerUtils___tT[TimerUtils___tN]=t
            set TimerUtils___tN = TimerUtils___tN + 1
        endif
    endfunction

    function TimerUtils___redInit takes nothing returns nothing
     local integer i=0
     local integer bestoffset=- 1

        loop
            exitwhen ( i == TimerUtils___QUANTITY )
            set TimerUtils___tT[i]=CreateTimer()
            if ( i == 0 ) then
                set bestoffset = TimerUtils___H2I(TimerUtils___tT[i])
            endif
            if ( TimerUtils___H2I(TimerUtils___tT[i]) - TimerUtils___OFFSET >= TimerUtils___ARRAY_SIZE ) then
                 call BJDebugMsg("TimerUtils_redInit: Failed a initializing attempt")
                 call BJDebugMsg("The timer limit is " + I2S(i))
                 call BJDebugMsg("This is a rare ocurrence, if the timer limit is too low, to change OFFSET to " + I2S(bestoffset))
                exitwhen true
            endif
            if ( TimerUtils___H2I(TimerUtils___tT[i]) - TimerUtils___OFFSET >= 0 ) then
                set i = i + 1
            endif
        endloop

        set TimerUtils___tN = i
    endfunction


//library TimerUtils ends
//library bosses:
    function bosses_raditzNappa takes nothing returns nothing
    call ReleaseTimer(GetExpiredTimer())
    endfunction

//library bosses ends
//library Funcs:
    //DisplayTextToAll()
    function DisplayTextToAll takes string text returns nothing
        local integer x= 0
        loop
        exitwhen x == 11
            call DisplayTextToPlayer(Player(x) , 0.0 , 0.0 , text)
            set x = x + 1
        endloop
        set x = 0
        set text = null
    endfunction
    //End DisplayTextToAll()
   
        function Funcs___Enum takes nothing returns nothing
        local unit character= GetFilterUnit()
        local string name= GetUnitName(character)
        call PingMinimap(GetUnitX(character) , GetUnitY(character) , 2.00)
        call DisplayTextToAll("The owner of " + name + " has left the game.  His idle character has been pinged, and " + name + " will drop his items in 120 seconds, and die.")
        call TriggerSleepAction(120.00)
        call KillUnit(character)
        //cleanup
        set character = null
        set name = null
    endfunction
    function Funcs_remove takes nothing returns boolean
        call sc___prototype6_execute(1)
        return true
    endfunction
   
   
   
   
    function Funcs_check_empty takes nothing returns nothing
        local group KillGroup= CreateGroup()
        local integer x= 0
        call ReleaseTimer(GetExpiredTimer())
        loop
            exitwhen x == 11
            if ( GetPlayerSlotState(Player(x)) != PLAYER_SLOT_STATE_PLAYING ) then
                call GroupEnumUnitsOfPlayer(KillGroup , Player(x) , Filter(function Funcs_remove))
            endif
            set x = x + 1
        endloop
        call DisplayTextToAll(R2S(TimerGetElapsed(gametime)))
        //Cleanup
        set x = 0
        call GroupClear(KillGroup)
        call DestroyGroup(KillGroup)
        set KillGroup = null
    endfunction


//library Funcs ends
//library tournament:
    function tournament___start takes nothing returns nothing
        local group participants= CreateGroup()
       // call 
    endfunction
    
    function tournament_countdown takes nothing returns nothing
        local timer t= NewTimer()
        call TimerStart(t , 360.00 , false , function tournament___start)
        call TimerDialogDisplay(CreateTimerDialog(t) , true)
        call DisplayTextToAll("The tournament will begin in five minutes, be prompt!")
        call ReleaseTimer(t)
        set t = null
    endfunction
    
    function tournament_end takes nothing returns nothing
    local timer t
    call ReleaseTimer(GetExpiredTimer())
    set t = NewTimer()
    endfunction
 

//library tournament ends
//===========================================================================
// 
// DBZ Tribute Pre-Alpha 0.0.4
// 
//   Warcraft III map script
//   Generated by the Warcraft III World Editor
//   Date: Sat Jul 04 22:33:53 2009
//   Map Author: Matrixboy / TravisB
// 
//===========================================================================

//***************************************************************************
//*
//*  Global Variables
//*
//***************************************************************************


function InitGlobals takes nothing returns nothing
    local integer i= 0
endfunction

//***************************************************************************
//*
//*  Unit Creation
//*
//***************************************************************************

//===========================================================================
function CreateBuildingsForPlayer0 takes nothing returns nothing
    local player p= Player(0)
    local unit u
    local integer unitID
    local trigger t
    local real life

    set u = CreateUnit(p , 'h007' , 14912.0 , 8960.0 , 270.000)
endfunction

//===========================================================================
function CreateUnitsForPlayer0 takes nothing returns nothing
    local player p= Player(0)
    local unit u
    local integer unitID
    local trigger t
    local real life

    set u = CreateUnit(p , 'H001' , 14979.4 , 8608.7 , 72.996)
endfunction

//===========================================================================
function CreateUnitsForPlayer1 takes nothing returns nothing
    local player p= Player(1)
    local unit u
    local integer unitID
    local trigger t
    local real life

    set u = CreateUnit(p , 'H000' , 13906.9 , - 11850.3 , 310.121)
endfunction

//===========================================================================
function CreateUnitsForPlayer2 takes nothing returns nothing
    local player p= Player(2)
    local unit u
    local integer unitID
    local trigger t
    local real life

    set u = CreateUnit(p , 'H006' , - 3135.5 , - 15574.6 , 241.509)
endfunction

//===========================================================================
function CreateUnitsForPlayer3 takes nothing returns nothing
    local player p= Player(3)
    local unit u
    local integer unitID
    local trigger t
    local real life

    set u = CreateUnit(p , 'H003' , - 12101.9 , - 14990.2 , 140.311)
    set u = CreateUnit(p , 'H002' , - 12145.9 , - 15101.0 , 34.839)
endfunction

//===========================================================================
function CreateUnitsForPlayer4 takes nothing returns nothing
    local player p= Player(4)
    local unit u
    local integer unitID
    local trigger t
    local real life

    set u = CreateUnit(p , 'U006' , 13348.6 , - 1953.5 , 20.578)
    set u = CreateUnit(p , 'U007' , 13501.4 , - 1924.6 , 326.502)
    set u = CreateUnit(p , 'U005' , 13435.6 , - 2110.3 , 348.145)
endfunction

//===========================================================================
function CreateUnitsForPlayer5 takes nothing returns nothing
    local player p= Player(5)
    local unit u
    local integer unitID
    local trigger t
    local real life

    set u = CreateUnit(p , 'H005' , - 588.0 , 15064.7 , 298.947)
endfunction

//===========================================================================
function CreateUnitsForPlayer6 takes nothing returns nothing
    local player p= Player(6)
    local unit u
    local integer unitID
    local trigger t
    local real life

    set u = CreateUnit(p , 'H004' , - 8234.3 , - 15095.8 , 294.377)
endfunction

//===========================================================================
function CreateBuildingsForPlayer7 takes nothing returns nothing
    local player p= Player(7)
    local unit u
    local integer unitID
    local trigger t
    local real life

    set u = CreateUnit(p , 'n00C' , 5120.0 , 14464.0 , 270.000)
endfunction

//===========================================================================
function CreateUnitsForPlayer7 takes nothing returns nothing
    local player p= Player(7)
    local unit u
    local integer unitID
    local trigger t
    local real life

    set u = CreateUnit(p , 'U004' , 4703.9 , 14522.0 , 285.115)
endfunction

//===========================================================================
function CreateBuildingsForPlayer8 takes nothing returns nothing
    local player p= Player(8)
    local unit u
    local integer unitID
    local trigger t
    local real life

    set u = CreateUnit(p , 'ndmg' , 7808.0 , 9280.0 , 270.000)
endfunction

//===========================================================================
function CreateUnitsForPlayer8 takes nothing returns nothing
    local player p= Player(8)
    local unit u
    local integer unitID
    local trigger t
    local real life

    set u = CreateUnit(p , 'U003' , 7659.5 , 8908.0 , 215.405)
endfunction

//===========================================================================
function CreateBuildingsForPlayer9 takes nothing returns nothing
    local player p= Player(9)
    local unit u
    local integer unitID
    local trigger t
    local real life

    set u = CreateUnit(p , 'nfrm' , 128.0 , 10048.0 , 270.000)
endfunction

//===========================================================================
function CreateUnitsForPlayer9 takes nothing returns nothing
    local player p= Player(9)
    local unit u
    local integer unitID
    local trigger t
    local real life

    set u = CreateUnit(p , 'U000' , - 134.4 , 9896.5 , 292.926)
endfunction

//===========================================================================
function CreateUnitsForPlayer10 takes nothing returns nothing
    local player p= Player(10)
    local unit u
    local integer unitID
    local trigger t
    local real life

    set u = CreateUnit(p , 'U001' , - 14288.7 , 6641.7 , 254.396)
endfunction

//===========================================================================
function CreateBuildingsForPlayer11 takes nothing returns nothing
    local player p= Player(11)
    local unit u
    local integer unitID
    local trigger t
    local real life

    set u = CreateUnit(p , 'u008' , 13088.0 , - 1632.0 , 270.000)
    set u = CreateUnit(p , 'u009' , - 14624.0 , 10912.0 , 270.000)
endfunction

//===========================================================================
function CreateUnitsForPlayer11 takes nothing returns nothing
    local player p= Player(11)
    local unit u
    local integer unitID
    local trigger t
    local real life

    set u = CreateUnit(p , 'U002' , - 14349.1 , 10654.8 , 309.079)
endfunction

//===========================================================================
function CreateNeutralHostile takes nothing returns nothing
    local player p= Player(PLAYER_NEUTRAL_AGGRESSIVE)
    local unit u
    local integer unitID
    local trigger t
    local real life

    set u = CreateUnit(p , 'N00B' , - 8975.6 , 14931.9 , 260.870)
endfunction

//===========================================================================
function CreateNeutralPassiveBuildings takes nothing returns nothing
    local player p= Player(PLAYER_NEUTRAL_PASSIVE)
    local unit u
    local integer unitID
    local trigger t
    local real life

    set u = CreateUnit(p , 'n00A' , 13952.0 , - 11456.0 , 270.000)
    set u = CreateUnit(p , 'ncop' , 12160.0 , 12800.0 , 270.000)
    set u = CreateUnit(p , 'ncop' , 11264.0 , 11648.0 , 270.000)
    set u = CreateUnit(p , 'n004' , - 6336.0 , 13184.0 , 270.000)
    set u = CreateUnit(p , 'ncop' , 13568.0 , 11712.0 , 270.000)
    set u = CreateUnit(p , 'ncp3' , 64.0 , 15104.0 , 270.000)
    set u = CreateUnit(p , 'ncop' , 12224.0 , 15104.0 , 270.000)
    set u = CreateUnit(p , 'ncop' , 15360.0 , 14912.0 , 270.000)
    set u = CreateUnit(p , 'ncop' , 3200.0 , 11840.0 , 270.000)
    set u = CreateUnit(p , 'ncop' , 4160.0 , 12672.0 , 270.000)
    set u = CreateUnit(p , 'ncop' , 3136.0 , 13248.0 , 270.000)
    set u = CreateUnit(p , 'ncop' , 4160.0 , 14144.0 , 270.000)
    set u = CreateUnit(p , 'ncop' , 4544.0 , 13568.0 , 270.000)
    set u = CreateUnit(p , 'ncop' , 5568.0 , 12672.0 , 270.000)
    set u = CreateUnit(p , 'ncop' , 5568.0 , 14144.0 , 270.000)
    set u = CreateUnit(p , 'ncop' , 64.0 , - 15232.0 , 270.000)
    set gg_unit_n00L_0150 = CreateUnit(p , 'n00L' , 11968.0 , - 14464.0 , 270.000)
    set u = CreateUnit(p , 'nfoh' , - 7552.0 , 15104.0 , 270.000)
    set u = CreateUnit(p , 'ncop' , - 5952.0 , 12544.0 , 270.000)
    set u = CreateUnit(p , 'ncop' , - 11648.0 , 14784.0 , 270.000)
    set u = CreateUnit(p , 'ncop' , - 9856.0 , 12480.0 , 270.000)
    set u = CreateUnit(p , 'ncop' , - 12352.0 , 12544.0 , 270.000)
    set u = CreateUnit(p , 'ncop' , - 13824.0 , 14976.0 , 270.000)
    set u = CreateUnit(p , 'ncop' , - 8640.0 , 12864.0 , 270.000)
    set u = CreateUnit(p , 'ncop' , - 15232.0 , 14208.0 , 270.000)
endfunction

//===========================================================================
function CreateNeutralPassive takes nothing returns nothing
    local player p= Player(PLAYER_NEUTRAL_PASSIVE)
    local unit u
    local integer unitID
    local trigger t
    local real life

    set u = CreateUnit(p , 'n00G' , 14569.0 , 8775.9 , 275.711)
    set u = CreateUnit(p , 'nvil' , - 5742.3 , - 10657.7 , 110.537)
    set u = CreateUnit(p , 'nvl2' , - 5708.9 , - 10505.1 , 206.165)
    set u = CreateUnit(p , 'H00B' , 3338.6 , 15290.7 , 156.200)
    set u = CreateUnit(p , 'H00C' , 3266.0 , 15296.5 , 27.840)
    set u = CreateUnit(p , 'H00D' , 3344.1 , 15219.3 , 76.320)
    set u = CreateUnit(p , 'O000' , 3295.3 , 15113.9 , 28.870)
    call SetUnitState(u , UNIT_STATE_MANA , 98)
    set u = CreateUnit(p , 'n00H' , 15267.7 , 8806.0 , 249.343)
    set u = CreateUnit(p , 'n00I' , 14003.2 , 8956.2 , 97.034)
    set u = CreateUnit(p , 'n00G' , 15161.2 , 7248.1 , 222.919)
    set u = CreateUnit(p , 'n00G' , 14802.7 , 7264.7 , 251.814)
    set u = CreateUnit(p , 'n00G' , 14502.2 , 6817.2 , 28.675)
    set u = CreateUnit(p , 'n00I' , 10813.0 , 14427.4 , 120.820)
    set u = CreateUnit(p , 'n00J' , 13060.9 , 12494.8 , 270.522)
    set u = CreateUnit(p , 'n00I' , 10779.1 , 13999.0 , 355.781)
    set u = CreateUnit(p , 'n00H' , - 14276.9 , 14741.2 , 129.005)
    set u = CreateUnit(p , 'nvil' , 9387.6 , - 14060.3 , 304.067)
    set u = CreateUnit(p , 'n00I' , 10796.6 , 13553.2 , 95.210)
    set u = CreateUnit(p , 'n00I' , 10789.2 , 12994.0 , 352.639)
    set u = CreateUnit(p , 'n00I' , 10770.3 , 12401.5 , 324.392)
    set u = CreateUnit(p , 'nvk2' , 9004.9 , - 12637.2 , 336.620)
    set u = CreateUnit(p , 'nvk2' , 9765.7 , - 12683.3 , 271.524)
    set u = CreateUnit(p , 'n00I' , 10790.3 , 12452.4 , 112.701)
    set u = CreateUnit(p , 'n00I' , 10808.2 , 13111.2 , 253.550)
    set u = CreateUnit(p , 'n00I' , 10796.4 , 11775.2 , 253.737)
    set u = CreateUnit(p , 'n00I' , 10807.8 , 11967.4 , 313.065)
    set u = CreateUnit(p , 'n00I' , 10374.8 , 11734.7 , 33.872)
    set u = CreateUnit(p , 'n00I' , 10227.6 , 11731.5 , 308.615)
    set u = CreateUnit(p , 'n00I' , 8879.7 , 12995.0 , 213.394)
    set u = CreateUnit(p , 'n00I' , 8892.5 , 13198.2 , 7.031)
    set u = CreateUnit(p , 'n00I' , 9476.1 , 11712.3 , 312.307)
    set u = CreateUnit(p , 'n00I' , 9558.2 , 11693.6 , 330.105)
    set u = CreateUnit(p , 'n00I' , 8905.5 , 12216.7 , 311.285)
    set u = CreateUnit(p , 'n00I' , 8942.0 , 11825.1 , 271.975)
    set u = CreateUnit(p , 'n00I' , 8891.9 , 13856.0 , 63.898)
    set u = CreateUnit(p , 'n00I' , 8881.9 , 14269.1 , 6.131)
    set u = CreateUnit(p , 'n00I' , 10512.6 , 15030.2 , 13.909)
    set u = CreateUnit(p , 'n00I' , 8881.7 , 14999.7 , 353.496)
    set u = CreateUnit(p , 'n00G' , 10631.5 , 15048.9 , 57.658)
    set u = CreateUnit(p , 'n00G' , 10783.8 , 14608.2 , 210.691)
    set u = CreateUnit(p , 'n00G' , 10782.9 , 14341.4 , 208.824)
    set u = CreateUnit(p , 'n00G' , 10801.1 , 14862.0 , 207.923)
    set u = CreateUnit(p , 'n00G' , 10835.2 , 11917.5 , 104.879)
    set u = CreateUnit(p , 'n00G' , 10810.7 , 12766.5 , 225.831)
    set u = CreateUnit(p , 'n00G' , 10823.7 , 12238.4 , 323.085)
    set u = CreateUnit(p , 'n00G' , 10779.6 , 12135.9 , 293.058)
    set u = CreateUnit(p , 'n00G' , 10486.5 , 11736.8 , 45.748)
    set u = CreateUnit(p , 'n00G' , 10104.9 , 11737.6 , 48.385)
    set u = CreateUnit(p , 'n00G' , 9871.4 , 11725.0 , 351.397)
    set u = CreateUnit(p , 'n00G' , 9239.1 , 11757.7 , 81.213)
    set u = CreateUnit(p , 'nvk2' , 9707.4 , - 13652.9 , 12.854)
    set u = CreateUnit(p , 'nvk2' , 10048.2 , - 14385.4 , 209.406)
    set u = CreateUnit(p , 'n00G' , 8894.3 , 12530.8 , 216.591)
    set u = CreateUnit(p , 'nvk2' , 8865.3 , - 14351.7 , 137.520)
    set u = CreateUnit(p , 'n00G' , 8936.0 , 11985.0 , 115.766)
    set u = CreateUnit(p , 'n00G' , 8902.9 , 13062.2 , 351.046)
    set u = CreateUnit(p , 'n00G' , 8876.9 , 13553.8 , 168.228)
    set u = CreateUnit(p , 'n00G' , 8921.2 , 13325.8 , 80.664)
    set u = CreateUnit(p , 'n00G' , 8913.1 , 14118.3 , 79.499)
    set u = CreateUnit(p , 'n00G' , 9142.3 , 15055.9 , 247.398)
    set u = CreateUnit(p , 'n00G' , 8885.7 , 14661.4 , 70.446)
    set u = CreateUnit(p , 'n00H' , 10789.1 , 14199.9 , 264.812)
    set u = CreateUnit(p , 'n00H' , 10823.3 , 14636.0 , 352.090)
    set u = CreateUnit(p , 'n00H' , 10781.7 , 13824.9 , 306.396)
    set u = CreateUnit(p , 'nvlw' , 9691.0 , - 15318.6 , 59.637)
    set u = CreateUnit(p , 'nvl2' , 9845.2 , - 14731.7 , 260.670)
    set u = CreateUnit(p , 'nvil' , 9782.2 , - 14742.2 , 317.062)
    set u = CreateUnit(p , 'nvk2' , 10293.9 , - 14828.2 , 233.232)
    set u = CreateUnit(p , 'n00H' , 10837.2 , 13439.3 , 184.005)
    set u = CreateUnit(p , 'n00H' , 10835.6 , 13301.1 , 144.255)
    set u = CreateUnit(p , 'n00H' , 10806.5 , 13285.3 , 138.201)
    set u = CreateUnit(p , 'n00H' , 10802.0 , 12635.0 , 270.327)
    set u = CreateUnit(p , 'n00H' , 10803.4 , 12899.0 , 290.718)
    set u = CreateUnit(p , 'n00H' , 10860.9 , 12068.5 , 87.201)
    set u = CreateUnit(p , 'n00H' , 10636.8 , 11717.9 , 219.173)
    set u = CreateUnit(p , 'n00H' , 10463.6 , 11668.5 , 156.560)
    set u = CreateUnit(p , 'n00H' , 10287.2 , 11673.0 , 267.218)
    set u = CreateUnit(p , 'n00H' , 10014.0 , 11686.6 , 127.313)
    set u = CreateUnit(p , 'n00H' , 9750.4 , 11701.7 , 44.650)
    set u = CreateUnit(p , 'n00H' , 8909.3 , 12718.7 , 129.005)
    set u = CreateUnit(p , 'n008' , 11978.1 , 11563.4 , 298.068)
    set u = CreateUnit(p , 'n00H' , 8887.7 , 12427.7 , 347.354)
    set u = CreateUnit(p , 'n006' , 9857.4 , 14912.2 , 259.863)
    set u = CreateUnit(p , 'n00H' , 9316.1 , 11692.7 , 233.203)
    set u = CreateUnit(p , 'n005' , - 5977.4 , 13960.7 , 266.100)
    set u = CreateUnit(p , 'n00H' , 9096.9 , 11698.6 , 154.725)
    set u = CreateUnit(p , 'n00H' , 8890.3 , 13683.5 , 44.727)
    set u = CreateUnit(p , 'n00H' , 8918.5 , 14495.6 , 19.985)
    set u = CreateUnit(p , 'n00H' , 9428.9 , 15064.3 , 234.049)
    set u = CreateUnit(p , 'n00H' , 10310.3 , 14998.9 , 143.398)
    set u = CreateUnit(p , 'n00H' , 10395.9 , 14998.5 , 288.015)
    set u = CreateUnit(p , 'n00H' , 10831.8 , 14978.5 , 198.936)
    set u = CreateUnit(p , 'n00H' , 8897.5 , 13250.4 , 268.822)
    set u = CreateUnit(p , 'n00H' , 8864.7 , 13456.9 , 272.942)
    set u = CreateUnit(p , 'n00H' , 8897.8 , 14009.5 , 46.408)
    set u = CreateUnit(p , 'n00K' , 13039.0 , 13748.2 , 90.151)
    set u = CreateUnit(p , 'n00H' , - 13211.2 , 14758.3 , 129.005)
    set u = CreateUnit(p , 'n00H' , - 13138.8 , 13149.5 , 129.005)
    set u = CreateUnit(p , 'n00H' , - 12406.7 , 13627.8 , 129.005)
    set u = CreateUnit(p , 'n00H' , - 15438.6 , 14680.6 , 129.005)
    set u = CreateUnit(p , 'n00H' , - 14926.6 , 13046.5 , 99.436)
    set u = CreateUnit(p , 'n00H' , - 10860.9 , 13896.3 , 233.203)
    set u = CreateUnit(p , 'n00H' , - 11554.0 , 13310.6 , 233.203)
    set u = CreateUnit(p , 'n00G' , - 12603.3 , 14460.3 , 351.046)
    set u = CreateUnit(p , 'nvlw' , 10350.4 , - 15160.4 , 133.319)
    set u = CreateUnit(p , 'nvl2' , 10076.2 , - 15394.8 , 96.221)
    set u = CreateUnit(p , 'nvlw' , 10845.3 , - 13713.6 , 4.010)
    set u = CreateUnit(p , 'nvl2' , 11475.4 , - 13268.4 , 302.243)
    set u = CreateUnit(p , 'nvil' , 11341.9 , - 12771.4 , 148.375)
    set u = CreateUnit(p , 'nvil' , 10839.3 , - 12372.5 , 320.920)
    set u = CreateUnit(p , 'nvk2' , 10993.9 , - 12747.6 , 249.013)
    set u = CreateUnit(p , 'nvlw' , 11975.6 , - 12110.3 , 136.191)
    set u = CreateUnit(p , 'nvlk' , 11182.2 , - 11496.7 , 58.449)
    set u = CreateUnit(p , 'nvlk' , 10814.3 , - 11140.8 , 297.662)
    set u = CreateUnit(p , 'nvlk' , 10226.2 , - 11730.0 , 265.394)
    set u = CreateUnit(p , 'nvlw' , 10226.7 , - 11673.2 , 270.283)
    set u = CreateUnit(p , 'nvl2' , 10437.2 , - 13386.1 , 123.040)
    set u = CreateUnit(p , 'nvil' , 10403.8 , - 13344.8 , 289.433)
    set u = CreateUnit(p , 'nvlw' , 9939.9 , - 11081.2 , 179.698)
    set u = CreateUnit(p , 'nvlk' , 9681.0 , - 11003.5 , 283.115)
    set u = CreateUnit(p , 'nvlk' , 9056.0 , - 11369.7 , 20.930)
    set u = CreateUnit(p , 'nvk2' , 9095.9 , - 11325.3 , 227.270)
    set u = CreateUnit(p , 'nvlw' , 8933.5 , - 13952.8 , 202.352)
    set u = CreateUnit(p , 'nvl2' , 8970.9 , - 13474.4 , 132.631)
    set u = CreateUnit(p , 'nvl2' , 8404.8 , - 15089.0 , 50.275)
    set u = CreateUnit(p , 'nvl2' , 9062.1 , - 15143.6 , 211.383)
    set u = CreateUnit(p , 'nvk2' , 9705.9 , - 15777.3 , 316.625)
    set u = CreateUnit(p , 'nvk2' , 9052.4 , - 15750.7 , 281.237)
    set u = CreateUnit(p , 'nvk2' , 8465.7 , - 15444.8 , 87.410)
    set u = CreateUnit(p , 'nvlk' , 10708.9 , - 15341.0 , 329.424)
    set u = CreateUnit(p , 'nvlk' , 10877.0 , - 14417.3 , 343.498)
    set u = CreateUnit(p , 'nvlw' , 11518.2 , - 14152.8 , 317.042)
    set u = CreateUnit(p , 'nvl2' , 11813.0 , - 14403.6 , 242.354)
    set u = CreateUnit(p , 'nvl2' , 11370.9 , - 11793.3 , 90.860)
    set u = CreateUnit(p , 'nvlk' , 12434.9 , - 11849.9 , 239.894)
    set u = CreateUnit(p , 'nvlk' , 8856.6 , - 13046.0 , 13.689)
    set u = CreateUnit(p , 'hpea' , 3260.3 , 15199.8 , 346.902)
endfunction

//===========================================================================
function CreatePlayerBuildings takes nothing returns nothing
    call CreateBuildingsForPlayer0()
    call CreateBuildingsForPlayer7()
    call CreateBuildingsForPlayer8()
    call CreateBuildingsForPlayer9()
    call CreateBuildingsForPlayer11()
endfunction

//===========================================================================
function CreatePlayerUnits takes nothing returns nothing
    call CreateUnitsForPlayer0()
    call CreateUnitsForPlayer1()
    call CreateUnitsForPlayer2()
    call CreateUnitsForPlayer3()
    call CreateUnitsForPlayer4()
    call CreateUnitsForPlayer5()
    call CreateUnitsForPlayer6()
    call CreateUnitsForPlayer7()
    call CreateUnitsForPlayer8()
    call CreateUnitsForPlayer9()
    call CreateUnitsForPlayer10()
    call CreateUnitsForPlayer11()
endfunction

//===========================================================================
function CreateAllUnits takes nothing returns nothing
    call CreateNeutralPassiveBuildings()
    call CreatePlayerBuildings()
    call CreateNeutralHostile()
    call CreateNeutralPassive()
    call CreatePlayerUnits()
endfunction

//***************************************************************************
//*
//*  Regions
//*
//***************************************************************************

function CreateRegions takes nothing returns nothing
    local weathereffect we

    set gg_rct_BigArseBaddytest = Rect(- 9664.0 , 14944.0 , - 9408.0 , 15072.0)
    set gg_rct_EnterHfil = Rect(- 15552.0 , 12320.0 , - 15168.0 , 12736.0)
    set gg_rct_EnterLookout = Rect(- 2144.0 , 288.0 , - 992.0 , 1344.0)
    set gg_rct_FruitGuard1test = Rect(- 13120.0 , 13696.0 , - 12896.0 , 13920.0)
    set gg_rct_FruitGuard2test = Rect(- 12320.0 , 12416.0 , - 12032.0 , 12608.0)
    set gg_rct_Hfil = Rect(- 15616.0 , 12224.0 , - 8320.0 , 15360.0)
    set gg_rct_LeaveLookout = Rect(- 6016.0 , 12448.0 , - 5888.0 , 12608.0)
    set gg_rct_NoBigBaddy = Rect(- 10112.0 , 14336.0 , - 10016.0 , 14432.0)
    set gg_rct_NoFruitGuard1 = Rect(- 12192.0 , 12288.0 , - 12096.0 , 12384.0)
    set gg_rct_NoFruitGuard2 = Rect(- 11328.0 , 13984.0 , - 11232.0 , 14080.0)
    set gg_rct_OlibuTourney = Rect(9184.0 , 14624.0 , 9280.0 , 14720.0)
    set gg_rct_Otherworld = Rect(8512.0 , 6272.0 , 15648.0 , 15520.0)
    set we = AddWeatherEffect(gg_rct_Otherworld , 'LRaa')
    call EnableWeatherEffect(we , true)
    set gg_rct_OtherworldChecker = Rect(13760.0 , 12288.0 , 14112.0 , 12992.0)
    set gg_rct_OtherworldMoveOut = Rect(10528.0 , 10464.0 , 11040.0 , 10784.0)
    set gg_rct_OtherworldMoveto1 = Rect(10656.0 , 11200.0 , 10752.0 , 11328.0)
    set gg_rct_OtherworldMoveto2 = Rect(10464.0 , 11200.0 , 10560.0 , 11296.0)
    set gg_rct_OTourneyEnter = Rect(11136.0 , 14368.0 , 11616.0 , 14912.0)
    set gg_rct_OTourneyJoin = Rect(10112.0 , 10752.0 , 10336.0 , 10944.0)
    set gg_rct_OTourneyRing = Rect(9024.0 , 11872.0 , 10688.0 , 14880.0)
    set gg_rct_PikkonTourney = Rect(9312.0 , 14624.0 , 9408.0 , 14720.0)
    set gg_rct_SpawnBubbles = Rect(13472.0 , 11616.0 , 13664.0 , 11840.0)
    set gg_rct_SpawnGregory = Rect(11168.0 , 11552.0 , 11360.0 , 11744.0)
    set gg_rct_SpawnLesser1 = Rect(- 9856.0 , 14016.0 , - 9728.0 , 14144.0)
    set gg_rct_SpawnLesser2 = Rect(- 10624.0 , 14976.0 , - 10496.0 , 15104.0)
    set gg_rct_SpawnLesser3 = Rect(- 10944.0 , 14080.0 , - 10816.0 , 14208.0)
    set gg_rct_SpawnOlibu = Rect(15232.0 , 14784.0 , 15456.0 , 15104.0)
    set gg_rct_SpawnPikkon = Rect(12096.0 , 14976.0 , 12352.0 , 15232.0)
    set gg_rct_SpawnYamcha = Rect(12064.0 , 12704.0 , 12256.0 , 12896.0)
    set gg_rct_TourneyEnter = Rect(12640.0 , - 14944.0 , 12832.0 , - 14368.0)
    set gg_rct_TourneyFighter1 = Rect(13920.0 , - 14592.0 , 14016.0 , - 14496.0)
    set gg_rct_TourneyFighter2 = Rect(15040.0 , - 14592.0 , 15136.0 , - 14496.0)
    set gg_rct_TourneyRing = Rect(13664.0 , - 15264.0 , 15392.0 , - 13664.0)
    set gg_rct_TourneyWait = Rect(13888.0 , - 15712.0 , 15168.0 , - 15360.0)
    set gg_rct_AnninRespawn = Rect(- 8576.0 , 15008.0 , - 8448.0 , 15136.0)
    set gg_rct_EnteringLookout = Rect(- 6080.0 , 12832.0 , - 5856.0 , 13088.0)
    set gg_rct_LeavingLookout = Rect(- 1696.0 , 96.0 , - 1568.0 , 256.0)
    set gg_rct_SpawnFruitGuard1 = Rect(- 15328.0 , 14144.0 , - 15200.0 , 14272.0)
    set gg_rct_SpawnFruitGuard2 = Rect(- 10304.0 , 13504.0 , - 10176.0 , 13632.0)
    set gg_rct_SpawnBigBaddie = Rect(- 9792.0 , 14528.0 , - 9664.0 , 14656.0)
    set gg_rct_LeaveGravChamber = Rect(1920.0 , 15072.0 , 2240.0 , 15328.0)
    set gg_rct_EnterGravChamber = Rect(13600.0 , - 11680.0 , 13728.0 , - 11552.0)
    set gg_rct_EnteringGravChamber = Rect(1632.0 , 14816.0 , 2528.0 , 15328.0)
    set gg_rct_LeavingGravChamber = Rect(13568.0 , - 12352.0 , 13792.0 , - 12192.0)
    set gg_rct_1NorthSaga = Rect(- 4064.0 , 5728.0 , - 3392.0 , 6240.0)
    set gg_rct_2EastSaga = Rect(9728.0 , - 5984.0 , 10688.0 , - 5536.0)
    set gg_rct_3WestSaga = Rect(- 6240.0 , - 7040.0 , - 5184.0 , - 6720.0)
    set gg_rct_4SouthSaga = Rect(- 4480.0 , - 7232.0 , - 3936.0 , - 6464.0)
    set gg_rct_Buu_Area = Rect(4736.0 , 14624.0 , 5088.0 , 14816.0)
    set gg_rct_Create_Buu = Rect(4736.0 , 14592.0 , 5088.0 , 14752.0)
    set gg_rct_Cooler = Rect(- 14560.0 , 10528.0 , - 14176.0 , 10848.0)
    set gg_rct_Rain_in_The_City = Rect(- 15872.0 , - 15904.0 , - 11168.0 , - 12224.0)
    set we = AddWeatherEffect(gg_rct_Rain_in_The_City , 'RAlr')
    call EnableWeatherEffect(we , true)
    set gg_rct_Cell_Forest = Rect(- 15584.0 , 4288.0 , - 11712.0 , 8320.0)
    set we = AddWeatherEffect(gg_rct_Cell_Forest , 'RAlr')
    call EnableWeatherEffect(we , true)
    set gg_rct_Geti = Rect(- 15328.0 , 10176.0 , - 13920.0 , 11552.0)
    set we = AddWeatherEffect(gg_rct_Geti , 'MEds')
    call EnableWeatherEffect(we , true)
    set gg_rct_Lake = Rect(5888.0 , - 4512.0 , 8896.0 , 192.0)
    set we = AddWeatherEffect(gg_rct_Lake , 'LRaa')
    call EnableWeatherEffect(we , true)
    set gg_rct_Little_Desert = Rect(- 7328.0 , - 12864.0 , - 1024.0 , - 9824.0)
    set we = AddWeatherEffect(gg_rct_Little_Desert , 'WOlw')
    call EnableWeatherEffect(we , true)
    set gg_rct_Holding_Area = Rect(3136.0 , 14944.0 , 3776.0 , 15328.0)
    set gg_rct_Kid_Buu_Transform_Good = Rect(- 3744.0 , - 7200.0 , - 3456.0 , - 6816.0)
    set gg_rct_Buu_Region_Kid_Buu = Rect(- 2304.0 , - 7808.0 , - 1920.0 , - 7424.0)
    set gg_rct_Fruit_Spawn_HFIL = Rect(- 14176.0 , 13376.0 , - 13504.0 , 14016.0)
    set gg_rct_Region_051 = Rect(3104.0 , 11712.0 , 3296.0 , 11904.0)
    set gg_rct_Region_055 = Rect(- 64.0 , - 15328.0 , 224.0 , - 15072.0)
    set gg_rct_Region_056 = Rect(4064.0 , 12576.0 , 4256.0 , 12800.0)
    set gg_rct_Region_063 = Rect(4064.0 , 14016.0 , 4256.0 , 14208.0)
    set gg_rct_Region_064 = Rect(4448.0 , 13440.0 , 4640.0 , 13696.0)
    set gg_rct_Region_057 = Rect(3072.0 , 13088.0 , 3264.0 , 13312.0)
    set gg_rct_Region_066 = Rect(5440.0 , 14048.0 , 5664.0 , 14240.0)
    set gg_rct_Region_065 = Rect(5472.0 , 12608.0 , 5632.0 , 12736.0)
endfunction

//***************************************************************************
//*
//*  Custom Script Code
//*
//***************************************************************************
//TESH.scrollpos=0
//TESH.alwaysfold=0
//***************************************************************************
//*
//*  Triggers
//*
//***************************************************************************

//===========================================================================
// Trigger: Tournament
//===========================================================================
//TESH.scrollpos=0
//TESH.alwaysfold=0

// Trigger: Selling
//
// okay, right now, it's set to owned by blue.
// The unit can move, and has build still.
// Make it so anyone can buy, just not owner.  Giga giga!
//===========================================================================
//TESH.scrollpos=0
//TESH.alwaysfold=0
function Trig_Selling_Actions takes nothing returns nothing
    local item checkItem= GetManipulatedItem()
    local integer x= 1
    local unit character= GetTriggerUnit()
    if ( GetItemName(checkItem) == "Tournament Registration Forms" ) then
        loop
            exitwhen x == 6
            if ( GetItemName(UnitItemInSlot(character , x)) == "Tournament Registration Forms" ) then
                call UnitDropItemTarget(character , checkItem , gg_unit_n00L_0150)
                endif
            set x = x + 1
        endloop
    endif
        
endfunction


function InitTrig_Selling takes nothing returns nothing
    local integer x= 0
    set gg_trg_Selling = CreateTrigger()
        loop
        exitwhen x == 11
        call TriggerRegisterPlayerUnitEvent(gg_trg_Selling , Player(x) , EVENT_PLAYER_UNIT_PICKUP_ITEM , null)
        set x = x + 1
    endloop
    call TriggerAddAction(gg_trg_Selling , function Trig_Selling_Actions)
endfunction

//===========================================================================
// Trigger: functions called from boss timers
//===========================================================================
//TESH.scrollpos=0
//TESH.alwaysfold=0
// Trigger: Initialization
//===========================================================================
//TESH.scrollpos=0
//TESH.alwaysfold=0
// scope Init begins
    
    function Init___timers takes nothing returns nothing
            local timer boss= NewTimer()
            local timer check= NewTimer()
            local timer tourneytimer= NewTimer()
            set gametime = NewTimer()
            call TimerStart(check , 5.0 , false , function Funcs_check_empty)
            call TimerStart(gametime , 100000 , false , null)
            call TimerStart(boss , 10.00 , false , function bosses_raditzNappa)
            call TimerStart(tourneytimer , 20.00 , false , function tournament_end)
    endfunction
    //===========================================================================
    function InitTrig_Initialization takes nothing returns nothing
        set gg_trg_Initialization = CreateTrigger()
        call TriggerAddAction(gg_trg_Initialization , function Init___timers)
    endfunction
// scope Init ends
// Trigger: game text commands
//===========================================================================
//TESH.scrollpos=0
//TESH.alwaysfold=0
function Trig_game_text_commands_Actions takes nothing returns nothing
    local string time= "-time"
    if ( GetEventPlayerChatString() == time ) then
            call DisplayTextToPlayer(GetTriggerPlayer() , 0.00 , 0.00 , I2S(R2I(TimerGetElapsed(gametime))) + " seconds have passed since the game has started.")
    endif
    set time = null
endfunction

//===========================================================================
function InitTrig_game_text_commands takes nothing returns nothing
    local string returntime= "-time"
    set gg_trg_game_text_commands = CreateTrigger()
        call TriggerRegisterPlayerChatEvent(gg_trg_game_text_commands , Player(0) , returntime , true)
        call TriggerRegisterPlayerChatEvent(gg_trg_game_text_commands , Player(1) , returntime , true)
        call TriggerRegisterPlayerChatEvent(gg_trg_game_text_commands , Player(2) , returntime , true)
        call TriggerRegisterPlayerChatEvent(gg_trg_game_text_commands , Player(3) , returntime , true)
        call TriggerRegisterPlayerChatEvent(gg_trg_game_text_commands , Player(4) , returntime , true)
        call TriggerRegisterPlayerChatEvent(gg_trg_game_text_commands , Player(5) , returntime , true)
        call TriggerRegisterPlayerChatEvent(gg_trg_game_text_commands , Player(6) , returntime , true)
        call TriggerRegisterPlayerChatEvent(gg_trg_game_text_commands , Player(7) , returntime , true)
        call TriggerRegisterPlayerChatEvent(gg_trg_game_text_commands , Player(8) , returntime , true)
        call TriggerRegisterPlayerChatEvent(gg_trg_game_text_commands , Player(9) , returntime , true)
        call TriggerRegisterPlayerChatEvent(gg_trg_game_text_commands , Player(10) , returntime , true)
        call TriggerRegisterPlayerChatEvent(gg_trg_game_text_commands , Player(11) , returntime , true)
    call TriggerAddAction(gg_trg_game_text_commands , function Trig_game_text_commands_Actions)
endfunction

//===========================================================================
// Trigger: TimerUtilsOld
//===========================================================================
//TESH.scrollpos=0
//TESH.alwaysfold=1

//===========================================================================
function InitCustomTriggers takes nothing returns nothing
    //Function not found: call InitTrig_Tournament()
    call InitTrig_Selling()
    //Function not found: call InitTrig_functions_called_from_boss_timers()
    call InitTrig_Initialization()
    call InitTrig_game_text_commands()
    //Function not found: call InitTrig_TimerUtilsOld()
endfunction

//===========================================================================
function RunInitializationTriggers takes nothing returns nothing
    call ConditionalTriggerExecute(gg_trg_Initialization)
endfunction

//***************************************************************************
//*
//*  Players
//*
//***************************************************************************

function InitCustomPlayerSlots takes nothing returns nothing

    // Player 0
    call SetPlayerStartLocation(Player(0) , 0)
    call ForcePlayerStartLocation(Player(0) , 0)
    call SetPlayerColor(Player(0) , ConvertPlayerColor(0))
    call SetPlayerRacePreference(Player(0) , RACE_PREF_HUMAN)
    call SetPlayerRaceSelectable(Player(0) , false)
    call SetPlayerController(Player(0) , MAP_CONTROL_USER)

    // Player 1
    call SetPlayerStartLocation(Player(1) , 1)
    call ForcePlayerStartLocation(Player(1) , 1)
    call SetPlayerColor(Player(1) , ConvertPlayerColor(1))
    call SetPlayerRacePreference(Player(1) , RACE_PREF_HUMAN)
    call SetPlayerRaceSelectable(Player(1) , false)
    call SetPlayerController(Player(1) , MAP_CONTROL_USER)

    // Player 2
    call SetPlayerStartLocation(Player(2) , 2)
    call ForcePlayerStartLocation(Player(2) , 2)
    call SetPlayerColor(Player(2) , ConvertPlayerColor(2))
    call SetPlayerRacePreference(Player(2) , RACE_PREF_HUMAN)
    call SetPlayerRaceSelectable(Player(2) , false)
    call SetPlayerController(Player(2) , MAP_CONTROL_USER)

    // Player 3
    call SetPlayerStartLocation(Player(3) , 3)
    call ForcePlayerStartLocation(Player(3) , 3)
    call SetPlayerColor(Player(3) , ConvertPlayerColor(3))
    call SetPlayerRacePreference(Player(3) , RACE_PREF_HUMAN)
    call SetPlayerRaceSelectable(Player(3) , false)
    call SetPlayerController(Player(3) , MAP_CONTROL_USER)

    // Player 4
    call SetPlayerStartLocation(Player(4) , 4)
    call ForcePlayerStartLocation(Player(4) , 4)
    call SetPlayerColor(Player(4) , ConvertPlayerColor(4))
    call SetPlayerRacePreference(Player(4) , RACE_PREF_UNDEAD)
    call SetPlayerRaceSelectable(Player(4) , false)
    call SetPlayerController(Player(4) , MAP_CONTROL_USER)

    // Player 5
    call SetPlayerStartLocation(Player(5) , 5)
    call ForcePlayerStartLocation(Player(5) , 5)
    call SetPlayerColor(Player(5) , ConvertPlayerColor(5))
    call SetPlayerRacePreference(Player(5) , RACE_PREF_HUMAN)
    call SetPlayerRaceSelectable(Player(5) , false)
    call SetPlayerController(Player(5) , MAP_CONTROL_USER)

    // Player 6
    call SetPlayerStartLocation(Player(6) , 6)
    call ForcePlayerStartLocation(Player(6) , 6)
    call SetPlayerColor(Player(6) , ConvertPlayerColor(6))
    call SetPlayerRacePreference(Player(6) , RACE_PREF_HUMAN)
    call SetPlayerRaceSelectable(Player(6) , false)
    call SetPlayerController(Player(6) , MAP_CONTROL_USER)

    // Player 7
    call SetPlayerStartLocation(Player(7) , 7)
    call ForcePlayerStartLocation(Player(7) , 7)
    call SetPlayerColor(Player(7) , ConvertPlayerColor(7))
    call SetPlayerRacePreference(Player(7) , RACE_PREF_UNDEAD)
    call SetPlayerRaceSelectable(Player(7) , false)
    call SetPlayerController(Player(7) , MAP_CONTROL_USER)

    // Player 8
    call SetPlayerStartLocation(Player(8) , 8)
    call ForcePlayerStartLocation(Player(8) , 8)
    call SetPlayerColor(Player(8) , ConvertPlayerColor(8))
    call SetPlayerRacePreference(Player(8) , RACE_PREF_UNDEAD)
    call SetPlayerRaceSelectable(Player(8) , false)
    call SetPlayerController(Player(8) , MAP_CONTROL_USER)

    // Player 9
    call SetPlayerStartLocation(Player(9) , 9)
    call ForcePlayerStartLocation(Player(9) , 9)
    call SetPlayerColor(Player(9) , ConvertPlayerColor(9))
    call SetPlayerRacePreference(Player(9) , RACE_PREF_UNDEAD)
    call SetPlayerRaceSelectable(Player(9) , false)
    call SetPlayerController(Player(9) , MAP_CONTROL_USER)

    // Player 10
    call SetPlayerStartLocation(Player(10) , 10)
    call ForcePlayerStartLocation(Player(10) , 10)
    call SetPlayerColor(Player(10) , ConvertPlayerColor(10))
    call SetPlayerRacePreference(Player(10) , RACE_PREF_UNDEAD)
    call SetPlayerRaceSelectable(Player(10) , false)
    call SetPlayerController(Player(10) , MAP_CONTROL_USER)

    // Player 11
    call SetPlayerStartLocation(Player(11) , 11)
    call ForcePlayerStartLocation(Player(11) , 11)
    call SetPlayerColor(Player(11) , ConvertPlayerColor(11))
    call SetPlayerRacePreference(Player(11) , RACE_PREF_UNDEAD)
    call SetPlayerRaceSelectable(Player(11) , false)
    call SetPlayerController(Player(11) , MAP_CONTROL_USER)

endfunction

function InitCustomTeams takes nothing returns nothing
    // Force: TRIGSTR_019
    call SetPlayerTeam(Player(0) , 0)
    call SetPlayerState(Player(0) , PLAYER_STATE_ALLIED_VICTORY , 1)
    call SetPlayerTeam(Player(1) , 0)
    call SetPlayerState(Player(1) , PLAYER_STATE_ALLIED_VICTORY , 1)
    call SetPlayerTeam(Player(2) , 0)
    call SetPlayerState(Player(2) , PLAYER_STATE_ALLIED_VICTORY , 1)
    call SetPlayerTeam(Player(3) , 0)
    call SetPlayerState(Player(3) , PLAYER_STATE_ALLIED_VICTORY , 1)
    call SetPlayerTeam(Player(5) , 0)
    call SetPlayerState(Player(5) , PLAYER_STATE_ALLIED_VICTORY , 1)
    call SetPlayerTeam(Player(6) , 0)
    call SetPlayerState(Player(6) , PLAYER_STATE_ALLIED_VICTORY , 1)

    //   Allied
    call SetPlayerAllianceStateAllyBJ(Player(0) , Player(1) , true)
    call SetPlayerAllianceStateAllyBJ(Player(0) , Player(2) , true)
    call SetPlayerAllianceStateAllyBJ(Player(0) , Player(3) , true)
    call SetPlayerAllianceStateAllyBJ(Player(0) , Player(5) , true)
    call SetPlayerAllianceStateAllyBJ(Player(0) , Player(6) , true)
    call SetPlayerAllianceStateAllyBJ(Player(1) , Player(0) , true)
    call SetPlayerAllianceStateAllyBJ(Player(1) , Player(2) , true)
    call SetPlayerAllianceStateAllyBJ(Player(1) , Player(3) , true)
    call SetPlayerAllianceStateAllyBJ(Player(1) , Player(5) , true)
    call SetPlayerAllianceStateAllyBJ(Player(1) , Player(6) , true)
    call SetPlayerAllianceStateAllyBJ(Player(2) , Player(0) , true)
    call SetPlayerAllianceStateAllyBJ(Player(2) , Player(1) , true)
    call SetPlayerAllianceStateAllyBJ(Player(2) , Player(3) , true)
    call SetPlayerAllianceStateAllyBJ(Player(2) , Player(5) , true)
    call SetPlayerAllianceStateAllyBJ(Player(2) , Player(6) , true)
    call SetPlayerAllianceStateAllyBJ(Player(3) , Player(0) , true)
    call SetPlayerAllianceStateAllyBJ(Player(3) , Player(1) , true)
    call SetPlayerAllianceStateAllyBJ(Player(3) , Player(2) , true)
    call SetPlayerAllianceStateAllyBJ(Player(3) , Player(5) , true)
    call SetPlayerAllianceStateAllyBJ(Player(3) , Player(6) , true)
    call SetPlayerAllianceStateAllyBJ(Player(5) , Player(0) , true)
    call SetPlayerAllianceStateAllyBJ(Player(5) , Player(1) , true)
    call SetPlayerAllianceStateAllyBJ(Player(5) , Player(2) , true)
    call SetPlayerAllianceStateAllyBJ(Player(5) , Player(3) , true)
    call SetPlayerAllianceStateAllyBJ(Player(5) , Player(6) , true)
    call SetPlayerAllianceStateAllyBJ(Player(6) , Player(0) , true)
    call SetPlayerAllianceStateAllyBJ(Player(6) , Player(1) , true)
    call SetPlayerAllianceStateAllyBJ(Player(6) , Player(2) , true)
    call SetPlayerAllianceStateAllyBJ(Player(6) , Player(3) , true)
    call SetPlayerAllianceStateAllyBJ(Player(6) , Player(5) , true)

    //   Shared Vision
    call SetPlayerAllianceStateVisionBJ(Player(0) , Player(1) , true)
    call SetPlayerAllianceStateVisionBJ(Player(0) , Player(2) , true)
    call SetPlayerAllianceStateVisionBJ(Player(0) , Player(3) , true)
    call SetPlayerAllianceStateVisionBJ(Player(0) , Player(5) , true)
    call SetPlayerAllianceStateVisionBJ(Player(0) , Player(6) , true)
    call SetPlayerAllianceStateVisionBJ(Player(1) , Player(0) , true)
    call SetPlayerAllianceStateVisionBJ(Player(1) , Player(2) , true)
    call SetPlayerAllianceStateVisionBJ(Player(1) , Player(3) , true)
    call SetPlayerAllianceStateVisionBJ(Player(1) , Player(5) , true)
    call SetPlayerAllianceStateVisionBJ(Player(1) , Player(6) , true)
    call SetPlayerAllianceStateVisionBJ(Player(2) , Player(0) , true)
    call SetPlayerAllianceStateVisionBJ(Player(2) , Player(1) , true)
    call SetPlayerAllianceStateVisionBJ(Player(2) , Player(3) , true)
    call SetPlayerAllianceStateVisionBJ(Player(2) , Player(5) , true)
    call SetPlayerAllianceStateVisionBJ(Player(2) , Player(6) , true)
    call SetPlayerAllianceStateVisionBJ(Player(3) , Player(0) , true)
    call SetPlayerAllianceStateVisionBJ(Player(3) , Player(1) , true)
    call SetPlayerAllianceStateVisionBJ(Player(3) , Player(2) , true)
    call SetPlayerAllianceStateVisionBJ(Player(3) , Player(5) , true)
    call SetPlayerAllianceStateVisionBJ(Player(3) , Player(6) , true)
    call SetPlayerAllianceStateVisionBJ(Player(5) , Player(0) , true)
    call SetPlayerAllianceStateVisionBJ(Player(5) , Player(1) , true)
    call SetPlayerAllianceStateVisionBJ(Player(5) , Player(2) , true)
    call SetPlayerAllianceStateVisionBJ(Player(5) , Player(3) , true)
    call SetPlayerAllianceStateVisionBJ(Player(5) , Player(6) , true)
    call SetPlayerAllianceStateVisionBJ(Player(6) , Player(0) , true)
    call SetPlayerAllianceStateVisionBJ(Player(6) , Player(1) , true)
    call SetPlayerAllianceStateVisionBJ(Player(6) , Player(2) , true)
    call SetPlayerAllianceStateVisionBJ(Player(6) , Player(3) , true)
    call SetPlayerAllianceStateVisionBJ(Player(6) , Player(5) , true)

    // Force: TRIGSTR_020
    call SetPlayerTeam(Player(4) , 1)
    call SetPlayerState(Player(4) , PLAYER_STATE_ALLIED_VICTORY , 1)
    call SetPlayerTeam(Player(7) , 1)
    call SetPlayerState(Player(7) , PLAYER_STATE_ALLIED_VICTORY , 1)
    call SetPlayerTeam(Player(8) , 1)
    call SetPlayerState(Player(8) , PLAYER_STATE_ALLIED_VICTORY , 1)
    call SetPlayerTeam(Player(9) , 1)
    call SetPlayerState(Player(9) , PLAYER_STATE_ALLIED_VICTORY , 1)
    call SetPlayerTeam(Player(10) , 1)
    call SetPlayerState(Player(10) , PLAYER_STATE_ALLIED_VICTORY , 1)
    call SetPlayerTeam(Player(11) , 1)
    call SetPlayerState(Player(11) , PLAYER_STATE_ALLIED_VICTORY , 1)

    //   Allied
    call SetPlayerAllianceStateAllyBJ(Player(4) , Player(7) , true)
    call SetPlayerAllianceStateAllyBJ(Player(4) , Player(8) , true)
    call SetPlayerAllianceStateAllyBJ(Player(4) , Player(9) , true)
    call SetPlayerAllianceStateAllyBJ(Player(4) , Player(10) , true)
    call SetPlayerAllianceStateAllyBJ(Player(4) , Player(11) , true)
    call SetPlayerAllianceStateAllyBJ(Player(7) , Player(4) , true)
    call SetPlayerAllianceStateAllyBJ(Player(7) , Player(8) , true)
    call SetPlayerAllianceStateAllyBJ(Player(7) , Player(9) , true)
    call SetPlayerAllianceStateAllyBJ(Player(7) , Player(10) , true)
    call SetPlayerAllianceStateAllyBJ(Player(7) , Player(11) , true)
    call SetPlayerAllianceStateAllyBJ(Player(8) , Player(4) , true)
    call SetPlayerAllianceStateAllyBJ(Player(8) , Player(7) , true)
    call SetPlayerAllianceStateAllyBJ(Player(8) , Player(9) , true)
    call SetPlayerAllianceStateAllyBJ(Player(8) , Player(10) , true)
    call SetPlayerAllianceStateAllyBJ(Player(8) , Player(11) , true)
    call SetPlayerAllianceStateAllyBJ(Player(9) , Player(4) , true)
    call SetPlayerAllianceStateAllyBJ(Player(9) , Player(7) , true)
    call SetPlayerAllianceStateAllyBJ(Player(9) , Player(8) , true)
    call SetPlayerAllianceStateAllyBJ(Player(9) , Player(10) , true)
    call SetPlayerAllianceStateAllyBJ(Player(9) , Player(11) , true)
    call SetPlayerAllianceStateAllyBJ(Player(10) , Player(4) , true)
    call SetPlayerAllianceStateAllyBJ(Player(10) , Player(7) , true)
    call SetPlayerAllianceStateAllyBJ(Player(10) , Player(8) , true)
    call SetPlayerAllianceStateAllyBJ(Player(10) , Player(9) , true)
    call SetPlayerAllianceStateAllyBJ(Player(10) , Player(11) , true)
    call SetPlayerAllianceStateAllyBJ(Player(11) , Player(4) , true)
    call SetPlayerAllianceStateAllyBJ(Player(11) , Player(7) , true)
    call SetPlayerAllianceStateAllyBJ(Player(11) , Player(8) , true)
    call SetPlayerAllianceStateAllyBJ(Player(11) , Player(9) , true)
    call SetPlayerAllianceStateAllyBJ(Player(11) , Player(10) , true)

    //   Shared Vision
    call SetPlayerAllianceStateVisionBJ(Player(4) , Player(7) , true)
    call SetPlayerAllianceStateVisionBJ(Player(4) , Player(8) , true)
    call SetPlayerAllianceStateVisionBJ(Player(4) , Player(9) , true)
    call SetPlayerAllianceStateVisionBJ(Player(4) , Player(10) , true)
    call SetPlayerAllianceStateVisionBJ(Player(4) , Player(11) , true)
    call SetPlayerAllianceStateVisionBJ(Player(7) , Player(4) , true)
    call SetPlayerAllianceStateVisionBJ(Player(7) , Player(8) , true)
    call SetPlayerAllianceStateVisionBJ(Player(7) , Player(9) , true)
    call SetPlayerAllianceStateVisionBJ(Player(7) , Player(10) , true)
    call SetPlayerAllianceStateVisionBJ(Player(7) , Player(11) , true)
    call SetPlayerAllianceStateVisionBJ(Player(8) , Player(4) , true)
    call SetPlayerAllianceStateVisionBJ(Player(8) , Player(7) , true)
    call SetPlayerAllianceStateVisionBJ(Player(8) , Player(9) , true)
    call SetPlayerAllianceStateVisionBJ(Player(8) , Player(10) , true)
    call SetPlayerAllianceStateVisionBJ(Player(8) , Player(11) , true)
    call SetPlayerAllianceStateVisionBJ(Player(9) , Player(4) , true)
    call SetPlayerAllianceStateVisionBJ(Player(9) , Player(7) , true)
    call SetPlayerAllianceStateVisionBJ(Player(9) , Player(8) , true)
    call SetPlayerAllianceStateVisionBJ(Player(9) , Player(10) , true)
    call SetPlayerAllianceStateVisionBJ(Player(9) , Player(11) , true)
    call SetPlayerAllianceStateVisionBJ(Player(10) , Player(4) , true)
    call SetPlayerAllianceStateVisionBJ(Player(10) , Player(7) , true)
    call SetPlayerAllianceStateVisionBJ(Player(10) , Player(8) , true)
    call SetPlayerAllianceStateVisionBJ(Player(10) , Player(9) , true)
    call SetPlayerAllianceStateVisionBJ(Player(10) , Player(11) , true)
    call SetPlayerAllianceStateVisionBJ(Player(11) , Player(4) , true)
    call SetPlayerAllianceStateVisionBJ(Player(11) , Player(7) , true)
    call SetPlayerAllianceStateVisionBJ(Player(11) , Player(8) , true)
    call SetPlayerAllianceStateVisionBJ(Player(11) , Player(9) , true)
    call SetPlayerAllianceStateVisionBJ(Player(11) , Player(10) , true)

endfunction

function InitAllyPriorities takes nothing returns nothing

    call SetStartLocPrioCount(1 , 1)
    call SetStartLocPrio(1 , 0 , 3 , MAP_LOC_PRIO_HIGH)

    call SetStartLocPrioCount(2 , 1)
    call SetStartLocPrio(2 , 0 , 6 , MAP_LOC_PRIO_HIGH)

    call SetStartLocPrioCount(3 , 1)
    call SetStartLocPrio(3 , 0 , 1 , MAP_LOC_PRIO_HIGH)

    call SetStartLocPrioCount(4 , 2)
    call SetStartLocPrio(4 , 0 , 5 , MAP_LOC_PRIO_LOW)
    call SetStartLocPrio(4 , 1 , 7 , MAP_LOC_PRIO_HIGH)

    call SetStartLocPrioCount(5 , 3)
    call SetStartLocPrio(5 , 0 , 2 , MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(5 , 1 , 4 , MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(5 , 2 , 6 , MAP_LOC_PRIO_HIGH)

    call SetStartLocPrioCount(6 , 1)
    call SetStartLocPrio(6 , 0 , 2 , MAP_LOC_PRIO_HIGH)

    call SetStartLocPrioCount(7 , 3)
    call SetStartLocPrio(7 , 0 , 4 , MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(7 , 1 , 8 , MAP_LOC_PRIO_LOW)
    call SetStartLocPrio(7 , 2 , 9 , MAP_LOC_PRIO_HIGH)

    call SetStartLocPrioCount(8 , 5)
    call SetStartLocPrio(8 , 0 , 4 , MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(8 , 1 , 5 , MAP_LOC_PRIO_LOW)
    call SetStartLocPrio(8 , 2 , 7 , MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(8 , 3 , 9 , MAP_LOC_PRIO_LOW)
    call SetStartLocPrio(8 , 4 , 10 , MAP_LOC_PRIO_LOW)

    call SetStartLocPrioCount(9 , 1)
    call SetStartLocPrio(9 , 0 , 7 , MAP_LOC_PRIO_HIGH)

    call SetStartLocPrioCount(10 , 2)
    call SetStartLocPrio(10 , 0 , 0 , MAP_LOC_PRIO_LOW)
    call SetStartLocPrio(10 , 1 , 11 , MAP_LOC_PRIO_HIGH)

    call SetStartLocPrioCount(11 , 2)
    call SetStartLocPrio(11 , 0 , 0 , MAP_LOC_PRIO_HIGH)
    call SetStartLocPrio(11 , 1 , 10 , MAP_LOC_PRIO_HIGH)
endfunction

//***************************************************************************
//*
//*  Main Initialization
//*
//***************************************************************************

//===========================================================================
function main takes nothing returns nothing
    call SetCameraBounds(- 15616.0 + GetCameraMargin(CAMERA_MARGIN_LEFT) , - 15872.0 + GetCameraMargin(CAMERA_MARGIN_BOTTOM) , 15616.0 - GetCameraMargin(CAMERA_MARGIN_RIGHT) , 15360.0 - GetCameraMargin(CAMERA_MARGIN_TOP) , - 15616.0 + GetCameraMargin(CAMERA_MARGIN_LEFT) , 15360.0 - GetCameraMargin(CAMERA_MARGIN_TOP) , 15616.0 - GetCameraMargin(CAMERA_MARGIN_RIGHT) , - 15872.0 + GetCameraMargin(CAMERA_MARGIN_BOTTOM))
    call SetDayNightModels("Environment\\DNC\\DNCLordaeron\\DNCLordaeronTerrain\\DNCLordaeronTerrain.mdl" , "Environment\\DNC\\DNCLordaeron\\DNCLordaeronUnit\\DNCLordaeronUnit.mdl")
    call NewSoundEnvironment("Default")
    call SetAmbientDaySound("CityScapeDay")
    call SetAmbientNightSound("CityScapeNight")
    call SetMapMusic("Music" , true , 0)
    call CreateRegions()
    call CreateAllUnits()
    call InitBlizzard()

call ExecuteFunc("jasshelper__initstructs95641062")
call ExecuteFunc("TimerUtils___redInit")

    call InitGlobals()
    call InitCustomTriggers()
    call RunInitializationTriggers()

endfunction

//***************************************************************************
//*
//*  Map Configuration
//*
//***************************************************************************

function config takes nothing returns nothing
    call SetMapName("TRIGSTR_003")
    call SetMapDescription("")
    call SetPlayers(12)
    call SetTeams(12)
    call SetGamePlacement(MAP_PLACEMENT_TEAMS_TOGETHER)

    call DefineStartLocation(0 , 14976.0 , 8512.0)
    call DefineStartLocation(1 , 13888.0 , - 11904.0)
    call DefineStartLocation(2 , - 3136.0 , - 15616.0)
    call DefineStartLocation(3 , - 12096.0 , - 15040.0)
    call DefineStartLocation(4 , 13440.0 , - 2048.0)
    call DefineStartLocation(5 , - 512.0 , 15040.0)
    call DefineStartLocation(6 , - 8192.0 , - 15104.0)
    call DefineStartLocation(7 , 4736.0 , 14528.0)
    call DefineStartLocation(8 , 7680.0 , 8896.0)
    call DefineStartLocation(9 , - 128.0 , 9792.0)
    call DefineStartLocation(10 , - 14272.0 , 6592.0)
    call DefineStartLocation(11 , - 14272.0 , 10624.0)

    // Player setup
    call InitCustomPlayerSlots()
    call InitCustomTeams()
    call InitAllyPriorities()
endfunction




//Struct method generated initializers/callers:
function sa___prototype6_Funcs___Enum takes nothing returns boolean

        local unit character= GetFilterUnit()
        local string name= GetUnitName(character)
        call PingMinimap(GetUnitX(character) , GetUnitY(character) , 2.00)
        call DisplayTextToAll("The owner of " + name + " has left the game.  His idle character has been pinged, and " + name + " will drop his items in 120 seconds, and die.")
        call TriggerSleepAction(120.00)
        call KillUnit(character)
        set character = null
        set name = null
    return true
endfunction

//Functions for BigArrays:

function jasshelper__initstructs95641062 takes nothing returns nothing
    set st___prototype6[1]=CreateTrigger()
    call TriggerAddAction(st___prototype6[1],function sa___prototype6_Funcs___Enum)
    call TriggerAddCondition(st___prototype6[1],Condition(function sa___prototype6_Funcs___Enum))

endfunction

