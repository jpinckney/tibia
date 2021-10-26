local spell = Spell("instant")

function spell.onCastSpell(creature, variant)
	return creature:conjureItem(0, 2545, 10, CONST_ME_MAGIC_BLUE)
end

spell:name("Conjure Poisoned Arrow")
spell:words("exevo con pox")
spell:group("support")
spell:vocation("paladin;true", "royal paladin;true")
spell:id(48)
spell:cooldown(2 * 1000)
spell:groupCooldown(2 * 1000)
spell:level(16)
spell:mana(180)
spell:soul(15)
spell:isSelfTarget(true)
spell:isAggressive(false)
spell:needLearn(false)
spell:register()
