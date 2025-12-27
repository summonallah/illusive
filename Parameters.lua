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

VISUALS
Enabled : boolean | default: true | master visuals toggle

VISUALS.ESP
Enabled : boolean | default: true | esp master toggle

VISUALS.ESP.BOX
Enabled : boolean | default: true | box esp toggle
Properties:
    Style : string | default: 'Full' | box style
    Space : string | default: 'Both' | 2D / 3D / Both

Spaces.2D:
    Box.Objects:

        Main:
            Fill:
                Enabled : boolean | default: true | fill toggle
                Transparency : number | default: 0.5 | fill alpha
                Color : Color3 | default: Color3.fromRGB(255,107,354) | base fill color
                Gradient:
                    Enabled : boolean | default: true | gradient toggle
                    Blend : string | default: 'Normal' | blend mode
                    Layers : table<layer> | default: {} | gradient layers

            Radius : table<number> | default: {5,1} | corner radius
            Size : table | default: {{150,75},'Fixed'} | box size
            Rounded : boolean | default: true | rounded corners

        Outline:
            Enabled : boolean | default: true | outline toggle
            Thickness : number | default: 1.5 | outline thickness
            Glow:
                Enabled : boolean | default: true | glow toggle
                Color : Color3 | default: Color3.fromRGB(255,255,255) | glow color
                Intensity : number | default: 0.6 | glow strength
            Gradient : table | default: {} | outline gradient

        Inline:
            Enabled : boolean | default: true | inline toggle
            Color : Color3 | default: Color3.fromRGB(255,255,255) | inline color
            Thickness : number | default: 1 | inline thickness
            Transparency : number | default: 1.0 | inline alpha
            Gradient : table | default: {} | inline gradient
            Animation:
                Enabled : boolean | default: true | animation toggle
                Type : string | default: 'Rainbow' | animation type
                Speed : number | default: 1.0 | animation speed
                Intensity : number | default: 0.8 | animation strength

Spaces.3D:
    Box.Objects:

        Main:
            Fill.Enabled : boolean | default: false | 3D fill

        Outline:
            Enabled : boolean | default: true | outline toggle
            Thickness : number | default: 1.0 | outline thickness
            Color : Color3 | default: Color3.fromRGB(255,255,255) | outline color
--]]
