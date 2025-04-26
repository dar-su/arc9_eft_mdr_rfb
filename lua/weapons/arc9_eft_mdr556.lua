
--copy of 762 mdr but diff stats

AddCSLuaFile()

SWEP.Base = "arc9_eft_mdr"
SWEP.Spawnable = true
SWEP.Category = "ARC9 - Escape From Tarkov"

SWEP.PrintName = "DT MDR 5.56"
SWEP.Description = [[The MDR 5.56x45 bullpup assault rifle, designed and manufactured by Desert Tech LLC. A modular multi-caliber weapon with a compact bullpup layout intended for use by police and military special operations. Barrel lengths and calibers can be changed by the end-user within minutes with a minimum amount of tools. ]]

SWEP.DefaultElements = {"mdr_556"} -- owo

SWEP.Ammo = "smg1"


SWEP.Recoil = 0.8 -- general multiplier of main recoil

SWEP.RecoilUp   = 2.75  -- up recoil
SWEP.RecoilSide = 0.8 -- sideways recoil
SWEP.RecoilRandomUp   = 0.9 -- random up/down
SWEP.RecoilRandomSide = 0.65   -- random left/right

SWEP.RecoilAutoControl = 6 -- autocompenstaion, could be cool if set to high but it also affects main recoil

-- visual recoil   aka visrec
SWEP.VisualRecoil = 0.7 -- general multiplier for it

SWEP.EFT_VisualRecoilUp_BURST_SEMI   = 0.1   -- up/down tilt when semi/bursts
SWEP.VisualRecoilUp                   = 0.5   --   when fullautoing
SWEP.EFT_VisualRecoilSide_BURST_SEMI = 0.001 -- left/right tilt when semi/burst
SWEP.VisualRecoilSide                 = 0.08   --   when fullautoing
SWEP.VisualRecoilRoll = 4 -- roll tilt, a visual thing

SWEP.VisualRecoilPunch = 1 -- How far back visrec moves the gun
SWEP.VisualRecoilPunchSights = -3 -- same but in sights only

SWEP.VisualRecoilDampingConst = 100  -- spring settings, this is speed of visrec
SWEP.VisualRecoilSpringPunchDamping = 5 -- the less this is the more wobbly gun moves
SWEP.VisualRecoilSpringMagnitude = 0.5 -- some third element of spring, high values make gun shake asf on low fps

SWEP.VisualRecoilPositionBumpUpHipFire = 0.1 -- gun will go down each shot by this value
SWEP.VisualRecoilPositionBumpUp = -0.36 -- same but in sights
SWEP.VisualRecoilPositionBumpUpRTScope = 0.05 -- same but in rt scopes, you probably should keep it same as sight value, i guess it doesn't matter anymore after recoil update

-- SWEP.VisualRecoilCenter = Vector(2, 14, 0) -- ugh, i dont now what to set it too, but probably it should be diffferent on each gun

SWEP.EFT_ShotsToSwitchToFullAutoBehaviur = 3 -- how many shots for switch to fullauto stats from semi/burst, + 2 shots afterwards are lerping. you probably should not touch this but ok

SWEP.RecoilKick = 0.3 -- camera roll each shot + makes camera go more up when fullautoing

SWEP.VisualRecoilCenter = Vector(4.28, 19, -2)
SWEP.SubtleVisualRecoil = 0.75
SWEP.SubtleVisualRecoilDirection = 3
SWEP.SubtleVisualRecoilSpeed = 1.5

------------------------- |||           Damage            ||| -------------------------
--          Damage

SWEP.DamageMax = 54/2
SWEP.DamageMin = 34.1/2
SWEP.PhysBulletMuzzleVelocity = 957 /0.0254
SWEP.RangeMin = 10
SWEP.RangeMax = 1000 /0.0254

SWEP.Penetration =      23 *2.54/100/0.0254
SWEP.PenetrationDelta = 33/100
SWEP.ArmorPiercing =    33/100
SWEP.RicochetChance =   26/100

