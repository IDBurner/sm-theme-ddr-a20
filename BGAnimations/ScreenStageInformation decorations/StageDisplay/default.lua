local sStage = GAMESTATE:GetCurrentStage();
local tRemap = {
	Stage_1st		= 1,
	Stage_2nd		= 2,
	Stage_3rd		= 3,
	Stage_4th		= 4,
	Stage_5th		= 5,
	Stage_6th		= 6,
};

if tRemap[sStage] == PREFSMAN:GetPreference("SongsPerPlay") then
	sStage = "Stage_Final";
else
	sStage = sStage;
end;
----------------------------------------------------------------------------
return Def.ActorFrame {
	Def.Sprite{
	InitCommand=function(self)
		self:x(SCREEN_CENTER_X):y(SCREEN_CENTER_Y+10):zoom(1)
			if version == "A20_" then
				self:blend(('BlendMode_Add'));
			end;
	end;
	OnCommand=function(self)	
	self:Load(THEME:GetPathB("","_blue doors/scene_choice_stage_bg"));
	self:diffusealpha(1);
	self:zoomx(1);
	self:zoomy(1);
	self:linear(0.1);
	self:diffusealpha(1);
	self:zoomx(1.2);
	self:zoomy(1.2);
	self:linear(0.1);
	self:diffusealpha(1);
	self:zoomx(1.1);
	self:zoomy(1.1);
	self:sleep(0.3);
	self:sleep(0.1);
	self:linear(0.1);
	self:zoomx(1);
	self:zoomy(1);
	self:sleep(0.85);
	self:linear(0.04);
	self:diffusealpha(0);
	self:zoomx(0.8*1.2);
	self:zoomy(0);
	end;
	};
	Def.Sprite{
	InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+5;zoom,0.7);
	OnCommand=function(self)
	self:Load(THEME:GetPathB("ScreenStageInformation", "decorations/StageDisplay/"..ddrgame.."Stage " .. ToEnumShortString(sStage) ));
	self:diffusealpha(1):linear(0.1):diffusealpha(1)
	:zoomx(1):zoomy(1.1):linear(0.1)
	:zoomx(1.1):zoomy(1):linear(0.15)
	:zoomx(0.95):zoomy(1):sleep(0.3):linear(0.1)
	:zoomx(0.73):zoomy(0.7)
	:sleep(0.8):linear(0.04):diffusealpha(0.2):zoomx(1.8*2):zoomy(0);
	end;
	};
	Def.Sprite{
	InitCommand=cmd(x,SCREEN_CENTER_X-0;y,SCREEN_CENTER_Y;zoom,0.9;blend,Blend.Add);
	OnCommand=function(self)
	self:Load(THEME:GetPathB("ScreenStageInformation", "decorations/StageDisplay/"..ddrgame.."Stage " .. ToEnumShortString(sStage) ));
	self:diffusealpha(0.5):zoom(1.5):linear(0.1):diffusealpha(0.5)
	:zoomx(1):zoomy(1.1):linear(0.15)
	:zoomx(1.5):zoomy(1.8):linear(0.15)
	:zoomx(2):zoomy(2.1):diffusealpha(0);
	end;
	};
	
};