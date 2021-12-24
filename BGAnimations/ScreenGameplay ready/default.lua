function SleepReady()
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
	elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "春竜 ～Haryu～"								then return 0.1
	elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "TYPHØN"										then return 0.6 
	else 																										 return 0.7
	end;
end;

return Def.ActorFrame {
	LoadActor( "scene_choice_stage_bg_ready_shadow" )..{
		InitCommand=function(self)
			self:x(SCREEN_CENTER_X):y(SCREEN_CENTER_Y+10):zoomy(0)
			if ddrgame=="gold_" then
				self:blend(('BlendMode_Add'));
			end;
		end;
		OnCommand=function(self)
			self:diffusealpha(0):zoom(0):linear(0.1):diffusealpha(1):zoom(1.25):linear(0.1):diffusealpha(1):zoom(1):sleep(SleepReady()+0.4):linear(0):diffusealpha(0):zoom(1.5*1.5);
		end;
	};
	--Right
	LoadActor(ddrgame.."scene_choice_ready" )..{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y);
		OnCommand=function(self)
			self:diffusealpha(1):zoom(0)
			self:linear(0.1):zoom(0.618):x(SCREEN_CENTER_X-0)
			self:linear(0.1):diffusealpha(1):zoomx(1.42):zoomy(1.6)
			self:linear(0.1):diffusealpha(1):zoomx(1.39):zoomy(1.25):sleep(0.1)
			self:linear(0.2):zoom(1.209):sleep(SleepReady())
			self:linear(0):diffusealpha(0):zoom(1.5*1.5);
		end;
	};
	--Left
	LoadActor(ddrgame.."scene_choice_ready" )..{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y);
		OnCommand=cmd(diffusealpha,0;zoom,2.4;linear,0.1;blend,Blend.Add;linear,0.1;diffusealpha,0.5;zoomx,1.42;zoomy,1.6;x,SCREEN_CENTER_X-0;linear,0.1;diffusealpha,0.5;zoomx,2.39;zoomy,2.25;linear,0.1;diffusealpha,0;zoomx,3.2;zoomy,3.1);
	};
};