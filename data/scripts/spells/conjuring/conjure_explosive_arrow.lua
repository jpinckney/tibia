local spell = Spell("instant")

function spell.onCastSpell(creature, variant)
	return creature:conjureItem(0, 2546, 20, CONST_ME_MAGIC_BLUE)
end

spell:name("Conjure Explosive Arrow")
spell:words("exevo con flam")
spell:group("support")
spell:vocation("paladin;true", "royal paladin;true")
spell:id(49)
spell:cooldown(2 * 1000)
spell:groupCooldown(2 * 1000)
spell:level(27)
spell:mana(375)
spell:soul(6)
spell:isSelfTarget(true)
spell:isAggressive(false)
spell:needLearn(false)
spell:register()