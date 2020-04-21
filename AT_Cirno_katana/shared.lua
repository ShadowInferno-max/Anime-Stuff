SWEP.HoldType = "melee2"
SWEP.ViewModelFOV = 90
SWEP.ViewModelFlip = false
SWEP.ViewModel = "models/weapons/cstrike/c_knife_t.mdl"
SWEP.WorldModel = "models/weapons/w_knife_t.mdl"
SWEP.ShowViewModel = true
SWEP.ShowWorldModel = false
SWEP.UseHands = true
SWEP.ViewModelBoneMods = {
	["v_weapon.Knife_Handle"] = { scale = Vector(0.09, 0.09, 0.09), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) }
}

SWEP.VElements = {
["Espada"] = { type = "Model", model = "models/weapons/c_models/c_shogun_katana/c_shogun_katana.mdl", bone = "v_weapon.Knife_Handle", rel = "", pos = Vector(0.518, -0.519, 2.596), angle = Angle(0, 0, 0), size = Vector(0.5, 0.5, 0.5), color = Color(0, 255, 0, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
["Mango"] = { type = "Model", model = "models/hunter/tubes/circle2x2b.mdl", bone = "v_weapon.Knife_Handle", rel = "", pos = Vector(1, 3.635, -2.597), angle = Angle(80.649, 61.948, 132.078), size = Vector(0.172, 0.172, 0.82), color = Color(0, 255, 0, 255), surpresslightning = false, material = "coldfusions/sidewalk", skin = 0, bodygroup = {} },
["Filo"] = { type = "Model", model = "models/hunter/tubes/circle2x2c.mdl", bone = "v_weapon.Knife_Handle", rel = "", pos = Vector(0.518, -3.636, 27.531), angle = Angle(-3.507, 97.013, 92.337), size = Vector(0.5, 0.497, 0.432), color = Color(255, 0, 0, 255), surpresslightning = false, material = "coldfusions/stone", skin = 0, bodygroup = {} }
}

SWEP.WElements = {
["Espada"] = { type = "Model", model = "models/props_c17/TrapPropeller_Lever.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(1.557, 0.518, 2.596), angle = Angle(-174.157, 94.675, -97.014), size = Vector(0.885, 1.664, 1.664), color = Color(0, 255, 0, 255), surpresslightning = false, material = "models/debug/debugwhite", skin = 0, bodygroup = {} },
["Mango"] = { type = "Model", model = "models/hunter/tubes/circle2x2b.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(4.675, 0.518, -1.558), angle = Angle(-31.559, -180, -94.676), size = Vector(0.172, 0.172, 0.95), color = Color(0, 255, 0, 255), surpresslightning = false, material = "models/debug/debugwhite", skin = 0, bodygroup = {} },
["Filo"] = { type = "Model", model = "models/hunter/tubes/circle2x2c.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(-9.87, -2.597, -37.923), angle = Angle(162.468, 1.169, 85.324), size = Vector(0.237, 0.755, 0.237), color = Color(255, 0, 0, 255), surpresslightning = false, material = "models/debug/debugwhite", skin = 0, bodygroup = {} }
}

SWEP.Purpose = "To be Rambo."
SWEP.AutoSwitchTo = true
SWEP.Contact = ""
SWEP.Author = "Sedeluc"
SWEP.FiresUnderwater = true
SWEP.Spawnable = true
SWEP.AdminSpawnable = true
SWEP.SlotPos = 0
SWEP.Instructions = ""
SWEP.AutoSwitchFrom = false
SWEP.Base = "tfa_melee_base"
SWEP.Category = "Anime Stuff"
SWEP.DrawAmmo = false
SWEP.DrawCrosshair = false
SWEP.PrintName = "Cirno-Katana"
SWEP.Primary.Recoil				= 0
SWEP.Primary.Damage				= 0
SWEP.Primary.NumShots			= 0
SWEP.Primary.Cone				= 0	
SWEP.Primary.ClipSize			= -1
SWEP.Primary.DefaultClip		= -1
SWEP.Primary.Automatic   		= true
SWEP.Primary.Ammo         		= "none"
SWEP.CanBlock = true

SWEP.Primary.Attacks = {
	{
		['act'] = ACT_VM_SECONDARYATTACK, -- Animation; ACT_VM_THINGY, ideally something unique per-sequence
		['len'] = 150, -- Trace source; X ( +right, -left ), Y ( +forward, -back ), Z ( +up, -down )
		['dir'] = Vector(-20,0,10), -- Trace dir/length; X ( +right, -left ), Y ( +forward, -back ), Z ( +up, -down )
		['dmg'] = 90, --This isn't overpowered enough, I swear!!
		['dmgtype'] = DMG_SLASH, --DMG_SLASH,DMG_CRUSH, etc.
		['delay'] = 0.15, --Delay
		['spr'] = false, --Allow attack while sprinting?
		['snd'] = "Weapon_Katana.MissCrit", -- Sound ID
		['snd_delay'] = 0.1,
		["viewpunch"] = Angle(20,-10,0), --viewpunch angle
		['end'] = 1, --time before next attack
		['hull'] = 24, --Hullsize
		['direction'] = "W", --Swing dir,
		['hitflesh'] = "Weapon_Katana.HitFlesh",
		['hitworld'] = "Weapon_Katana.HitWorld"
	}
}

SWEP.BlockAnimation = {
	["in"] = {
		["type"] = ACT_HL2MP_IDLE_CAMERA, --Sequence or act
		["value"] = 1673, --Number for act, String/Number for sequence
		["transition"] = true
	},
	--Inward transition
	["loop"] = {
		["type"] = ACT_HL2MP_IDLE_CAMERA, --Sequence or act
		["value"] = 1673, --Number for act, String/Number for sequence
		["is_idle"] = true
	},
	--looping animation
	["hit"] = {
		["type"] = ACT_HL2MP_IDLE_CAMERA, --Sequence or act
		["value"] = 1673, --Number for act, String/Number for sequence
		["is_idle"] = true
	},
	--when you get hit and block it
	["out"] = {
		["type"] = ACT_HL2MP_IDLE_CAMERAT, --Sequence or act
		["value"] = 1673, --Number for act, String/Number for sequence
		["transition"] = true
	}
}

SWEP.BlockCone = 135 --Think of the player's view direction as being the middle of a sector, with the sector's angle being this
SWEP.BlockDamageMaximum = 0.2 --Multiply damage by this for a maximumly effective block
SWEP.BlockDamageMinimum = 0.2 --Multiply damage by this for a minimumly effective block
SWEP.BlockTimeWindow = 1000 --Time to absorb maximum damage
SWEP.BlockTimeFade = 1000 --Time for blocking to do minimum damage.  Does not include block window
SWEP.BlockDamageCap = 100
SWEP.BlockSound = "Breakable.MatMetal"
SWEP.BlockFadeOut = 0.8 --Override the length of the ["out"] block animation easily
SWEP.BlockFadeOutEnd = 0.0 --In absense of BlockFadeOut, shave this length off of the animation time
SWEP.BlockHoldType = "camera"
SWEP.BlockCanDeflect = true --Can "bounce" bullets off a perfect parry?
