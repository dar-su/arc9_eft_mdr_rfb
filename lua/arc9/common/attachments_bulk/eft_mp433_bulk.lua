local ATT = {}


///////////////////////////////////////      eft_mag_mp443_std


ATT = {}

ATT.PrintName = "MP-443 Grach 9x19 18-round magazine"
ATT.CompactName = "MP-443 18"
ATT.Icon = Material("entities/eft_mp443_attachments/m.png", "mips smooth")
ATT.Description = [[Standard 18-round 9x19 magazine for MP-443 Grach.]]

ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.EFTErgoAdd = -1
-- ATT.CustomPros = { ["Improved check accuracy"] = "Yes" }
ATT.CustomCons = { Ergonomics = "-1" }
ATT.MalfunctionMeanShotsToFailMult = 0.99

ATT.DropMagazineModel = "models/weapons/arc9/darsu_eft/mods/mag_mp443.mdl"
ATT.ChamberSize = 1
ATT.ClipSize = 18
ATT.DropMagazineAmount = 1
ATT.SuppressEmptySuffix = false 
ATT.ActivateElements = {"magdef"}

ATT.Category = {"eft_mp443_mag"}

ARC9.LoadAttachment(ATT, "eft_mag_mp443_std")

///////////////////////////////////////      eft_grip_mp443_std


ATT = {}

ATT.PrintName = "MP-443 Grach polymer pistol grip"
ATT.CompactName = "MP-443"
ATT.Icon = Material("entities/eft_mp443_attachments/g.png", "mips smooth")
ATT.Description = [[Standard service pistol grip for MP-443 manufactured by Izhmekh. ]]

ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.HasGrip = true 

ATT.Category = {"eft_mp443_grip"}

ARC9.LoadAttachment(ATT, "eft_grip_mp443_std")


///////////////////////////////////////      eft_mount_mp443_rail

ATT = {}

ATT.PrintName = "MP-443 Grach Zenit B-8 mount"
ATT.CompactName = "B-8"
ATT.Icon = Material("entities/eft_mp443_attachments/b8.png", "mips smooth")
ATT.Description = "B-8 rail mount is installed on Yarygin pistol (MP-443 Grach and its civilian version MP-446 Viking) for use with additional attachments, e.g. 2KS Klesch Mini tactical laser flashlight. "

ATT.EFTErgoAdd = -1
ATT.CustomCons = { Ergonomics = "-1" }

ATT.SortOrder = -99
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_mp443_tac"}

ATT.Attachments = {
    {
        PrintName = "Tactical",
        Category = {"eft_tactical_pistol", "eft_um3"},
        Pos = Vector(-0.6, 0, -0.2),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 0, 0.5),
    },
}

ARC9.LoadAttachment(ATT, "eft_mount_mp443_rail")