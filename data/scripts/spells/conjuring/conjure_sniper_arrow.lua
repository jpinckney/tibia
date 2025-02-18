local spell = Spell("instant")

function spell.onCastSpell(creature, variant)
	return creature:conjureItem(0, 7364, 10, CONST_ME_MAGIC_BLUE)
end

spell:name("Conjure Sniper Arrow")
spell:words("exevo con hur")
spell:group("support")
spell:vocation("paladin;true", "royal paladin;true")
spell:id(108)
spell:cooldown(2 * 1000)
spell:groupCooldown(2 * 1000)
spell:level(24)
spell:mana(300)
spell:soul(6)
spell:isSelfTarget(true)
spell:isAggressive(false)
spell:isPremium(true)
spell:needLearn(false)
spell:register()
