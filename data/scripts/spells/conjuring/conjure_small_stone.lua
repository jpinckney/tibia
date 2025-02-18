local spell = Spell("instant")

function spell.onCastSpell(creature, variant)
	return creature:conjureItem(0, 1294, 3, CONST_ME_MAGIC_BLUE)
end

spell:group("support")
spell:name("Conjure Small Stone")
spell:words("exevo grit")
spell:cooldown(2 * 1000)
spell:groupCooldown(2 * 1000)
spell:level(30)
spell:mana(75)
spell:soul(4)
spell:vocation("paladin;true", "royal paladin;true")
spell:needLearn(false)
spell:register()