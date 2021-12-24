function SleepJacket()
		if GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "NEPHILIM DELTA"								then return 0.3
	elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "SILVER☆DREAM" 								then return 0.3
	elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "恋する☆宇宙戦争っ!!" 							then return 0.3
	elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Over The “Period”" 							then return 0.3
	elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "最小三倍完全数" 								then return 0.3
	elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "PANIC HOLIC" 								then return 0.3
	elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "MAX 360" 									then return 0.3
	elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Second Heaven" 								then return 0.3
	elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Valkyrie dimension" 						then return 0.3
	elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "MAX.(period)" 								then return 0.3
	elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "SABER WING" 								then return 0.3
	elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Triple Journey -TAG EDITION-"				then return 0.3
	elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Tohoku EVOLVED"								then return 0.03
	elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "TRIP MACHINE EVOLUTION"						then return 0.03
	elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "Pluto Relinquish"							then return 0.03
	elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "DEAD END (\"GROOVE RADAR\" Special)"		then return 0.03  
	elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "DAM DARIRAM (KCP MIX)"						then return 2.8  
	elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "春竜 ～Haryu～"								then return 1.1  
	elseif GAMESTATE:GetCurrentSong():GetDisplayFullTitle() == "TYPHØN"										then return 7.45  
	else																										 return 1
	end;
end;

return Def.ActorFrame {
 	InitCommand=cmd(CenterX;y,SCREEN_CENTER_Y+18);
	OnCommand=function(self) self:sleep(SleepJacket()):linear(0.06):zoom(1.5):diffusealpha(0) end;
	Def.Sprite {
		OnCommand=function(self)
			if GAMESTATE:GetCurrentSong() then
				if GAMESTATE:GetCurrentSong():HasJacket() then
					self:LoadBackground(GAMESTATE:GetCurrentSong():GetJacketPath());
					self:setsize(451,451);
				elseif GAMESTATE:GetCurrentSong():HasBackground() then
					self:LoadFromSongBackground(GAMESTATE:GetCurrentSong());
					self:setsize(451,451);
				elseif GAMESTATE:GetCurrentSong():HasBanner() then
					self:LoadFromSongBanner(GAMESTATE:GetCurrentSong());
					self:setsize(451,451);
				else
					self:Load(THEME:GetPathG("","Common fallback jacket"));
					self:setsize(451,451);
				end;
			else
				self:diffusealpha(0);	
			end;
		end
	};
};