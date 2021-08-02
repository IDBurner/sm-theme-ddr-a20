local t = Def.ActorFrame{};

local function setDiffBG1(self,param)
  local st = GAMESTATE:GetCurrentStyle():GetStepsType()
  if self.ParamSong then
    local steps = GAMESTATE:GetCurrentSteps(PLAYER_2)
    if steps then
      local sDiff = steps:GetDifficulty()
			 local diff = self.ParamSong:GetOneSteps( st, sDiff)
      local diffname = GAMESTATE:GetCurrentSteps(PLAYER_2):GetDifficulty()
      if diff then
  			self:diffuse(color("1,1,1,1"))
  		else
  			self:diffuse(color("1,1,1,0"))
  		end;
  	else
  		self:diffuse(color("1,1,1,0"))
  	end;
  end;
end;

local function setDiffBG2(self,param)
  local st = GAMESTATE:GetCurrentStyle():GetStepsType()
  if self.ParamSong then
    local steps = GAMESTATE:GetCurrentSteps(PLAYER_2)
    if steps then
      local sDiff = steps:GetDifficulty()
			 local diff = self.ParamSong:GetOneSteps( st, sDiff)
      local diffname = GAMESTATE:GetCurrentSteps(PLAYER_2):GetDifficulty()
      if diff then
  			self:diffuse(CustomDifficultyToColor(diffname));
  		else
  			self:diffuse(color("1,1,1,0"))
  		end;
  	else
  		self:diffuse(color("1,1,1,0"))
  	end;
  end;
end;

local function setDiff(self,param)
	local st = GAMESTATE:GetCurrentStyle():GetStepsType()
	if self.ParamSong then
		local steps = GAMESTATE:GetCurrentSteps(PLAYER_2)
		if steps then
			local sDiff = steps:GetDifficulty()
			local diff = self.ParamSong:GetOneSteps( st, sDiff)
			local diffname = GAMESTATE:GetCurrentSteps(PLAYER_2):GetDifficulty()
			if diff then
				if self:GetName() == diffname then
						self:settext( diff:GetMeter() )
						self:visible(true)
						self:zoom(2)
				else
					self:visible(false)
				end;
			else
				self:settext("")
			end;
		else
			self:settext("")
		end;
	end;
end;



return Def.ActorFrame{
	Def.ActorFrame{
		InitCommand=cmd(draworder,0);
		LoadActor(ddrgame.."diffback")..{
			SetCommand=function(self,param)
				self.ParamSong = param.Song
				setDiffBG1(self)
			end;
			CurrentStepsP2ChangedMessageCommand=function(self) setDiffBG1(self) end;
			CurrentSongChangedMessageCommand=function(self) setDiffBG1(self) end;
		};
	};
	
	Def.ActorFrame{
		InitCommand=cmd(draworder,1);
		LoadActor("diffcolor")..{
			SetCommand=function(self,param)
				self.ParamSong = param.Song
				setDiffBG2(self)
			end;
			CurrentStepsP2ChangedMessageCommand=function(self) setDiffBG2(self) end;
			CurrentSongChangedMessageCommand=function(self) setDiffBG2(self) end;
		};
	};
	Def.ActorFrame{
		InitCommand=cmd(y,-10;zoomx,0.75;zoomy,0.65;draworder,2);
		Def.BitmapText{
			InitCommand=cmd(diffuse,color("#FFFFFF");strokecolor,color("#000000"));
			Font="_geo 95 20px";
			Name = "Difficulty_Beginner";
			SetCommand=function(self,param)
				self.ParamSong = param.Song
				setDiff(self)
			end;
			CurrentStepsP2ChangedMessageCommand=function(self) setDiff(self) end;
			CurrentSongChangedMessageCommand=function(self) setDiff(self) end;
		};
		Def.BitmapText{
			Font="_geo 95 20px";
			Name = "Difficulty_Easy";
			InitCommand=cmd(diffuse,color("#FFFFFF");strokecolor,color("#000000"));
			SetCommand=function(self,param)
				self.ParamSong = param.Song
				setDiff(self)
			end;
			CurrentStepsP2ChangedMessageCommand=function(self) setDiff(self) end;
			CurrentSongChangedMessageCommand=function(self) setDiff(self) end;
		};
		Def.BitmapText{
			Font="_geo 95 20px";
			Name = "Difficulty_Medium";
			InitCommand=cmd(diffuse,color("#FFFFFF");strokecolor,color("#000000"));
			SetCommand=function(self,param)
				self.ParamSong = param.Song
				setDiff(self)
			end;
			CurrentStepsP2ChangedMessageCommand=function(self) setDiff(self) end;
			CurrentSongChangedMessageCommand=function(self) setDiff(self) end;
		};
		Def.BitmapText{
			Font="_geo 95 20px";
			Name = "Difficulty_Hard";
			InitCommand=cmd(diffuse,color("#FFFFFF");strokecolor,color("#000000"));
			SetCommand=function(self,param)
				self.ParamSong = param.Song
				setDiff(self)
			end;
			CurrentStepsP2ChangedMessageCommand=function(self) setDiff(self) end;
			CurrentSongChangedMessageCommand=function(self) setDiff(self) end;
		};
		Def.BitmapText{
			Font="_geo 95 20px";
			Name = "Difficulty_Challenge";
			InitCommand=cmd(diffuse,color("#FFFFFF");strokecolor,color("#000000"));
			SetCommand=function(self,param)
				self.ParamSong = param.Song
				setDiff(self)
			end;
			CurrentStepsP2ChangedMessageCommand=function(self) setDiff(self) end;
			CurrentSongChangedMessageCommand=function(self) setDiff(self) end;
		};
		Def.BitmapText{
			Font="_geo 95 20px";
			Name = "Difficulty_Edit";
			InitCommand=cmd(diffuse,color("#FFFFFF");strokecolor,color("#000000"));
			SetCommand=function(self,param)
				self.ParamSong = param.Song
				setDiff(self)
			end;
			CurrentStepsP2ChangedMessageCommand=function(self) setDiff(self) end;
			CurrentSongChangedMessageCommand=function(self) setDiff(self) end;
		};
	};
};