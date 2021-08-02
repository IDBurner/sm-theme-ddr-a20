local t = Def.ActorFrame{};

--Hacky way to get the transition.
t[#t+1] = Def.ActorFrame {
	LoadActor(THEME:GetPathS("","Open")) .. {
		OnCommand=cmd(queuecommand,"Play");
		PlayCommand=cmd(play);
	};
};

t[#t+1] = Def.ActorFrame{
	InitCommand=cmd(CenterX);
	LoadActor(THEME:GetPathB("","_blue doors/backflashvert (doubleres)"))..{
		InitCommand=cmd(y,SCREEN_TOP+210;diffusealpha,0.75;zoom,-2;);
        OnCommand=cmd(addy,-99;sleep,0;linear,0.2;addy,-300;diffusealpha,1;sleep,0.1;linear,0.2;diffusealpha,0);
	};
	LoadActor(THEME:GetPathB("","_blue doors/backflashvert (doubleres)"))..{
		InitCommand=cmd(y,SCREEN_BOTTOM-210;diffusealpha,0.75;zoom,2;);
        OnCommand=cmd(addy,99;sleep,0;linear,0.2;addy,300;diffusealpha,1;sleep,0.1;linear,0.2;diffusealpha,0);
	};
}

	


--Those Weird Curved Things
t[#t+1] = Def.ActorFrame{
	InitCommand=cmd(CenterX);
	LoadActor(THEME:GetPathB("","_blue doors/"..ddrgame.."scsh_back02_blue"))..{
		InitCommand=cmd(x,-321;y,SCREEN_TOP+210;diffusealpha,1;zoomx,-1);
    OnCommand=cmd(addy,-99;sleep,0;linear,0.2;addy,-200;diffusealpha,1;sleep,0.1;linear,0.2;diffusealpha,0);
	};
	LoadActor(THEME:GetPathB("","_blue doors/"..ddrgame.."scsh_back02_blue"))..{
		InitCommand=cmd(x,321;y,SCREEN_TOP+210;diffusealpha,1;zoom,1);
    OnCommand=cmd(addy,-99;sleep,0;linear,0.2;addy,-200;diffusealpha,1;sleep,0.1;linear,0.2;diffusealpha,0);
	};
	
}
t[#t+1] = Def.ActorFrame{
	InitCommand=cmd(CenterX);
	LoadActor(THEME:GetPathB("","_blue doors/"..ddrgame.."scsh_back02_blue"))..{
		InitCommand=cmd(x,321;y,SCREEN_BOTTOM-210;diffusealpha,1;zoomy,-1);
    OnCommand=cmd(addy,99;sleep,0;linear,0.2;addy,200;diffusealpha,1;sleep,0.1;linear,0.2;diffusealpha,0);
	};
	LoadActor(THEME:GetPathB("","_blue doors/"..ddrgame.."scsh_back02_blue"))..{
		InitCommand=cmd(x,-321;y,SCREEN_BOTTOM-210;zoomy,-1;diffusealpha,1;zoom,-1);
    OnCommand=cmd(addy,99;sleep,0;linear,0.2;addy,200;diffusealpha,1;sleep,0.1;linear,0.2;diffusealpha,0);
	};
}

--Lines
t[#t+1] = Def.ActorFrame{
	InitCommand=cmd(CenterX);
	LoadActor(THEME:GetPathB("","_blue doors/"..ddrgame.."scsh_back02_light_blue"))..{
		InitCommand=cmd(x,-321;y,SCREEN_TOP+187;diffusealpha,0.7;zoomx,-1);
    OnCommand=cmd(addy,-99;sleep,0;linear,0.2;addy,-200;diffusealpha,0.7;sleep,0.1;linear,0.2;diffusealpha,0);
	};
	LoadActor(THEME:GetPathB("","_blue doors/"..ddrgame.."scsh_back02_light_blue"))..{
		InitCommand=cmd(x,321;y,SCREEN_TOP+187;diffusealpha,0.7;zoom,1);
    OnCommand=cmd(addy,-99;sleep,0;linear,0.2;addy,-200;diffusealpha,0.7;sleep,0.1;linear,0.2;diffusealpha,0);
	};
}

t[#t+1] = Def.ActorFrame{
	InitCommand=cmd(CenterX);
	LoadActor(THEME:GetPathB("","_blue doors/"..ddrgame.."scsh_back02_light_blue"))..{
		InitCommand=cmd(x,321;y,SCREEN_BOTTOM-187;diffusealpha,0.7;zoomy,-1);
    OnCommand=cmd(addy,99;sleep,0;linear,0.2;addy,200;diffusealpha,0.7;sleep,0.1;linear,0.2;diffusealpha,0);
	};
	LoadActor(THEME:GetPathB("","_blue doors/"..ddrgame.."scsh_back02_light_blue"))..{
		InitCommand=cmd(x,-321;y,SCREEN_BOTTOM-187;zoomy,-1;diffusealpha,0.7;zoom,-1);
    OnCommand=cmd(addy,99;sleep,0;linear,0.2;addy,200;diffusealpha,0.7;sleep,0.1;linear,0.2;diffusealpha,0);
	};
}

return t