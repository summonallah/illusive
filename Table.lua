-- illusive; :: undetected(;)

getgenv().illusive = {

	['Engine'] = {
		['Loader'] = {

			Key = ''; 

			['Execution'] = {
				Enabled = true;      -- read-only usage
				Active = true;      -- read-only usage

				['Scheduler'] = {
					['Auto'] = {
						Start = { 
							Enabled = false; 
							Await = {'Game', 'Player', 'Character', 'Character/Humanoid'}; 
							Delay = 0.5; 
						};
						Load = { 
							Enabled = false; 
							On = {'Rejoin'}; 
							Delay = 0.5; 
						};
					};
				};

				['Places'] = { 
					Allowed = false; 
					AllowedPlaces = {}; 
					BlockedPlaces = {}; 
				};

				['Panic'] = { 
					Enabled = false; 
					Key = ''; 
					On = {'Error', 'Detection'}; 
					Log = true; 
				};
			};
		};
	};
	['Combat'] = {
		['Redirection'] = {
			['Bullet'] = {
				Enabled = false;
				['Properties'] = {
					['Scan'] = 'Auto'; -- Target;
					['MaxDistance'] = math.huge;
					['HitChance'] = {
						Enabled = true;
						Chance = 100; -- integer / string (100/100%)
						Method = '';
						Offset = { X = 0.03; Y = 0.02; };
						Factors = { 'distance'; };
					};
					Method = '';
					['Hit'] = {
						Bone = '';
						['Priority'] = {
							{'visibility', true, { Tolerance = 0.0; Fallback = ''; }};
							{'damage', false, { Scale = 1.0; }};
							['Nearest'] = {
								{'part', true, { Scale = 1.0; Region = ''; Target = ''; }};
								{'point', true, { Scale = 1.0; Region = ''; Target = ''; Mode = ''; }};
							};
						};
					};
				};
				['Prediction'] = {
					['Properties'] = {
						['Detection'] = {
							Air = { 
								Enabled = false; 
								Method = ''; 
								{ 
									['YThreshold'] = 0.1; 
									['Calculation'] = { Static = 0.89; Auto = true; };
								};
							};
						};
					};
					['Custom'] = {
						Type = '';
						Prediction = 0.187; -- or Vector3.new(0,(1.5*1), 0)
					};
					['Auto'] = {
						Enabled = true;
						Method = '';
					};
				};
			};
			['Camera'] = {
				Enabled = true;
				['Properties'] = {
					Method = '';
					Offset = { Enabled = true; X = 0.0; Y = 0.0; Z = 0.0; };
				};
				['Smoothness'] = {
					Pitch = { Enabled = true; Scale = 0.5; Easing = 'EaseInOut'; };
					Yaw = { Enabled = true; Scale = 0.5; Easing = 'EaseInOut'; };
				};
				['Prediction'] = {
					['Properties'] = {
						['Detection'] = {
							Air = { 
								Enabled = false; 
								Method = '';
								{ 
									['YThreshold'] = 0.1; 
									['Calculation'] = { Static = 0.89; Auto = true; };
								};
							};
						};
					};
					['Custom'] = {
						Type = '';
						Prediction = 0.187; -- or Vector3.new(0,(1.5*1), 0)
					};
					['Auto'] = {
						Enabled = true;
						Method = '';
					};
				};
			};
		};
	};
};
