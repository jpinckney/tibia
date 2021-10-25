local spell = Spell("instant")

function spell.onCastSpell(creature, variant)
	return creature:conjureItem(0, 23529, 1, CONST_ME_MAGIC_BLUE)
end

spell:group("support")
spell:name("Conjure Glooth Spear")
spell:words("exevo lanza gran")
spell:cooldown(2 * 1000)
spell:groupCooldown(2 * 1000)
spell:level(60)
spell:mana(400)
spell:soul(30)
spell:vocation("paladin;true", "royal paladin;true")
spell:needLearn(false)
spell:register()