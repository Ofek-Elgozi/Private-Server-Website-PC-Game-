local combat = Combat()
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_MAGIC_BLUE)
combat:setParameter(COMBAT_PARAM_AGGRESSIVE, false)

local condition = Condition(CONDITION_LIGHT)
condition:setParameter(CONDITION_PARAM_LIGHT_LEVEL, 28)
condition:setParameter(CONDITION_PARAM_LIGHT_COLOR, 215)
condition:setParameter(CONDITION_PARAM_TICKS, (60000 * 600 + 10) * 1000)
combat:setCondition(condition)

function onCastSpell(creature, variant)
	return combat:execute(creature, variant)
end
