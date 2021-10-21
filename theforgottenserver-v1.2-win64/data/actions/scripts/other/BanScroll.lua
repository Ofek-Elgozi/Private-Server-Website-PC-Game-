local newpos = {x=1015, y=646, z=10}
local time = 10--in second
function onUse(cid, item, fromPosition, target, toPosition, isHotkey)
    if getPlayerLevel(cid) < 8 then
        doCreatureSay(cid, "This Teleport scroll can only be use by level 8 or higher." ,TALKTYPE_ORANGE_1)
        return true
    end
local inFight = getCreatureCondition(cid, CONDITION_INFIGHT)

if not inFight then
doSendMagicEffect(getPlayerPosition(cid), 73)
doTeleportThing(cid,newpos)
doCreatureSay(cid, "Bye Bye!!" ,TALKTYPE_ORANGE_1)
doPlayerRemoveItem(cid, 7724, 1)

else
doPlayerSendTextMessage(cid,MESSAGE_INFO_DESCR,"You can't use the teleport scroll if you are PZ LOCKED!!")
end
return true
end