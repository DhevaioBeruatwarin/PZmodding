function MaxAllSkills()

	getPlayer():Say(getText("UI_CMRB_Message_ChangedLevel"))

	local xp = getPlayer():getXp()
	
	local pf = PerkFactory.PerkList
	local pfSize = PerkFactory.PerkList:size()	
	for i = pfSize-1, 0, -1 do 
		local obj = pf:get(i)
		local skill = obj:getType()
		
		getPlayer():level0(skill) 
		getPlayer():getXp():setXPToLevel(skill, 0) 
		for i = 1,10 do 
			getPlayer():LevelPerk(skill, false)
		end
	end
end