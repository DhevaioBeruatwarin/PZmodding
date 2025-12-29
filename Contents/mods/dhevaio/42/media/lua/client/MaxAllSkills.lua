local function MaxAllSkills(player)
    local xp = player:getXp()
    local pf = PerkFactory.PerkList

    for i = pf:size()-1, 0, -1 do
        local perk = pf:get(i):getType()

        player:level0(perk)
        xp:setXPToLevel(perk, 0)

        for j = 1, 10 do
            player:LevelPerk(perk, false)
        end
    end

    player:Say("All skills maxed")
end

Events.OnCreatePlayer.Add(function(playerIndex, player)
    MaxAllSkills(player)
end)
