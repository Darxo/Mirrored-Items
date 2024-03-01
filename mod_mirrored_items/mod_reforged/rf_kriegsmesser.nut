::mods_hookExactClass("items/weapons/rf_kriegsmesser", function(o) {
	local create = o.create;
	o.create = function()
	{
		create();
		this.m.FlipIconX = true;
		this.m.FlipIconLargeX = true;
	}
});

::mods_hookExactClass("items/weapons/named/named_weapon", function(o) {
	o.m.BaseWeaponScript <- null;

	o.getValuesForRandomize <- function()
	{
		if (this.m.BaseWeaponScript == null) return {};

		local baseWeapon = ::new(this.m.BaseWeaponScript);
		return {
			Condition = baseWeapon.m.Condition,
			ConditionMax = baseWeapon.m.ConditionMax,
			RegularDamage = baseWeapon.m.RegularDamage,
			RegularDamageMax = baseWeapon.m.RegularDamageMax,
			ArmorDamageMult = baseWeapon.m.ArmorDamageMult,
			ChanceToHitHead = baseWeapon.m.ChanceToHitHead,
			DirectDamageMult = baseWeapon.m.DirectDamageMult,
			DirectDamageAdd = baseWeapon.m.DirectDamageAdd,
			StaminaModifier = baseWeapon.m.StaminaModifier,
			ShieldDamage = baseWeapon.m.ShieldDamage,
			AdditionalAccuracy = baseWeapon.m.AdditionalAccuracy,
			FatigueOnSkillUse = baseWeapon.m.FatigueOnSkillUse,

			IsAoE = baseWeapon.m.IsAoE,
			SlotType = baseWeapon.m.SlotType,
			ItemType = this.m.ItemType | baseWeapon.m.ItemType,
			WeaponType = baseWeapon.m.WeaponType,
			BlockedSlotType = baseWeapon.m.BlockedSlotType,
			IsDoubleGrippable = baseWeapon.m.IsDoubleGrippable,
			IsAgainstShields = baseWeapon.m.IsAgainstShields,
			AddGenericSkill = baseWeapon.m.AddGenericSkill,
			ShowQuiver = baseWeapon.m.ShowQuiver,
			ShowArmamentIcon = baseWeapon.m.ShowArmamentIcon,
			ShieldDamage = baseWeapon.m.ShieldDamage,
			RangeMin = baseWeapon.m.RangeMin,
			RangeMax = baseWeapon.m.RangeMax,
			RangeIdeal = baseWeapon.m.RangeIdeal,

			// Reforged stuff -- should be removed when porting to MSU
			Reach = baseWeapon.m.Reach
		};
	}

	o.setValuesBeforeRandomize <- function( _values )
	{
		foreach (key, value in _values)
		{
			this.m[key] = value;
		}
	}

	local randomizeValues = o.randomizeValues;
	o.randomizeValues <- function()
	{
		this.setValuesBeforeRandomize(this.getValuesForRandomize());
		randomizeValues();
	}
});
