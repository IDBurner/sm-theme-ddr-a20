return Def.Actor{
	OnCommand=function(self)
		ChangeGame()
		ChangeLanguage()
		ChangeVersion()
		ChangeLeague()
		local coins = GAMESTATE:GetCoins()
			if coins >= 1 then
				GAMESTATE:InsertCoin(-coins)
			end
	end;
}
