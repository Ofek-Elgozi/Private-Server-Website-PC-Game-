local spells = {
	[1955] = "exevo gran mas holy",
}
function onUse(cid, item, frompos, itemEx, topos)
	if(spells[item.itemid]) then
		if(not(getPlayerLearnedInstantSpell(cid, spells[item.itemid]))) then
			playerLearnInstantSpell(cid, "exevo gran mas holy")
			doSendMagicEffect(getCreaturePosition(cid), CONST_ME_MAGIC_BLUE)
			doPlayerSendTextMessage(cid, 20, "You have successfully learnes " .. spells[item.itemid])
			doPlayerRemoveItem(cid, item.itemid, 1)
		else
			doPlayerSendCancel(cid, "You already know this spell.")
			doSendMagicEffect(getPlayerPosition(cid), CONST_ME_POFF)
		end
	end
	return true
end