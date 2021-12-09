local t = Def.ActorFrame{
	PlayerJoinedMessageCommand=function(self,param)
		SCREENMAN:GetTopScreen():SetNextScreenName("ScreenSelectMusic"):StartTransitioningScreen("SM_GoToNextScreen")
  	end;
	loadfile(THEME:GetPathB("ScreenSelectMusic","decorations/InputHandler.lua"))();
	OffCommand=function(s)
		SOUND:PlayOnce(THEME:GetPathB("","_music_out"))
	end,
	StandardDecorationFromFileOptional("Footer","Footer");
	LoadActor(THEME:GetPathO("","_/alphaMembers"));
}

local Music = THEME:GetAbsolutePath("Sounds/ScreenSelectMusic music (loop).redir")
local file = RageFileUtil.CreateRageFile()

	
if version == "A20_" then
    file:Open(Music,2)
    file:Write("MenuMusic/selmus/A20 Selmus (loop).ogg")
    file:Close()
    file:destroy()
elseif version == "A20+_" then
	file:Open(Music,2)
    file:Write("MenuMusic/selmus/A20+ Selmus (loop).ogg")
    file:Close()
    file:destroy()
end;

return t;