SWEP.DamageLookupTable = {
    {   10/0.0254, 
    54/2     },

    {   100 /0.0254, 
    50.2/2     },

    {   200 /0.0254, 
    47/2     },

    {   300 /0.0254, 
    44/2     },

    {   400 /0.0254, 
    40.65/2     },

    {   500 /0.0254, 
    38/2     },

    {   600 /0.0254, 
    36.5/2     },

    {   700 /0.0254, 
    35.7/2     },

    {   800 /0.0254, 
    35/2     },

    {   900 /0.0254, 
    34.5/2     },

    {   1000 /0.0254, 
    34.1/2     },
}


SWEP.MalfunctionMeanShotsToFail = 550
SWEP.HeatCapacity = 170

SWEP.MuzzleParticle = "muzzleflash_4"
SWEP.ShellModel = "models/weapons/arc9_eft_shared/shells/eft_shell_556_m855.mdl"


local path = "weapons/darsu_eft/mdr/"

SWEP.ShootSound = { path .. "fire_new/mdr_outdoor_close_loop1.ogg", path .. "fire_new/mdr_outdoor_close_loop2.ogg", path .. "fire_new/mdr_outdoor_close_loop3.ogg", path .. "fire_new/mdr_outdoor_close_loop4.ogg" }
SWEP.LayerSound = path .. "fire_new/mdr_outdoor_close_loop_tail.ogg"

SWEP.ShootSoundSilenced = { path .. "fire_new/mdr_outdoor_silenced_close_loop1.ogg", path .. "fire_new/mdr_outdoor_silenced_close_loop2.ogg", path .. "fire_new/mdr_outdoor_silenced_close_loop3.ogg", path .. "fire_new/mdr_outdoor_silenced_close_loop4.ogg" }
SWEP.LayerSoundSilenced = path .. "fire_new/mdr_outdoor_silenced_close_loop_tail.ogg"

SWEP.ShootSoundIndoor = { path .. "fire_new/mdr_indoor_close_loop1.ogg", path .. "fire_new/mdr_indoor_close_loop2.ogg", path .. "fire_new/mdr_indoor_close_loop3.ogg", path .. "fire_new/mdr_indoor_close_loop4.ogg" }
SWEP.LayerSoundIndoor = path .. "fire_new/mdr_indoor_close_loop_tail.ogg"

SWEP.ShootSoundSilencedIndoor = { path .. "fire_new/mdr_indoor_silenced_close_loop1.ogg", path .. "fire_new/mdr_indoor_silenced_close_loop2.ogg", path .. "fire_new/mdr_indoor_silenced_close_loop3.ogg", path .. "fire_new/mdr_indoor_silenced_close_loop4.ogg" }
SWEP.LayerSoundSilencedIndoor = path .. "fire_new/mdr_indoor_silenced_close_loop_tail.ogg"

SWEP.DistantShootSound = { path .. "fire_new/mdr_outdoor_distant_loop1.ogg", path .. "fire_new/mdr_outdoor_distant_loop2.ogg" }
SWEP.DistantShootSoundSilenced = { path .. "fire_new/mdr_outdoor_silenced_distant_loop1.ogg", path .. "fire_new/mdr_outdoor_silenced_distant_loop2.ogg" }
SWEP.DistantShootSoundIndoor = { path .. "fire_new/mdr_indoor_distant_loop1.ogg", path .. "fire_new/mdr_indoor_distant_loop2.ogg" }
SWEP.DistantShootSoundSilencedIndoor = { path .. "fire_new/mdr_indoor_silenced_distant_loop1.ogg", path .. "fire_new/mdr_indoor_silenced_distant_loop2.ogg" }

SWEP.CustomPoseParamsHandler = function(swep, ent, iswm)
    ent:SetPoseParameter("owo", 1) -- different animations for 556
end

SWEP.Attachments = {
    _,
    _,
    {
        Category = "eft_mdr556_barrel",
        Installed = "eft_mdr_barrel_556",
        SubAttachments = {
            {
                Installed = "eft_muzzle_ar15_mdr",
            }
        }
    },
    {
        Installed = "eft_mdr_hg_fde",
    },
    {
        Installed = "eft_mdr_pg_fde",
    },
    {
        Category = {"eft_ar15_mag", "eft_ar15_drum", "eft_ar15_quad"},
        Installed = "eft_mag_ar15_pmag_w_30"
    },
    {
        Category = {"eft_ammo_556"},
        Integral = "eft_ammo_556_fmj",
        Installed = "eft_ammo_556_fmj",
    },
    {
        Installed = "eft_mdr_fde"
    },
}