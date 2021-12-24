function SleepGo()
		if GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "AI"											then return 0
	elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "NEPHILIM DELTA"								then return 0
	elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "SILVER☆DREAM"								then return 0
	elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "恋する☆宇宙戦争っ!!"								then return 0
	elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Over The “Period”"							then return 0
	elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "最小三倍完全数"								then return 0
	elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "PANIC HOLIC"								then return 0
	elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Valkyrie dimension"							then return 0
	elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Second Heaven"								then return 0
	elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "MAX 360"									then return 0
	elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "SABER WING"									then return 0
	elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Triple Journey -TAG EDITION-"				then return 0
	elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Tohoku EVOLVED"								then return 0
	elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "TRIP MACHINE EVOLUTION"						then return 0
	elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Pluto Relinquish"							then return 0
	elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "MAX.(period)"								then return 0
	elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "DEAD END (\"GROOVE RADAR\" Special)"		then return 0
	elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "春竜 ～Haryu～"								then return 0.2
	else 																										 return 0.7
	end;
end;

return Def.ActorFrame {
	LoadActor( "scene_choice_stage_bg_yellow_here" )..{
		InitCommand=function(self)
			self:x(SCREEN_CENTER_X):y(SCREEN_CENTER_Y+10):zoomx(1.5*1.22):zoomy(1.5)
			if ddrgame=="gold_" then
				self:blend(('BlendMode_Add'));
			end;
		end;
		OnCommand=function(self)
			self:diffusealpha(0):zoom(1):linear(0.1):diffusealpha(1):zoom(1.25):linear(0.1):diffusealpha(1):zoom(1):sleep(SleepGo()+0.35):linear(0.1):zoomy(0):diffusealpha(0);
		end;
	};
	--Right
	LoadActor(ddrgame.."scene_choice_here_we_go" )..{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+5);
		OnCommand=function(self)
			self:x(SCREEN_CENTER_X-0):zoom(0)
			self:linear(0.15):diffusealpha(1):zoomx(1.3):zoomy(1.9)
			self:linear(0.15):diffusealpha(1):zoomx(1.3):zoomy(1.3):sleep(0.1)
			self:linear(0.15):zoom(1.18):sleep(SleepGo())
			self:linear(0.1):diffusealpha(1):zoomy(0);
		end;
	};
	--Left
	LoadActor(ddrgame.."scene_choice_here_we_go" )..{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+5);
		OnCommand=cmd(diffusealpha,0;blend,Blend.Add;zoom,2.6;linear,0.15;diffusealpha,0.5;zoomx,1.3;zoomy,1.9;x,SCREEN_CENTER_X-0;linear,0.15;diffusealpha,0.5;zoomx,2.6;zoomy,2.5;linear,0.15;diffusealpha,0;zoomx,3;zoomy,2.9);
	};
};