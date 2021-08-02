local t = Def.ActorFrame{};
local center = PREFSMAN:GetPreference('Center1Player');
local style = GAMESTATE:GetCurrentStyle():GetStyleType();
local st = GAMESTATE:GetCurrentStyle():GetStepsType();

if center then
	if style == "StyleType_TwoPlayersTwoSides" or GAMESTATE:GetPlayMode() == 'PlayMode_Rave' then 
		for _,pn in pairs(GAMESTATE:GetEnabledPlayers()) do
			t[#t+1] = Def.ActorFrame{
				Def.Sprite{
					Texture = "dance_filter0000_filter.png",
						InitCommand=function(s)
							s:x(pn == PLAYER_1 and SCREEN_CENTER_X-360 or SCREEN_CENTER_X+360):y(SCREEN_CENTER_Y)
						if GetUserPref("OptionRowScreenFilter")=='OFF' then
							s:diffusealpha(0)
						elseif GetUserPref("OptionRowScreenFilter")=='DARK' then
							s:diffusealpha(0.3)
						elseif GetUserPref("OptionRowScreenFilter")=='DARKER' then
							s:diffusealpha(0.6)
						elseif GetUserPref("OptionRowScreenFilter")=='DARKEST' then
							s:diffusealpha(0.9)
						end;				
					end,
				};
			};
		end;
	elseif st == 'StepsType_Dance_Double' then	
		t[#t+1] = Def.ActorFrame{
			Def.Sprite{
				Texture = "dance_filter0000_filter_double.png",
					InitCommand=function(s) s:Center() 
						if GetUserPref("OptionRowScreenFilter")=='OFF' then
							s:diffusealpha(0)
						elseif GetUserPref("OptionRowScreenFilter")=='DARK' then
							s:diffusealpha(0.3)
						elseif GetUserPref("OptionRowScreenFilter")=='DARKER' then
							s:diffusealpha(0.6)
						elseif GetUserPref("OptionRowScreenFilter")=='DARKEST' then
							s:diffusealpha(0.9)
						end;
					end,
			};
		};
	else
		t[#t+1] = Def.ActorFrame{
			Def.Sprite{
				Texture = "dance_filter0000_filter.png",
					InitCommand=function(s)
						s:Center()
						if GetUserPref("OptionRowScreenFilter")=='OFF' then
							s:diffusealpha(0)
						elseif GetUserPref("OptionRowScreenFilter")=='DARK' then
							s:diffusealpha(0.3)
						elseif GetUserPref("OptionRowScreenFilter")=='DARKER' then
							s:diffusealpha(0.6)
						elseif GetUserPref("OptionRowScreenFilter")=='DARKEST' then
							s:diffusealpha(0.9)
						end;				
					end,
			};
		};
	end;
else
for _,pn in pairs(GAMESTATE:GetEnabledPlayers()) do
			t[#t+1] = Def.ActorFrame{
				Def.Sprite{
					Texture = "dance_filter0000_filter.png",
						InitCommand=function(s)
							s:x(pn == PLAYER_1 and SCREEN_CENTER_X-360 or SCREEN_CENTER_X+360):y(SCREEN_CENTER_Y)
						if GetUserPref("OptionRowScreenFilter")=='OFF' then
							s:diffusealpha(0)
						elseif GetUserPref("OptionRowScreenFilter")=='DARK' then
							s:diffusealpha(0.3)
						elseif GetUserPref("OptionRowScreenFilter")=='DARKER' then
							s:diffusealpha(0.6)
						elseif GetUserPref("OptionRowScreenFilter")=='DARKEST' then
							s:diffusealpha(0.9)
						end;				
					end,
				};
			};
		end;
end;

return t;