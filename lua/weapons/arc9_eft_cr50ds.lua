
--copy of cr200ds but diff stats

AddCSLuaFile()

SWEP.Base = "arc9_eft_cr200ds"
SWEP.Spawnable = true
SWEP.Category = "ARC9 - Escape From Tarkov"

SWEP.PrintName = "CR 50DS .357"
SWEP.Description = [[The Rhino revolvers, manufactured by the Italian company Armi Chiappa, are distinguished by revolutionary patented design and construction with an unusual barrel arrangement for revolvers opposite the lower drum chamber. ]]

SWEP.Trivia = {
    _,
    [ARC9:GetPhrase("eft_trivia_cal") .. "2"] = ".357 Magnum",
}

SWEP.DefaultBodygroups = "1200000000000"

------------------------- |||           Damage            ||| -------------------------
--          Damage

SWEP.DamageMax = 70 * 0.5
SWEP.DamageMin = 48 * 0.5
SWEP.PhysBulletMuzzleVelocity = 385 /0.0254
SWEP.RangeMin = 10
SWEP.RangeMax = 1000 /0.0254

SWEP.Penetration =      35 *2.54/100/0.0254
SWEP.PenetrationDelta = 43/100
SWEP.ArmorPiercing =    43/100
SWEP.RicochetChance =   10/100

SWEP.DamageLookupTable = {
    {   10/0.0254 * 1, 
    70 * 0.5     },

    {   100 /0.0254 * 1, 
    64 * 0.5     },

    {   200 /0.0254 * 1, 
    60.64 * 0.5     },

    {   300 /0.0254 * 1, 
    58.22 * 0.5     },

    {   400 /0.0254 * 1, 
    56.22 * 0.5     },

    {   500 /0.0254 * 1, 
    54.5 * 0.5     },

    {   600 /0.0254 * 1, 
    53 * 0.5     },

    {   700 /0.0254 * 1, 
    51.6 * 0.5     },

    {   800 /0.0254 * 1, 
    50.3 * 0.5     },

    {   900 /0.0254 * 1, 
    49 * 0.5     },

    {   1000 /0.0254 * 1, 
    48 * 0.5     },
}


SWEP.ShellModel = "models/weapons/arc9/darsu_eft/shells/357.mdl"

SWEP.HookP_NameChange = function(self, name)
    local elements = self:GetElements()

    if elements["eft_rhino_barrel_40ds"] then return "CR 40DS .357"
    elseif elements["eft_rhino_barrel_60ds"] then return "CR 60DS .357" end
end

SWEP.Attachments = {
    {
        Category = "eft_ammo_357",
        Integral = "eft_ammo_357_fmj",
        Installed = "eft_ammo_357_fmj",
    },
    _,
    _,
    {
        Pos = Vector(-0.078, 25.51, 1.85),
    },
    {
        PrintName = "Rear sight",
        Category = "eft_rhino_rs",
        Bone = "weapon",
        Installed = "eft_rhino_rs_std",
        Pos = Vector(-0.078, 19.36, 1.89),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = "Barrel",
        Category = "eft_rhino357_barrel",
        Bone = "mod_pistol_grip",
        Pos = Vector(0, 5, 1),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = "Tactical",
        Category = "eft_tactical",
        RejectAttachments = { ["eft_tactical_raptar"] = true },
        Bone = "weapon",
        Pos = Vector(-0.078, 25.5, -0.22),
        Ang = Angle(0, -90, 180),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = "Custom slot",
        Category = {"eft_custom_slot", "eft_custom_slot_rhino", "eft_custom_slot_rsh12"},
        Bone = "weapon",
        Pos = Vector(0, 15, -2),
        Ang = Angle(0, 90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
}