--[[
ENGINE.LOADER
Key : string | default: '' | loader/executor key

ENGINE.EXECUTION
Enabled : boolean | default: true | read-only, active
Active : boolean | default: true | read-only, status

SCHEDULER.AUTO.START
Enabled : boolean | default: false | auto-start toggle
Await : table<string> | default: {'Game','Player','Character','Character/Humanoid'} | events to wait
Delay : number | default: 0.5 | wait after events

SCHEDULER.AUTO.LOAD
Enabled : boolean | default: false | auto-load toggle
On : table<string> | default: {'Rejoin'} | trigger events
Delay : number | default: 0.5 | delay before load

PLACES
Allowed : boolean | default: false | whitelist mode
AllowedPlaces : table<int> | default: {} | allowed ids
BlockedPlaces : table<int> | default: {} | blocked ids

PANIC
Enabled : boolean | default: false | panic toggle
Key : string | default: '' | panic key
On : table<string> | default: {'Error','Detection'} | trigger events
Log : boolean | default: true | log events

COMBAT.REDIRECTION.BULLET
Enabled : boolean | default: false | bullet redirect
Properties:
    Scan : string | default: 'Auto' | targeting mode
    MaxDistance : number | default: math.huge | max distance
    Method : string | default: '' | targeting method

    HitChance:
        Enabled : boolean | default: true | enable hit chance
        Chance : integer & string & string with suffix (100%) | default: 100 | hit %
        Method : string | default: '' | calculation method
        Offset : table<number> | default: {X=0.03,Y=0.02} | aim offset
        Factors : table<string> | default: {'distance'} | factors affecting hit

    Hit:
        Bone : string & table<string> & enum | default: '' | target bone(s)
        Priority:
            visibility : boolean | default: true | prioritize visibility
            Tolerance : number | default: 0.0 | tolerance value
            Fallback : string & enum | default: '' | fallback bone
            damage : boolean | default: false | prioritize damage
            Scale : number | default: 1.0 | priority scale
            Nearest:
                part : boolean | default: true | nearest part toggle
                point : boolean | default: true | nearest point toggle
                Region : string | default: '' | region filter
                Target : string | default: '' | target filter
                Mode : string | default: '' | mode type

    Prediction:
        Properties:
            Detection:
                Air:
                    Enabled : boolean | default: false | predict air targets
                    Method : string & table<array> & enum | default: '' | calculation method
                    YThreshold : number | default: 0.1 | vertical threshold
                    Calculation:
                        Static : number & string & Custom | default: 0.89 | static factor
                        Auto : boolean | default: true | auto toggle
        Custom:
            Type : string | default: '' | custom type
            Prediction : number & Vector3 | default: 0.187 | offset/prediction
        Auto:
            Enabled : boolean | default: true | auto-predict toggle
            Method : string & table<array> | default: '' | auto method

COMBAT.REDIRECTION.CAMERA
Enabled : boolean | default: true | camera redirect
Properties:
    Method : string | default: '' | adjustment method
    Offset:
        Enabled : boolean | default: true | offset toggle
        X : number | default: 0.0 | horizontal offset
        Y : number | default: 0.0 | vertical offset
        Z : number | default: 0.0 | depth offset
Smoothness:
    Pitch:
        Enabled : boolean | default: true | pitch smoothing
        Scale : number | default: 0.5 | pitch scale
        Easing : string | default: 'EaseInOut' | pitch easing
    Yaw:
        Enabled : boolean | default: true | yaw smoothing
        Scale : number | default: 0.5 | yaw scale
        Easing : string | default: 'EaseInOut' | yaw easing
Prediction:
    Properties:
        Detection:
            Air:
                Enabled : boolean | default: false | predict air targets
                Method : string & table<array> & enum | default: '' | calculation method
                YThreshold : number | default: 0.1 | vertical threshold
                Calculation:
                    Static : number & string & Custom | default: 0.89 | static factor
                    Auto : boolean | default: true | auto toggle
    Custom:
        Type : string | default: '' | custom type
        Prediction : number & Vector3 | default: 0.187 | offset/prediction
    Auto:
        Enabled : boolean | default: true | auto-predict toggle
        Method : string & table<array> | default: '' | auto method
--]]
