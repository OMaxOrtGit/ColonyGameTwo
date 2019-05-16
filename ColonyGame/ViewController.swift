//
//  ViewController.swift
//  ColonyGame
//
//  Created by Jennifer Ortman on 8/31/18.
//  Copyright © 2018 Jennifer Ortman. All rights reserved.
//


import UIKit

let userDefaults = UserDefaults.standard

var gameTimer: Timer!

var RefreshS = true

var LogV = 0
var RockV = 0
var IronOreV = 0
var ScrapWoodV = 0
var FireWoodV = 0
var StoneV = 0
var PlankV = 0
var IronV = 0
var NailV = 0
var IronPartsV = 0

var RockR = 0

var BeamV = 0
var FrameV = 0
var ShingleV = 0
var RoofV = 0
var WallV = 0
var DoorV = 0
var GrinderV = 0
var FurnaceV = 0
var AnvilV = 0

var LandV = 0

var HouseV = 0
var RoadV = 0
var TownV = 0
var CastleWallV = 0
var CastleV = 0
var RCWV = 0
var KingdomV = 0
var EmpireV = 0

var EmployedV = 0
var UnEmployedV = 0
var FarmerV = 0
var MinerV = 0
var LumberJackV = 0
var CrafterV = 0
var CarverV = 0
var BSIV = 0
var BSNV = 0
var BSPV = 0

var FenceV = 0
var CampV = 0
var GeneralV = 0
var SoldierV = 0
var ASoldierV = 0
var BarracksV = 0
var ArcharyRangeV = 0
var SwordManV = 0
var ArcherV = 0

var MinerVC = false
var LumberJackVC = false
var CrafterVC = false
var CarverVC = false
var BSIVC = false
var BSNVC = false
var BSPVC = false

var FarmerCV = 0.0
var MinerCV = 0.0
var LumberJackCV = 0.0
var CrafterCV = 0.0
var CarverCV = 0.0
var BSICV = 0.0
var BSNCV = 0.0
var BSPCV = 0.0

var LumberJackSwitch = true

var StickV = 0
var AxeV = 0
var PickV = 0
var HoeV = 0
var ScaleV = 0
var SwordV = 0
var BowV = 0
var ArrowV = 0
var BowNArrowV = 0

var Coins = 0

var SellISM = 0
var IronOreISM = 20
var FireWoodISM = 20
var FrameISM = 3750
var WallISM = 1000
var SoldierISM = 300
var HouseISM = 10000
var RoadISM = 150
var SwordISM = 200
var BowNArrowISM = 1000
var TownISM = 275000
var CastleISM = 600000

var SellII = 0.0
var IronOreII = 0.0
var FireWoodII = 0.0
var FrameII = 0.0
var WallII = 0.0
var SoldierII = 0.0
var HouseII = 0.0
var RoadII = 0.0
var SwordII = 0.0
var BowNArrowII = 0.0
var TownII = 0.0
var CastleII = 0.0

var SellInt = 0
var IronOreInt = 0
var FireWoodInt = 0
var FrameInt = 0
var WallInt = 0
var SoldierInt = 0
var HouseInt = 0
var RoadInt = 0
var SwordInt = 0
var BowNArrowInt = 0
var TownInt = 0
var CastleInt = 0

var CR1V = "0"
var CR2V = "0"
var CR3V = "0"
var CR4V = "0"
var CR5V = "0"
var CR6V = "0"
var CR7V = "0"
var CR8V = "0"
var CR9V = "0"

var SM1V = "0"
var SM2V = "0"
var SM3V = "0"
var SM4V = "0"
var SM5V = "0"
var SM6V = "0"
var SM7V = "0"
var SM8V = "0"
var SM9V = "0"

var A1V = "0"
var A2V = "0"
var A3V = "0"
var A4V = "0"
var A5V = "0"
var A6V = "0"
var A7V = "0"
var A8V = "0"
var A9V = "0"

var CR1P6 = 0
var CR1P62 = 0
var CR1P8 = 0
var CRR6 = 0
var CRM = 0
var CRR61P6 = 0

var FightsNum = 1


var date = Date()
var dateDB = ""
var dateDN = ""
let formatter = DateFormatter()

var test = false

var ETMat = false
var ETTool = false
var ETPeople = false
var ETArmy = false
var ETBuild = false
var ETTown = false

var SEnd = false

func timer() {
    
    Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { (MinerT) in
        DispatchQueue.main.asyncAfter(deadline: .now() + (0.0125)) {
        MinerVC = true
        test = true
        MinerCV += 0.1 * Double(MinerV)
        while MinerCV >= 3.0 {
            MinerCV -= 3.0
            RockR = Int(arc4random_uniform(5)) + 1
            if RockR == 2 {
                IronOreV += 1
                userDefaults.set(IronOreV, forKey: "IronOreV")
            } else {
                RockV += 1
                userDefaults.set(RockV, forKey: "RockV")
            }}
        
        DispatchQueue.main.asyncAfter(deadline: .now() + (0.0125)) {
        LumberJackCV += 0.1 * Double(LumberJackV)
        while LumberJackCV >= 3.0 {
            LumberJackCV -= 3.0
           LogV += 1
            userDefaults.set(ScrapWoodV, forKey: "ScrapWoodV")
            print("Lumber Jack")
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + (0.0125)) {
        CrafterCV += 0.1 * Double(CrafterV)
        while CrafterCV >= 3.0 {
            CrafterCV -= 3.0
            if ScrapWoodV >= 2 && GrinderV >= 1 {
                PlankV += 1
                userDefaults.set(PlankV, forKey: "PlankV")
                ScrapWoodV -= 2
                userDefaults.set(ScrapWoodV, forKey: "ScrapWoodV")
            }}
            DispatchQueue.main.asyncAfter(deadline: .now() + (0.0125)) {
        CarverCV += 0.1 * Double(CarverV)
        while CarverCV >= 3.0 {
            CarverCV -= 3.0
            if RockV >= 1 && GrinderV >= 1{
                StoneV += 1
                userDefaults.set(StoneV, forKey: "StoneV")
                RockV -= 1
                userDefaults.set(RockV, forKey: "RockV")
            }}
        DispatchQueue.main.asyncAfter(deadline: .now() + (0.0125)) {
        BSICV += 0.1 * Double(BSIV)
        while BSICV >= 3.0 {
            BSICV -= 3.0
            if IronOreV >= 1 && FireWoodV >= 1 && FurnaceV >= 1{
                IronV += 1
                userDefaults.set(IronV, forKey: "IronV")
                IronOreV -= 1
                userDefaults.set(IronOreV, forKey: "IronOreV")
                FireWoodV -= 1
                userDefaults.set(FireWoodV, forKey: "FireWoodV")
            }}
        DispatchQueue.main.asyncAfter(deadline: .now() + (0.0125)) {
        BSNCV += 0.1 * Double(BSNV)
        while BSNCV >= 3.0 {
            BSNCV -= 3.0
            if IronV >= 1 && AnvilV >= 1{
                NailV += 5
                userDefaults.set(NailV, forKey: "NailV")
                IronV -= 1
                userDefaults.set(IronV, forKey: "IronV")
            }}
        DispatchQueue.main.asyncAfter(deadline: .now() + (0.0125)) {
        BSPCV += 0.1 * Double(BSPV)
        while BSPCV >= 3.0 {
            BSPCV -= 3.0
            if IronV >= 1 && AnvilV >= 1{
                IronPartsV += 3
                userDefaults.set(IronPartsV, forKey: "IronPartsV")
                IronV -= 1
                userDefaults.set(IronV, forKey: "IronV")
            }}
        DispatchQueue.main.asyncAfter(deadline: .now() + (0.0125)) {
        FarmerCV += 0.1 * Double(FarmerV)
        while FarmerCV >= 3.0 {
            FarmerCV -= 3.0
            if LogV >= 1{
                ScrapWoodV += 5
                userDefaults.set(ScrapWoodV, forKey: "ScrapWoodV")
                LogV -= 1
                userDefaults.set(LogV, forKey: "LogV")
                
            }}}}}}}}}
        }
    }
}
class StartUp: UITableViewController {
    
    
    
    override func viewDidLoad() {
        
        BeamV = userDefaults.integer(forKey: "BeamV")
        FrameV = userDefaults.integer(forKey: "FrameV")
        ShingleV = userDefaults.integer(forKey: "ShingleV")
        RoofV = userDefaults.integer(forKey: "RoofV")
        WallV = userDefaults.integer(forKey: "WallV")
        DoorV = userDefaults.integer(forKey: "DoorV")
        GrinderV = userDefaults.integer(forKey: "GrinderV")
        FurnaceV = userDefaults.integer(forKey: "FurnaceV")
        AnvilV = userDefaults.integer(forKey: "AnvilV")
        LogV = userDefaults.integer(forKey: "LogV")
        ScrapWoodV = userDefaults.integer(forKey: "ScrapWoodV")
        IronOreV = userDefaults.integer(forKey: "IronOreV")
        RockV = userDefaults.integer(forKey: "RockV")
        FireWoodV = userDefaults.integer(forKey: "FireWoodV")
        StoneV = userDefaults.integer(forKey: "StoneV")
        PlankV = userDefaults.integer(forKey: "PlankV")
        IronV = userDefaults.integer(forKey: "IronV")
        NailV = userDefaults.integer(forKey: "NailV")
        IronPartsV = userDefaults.integer(forKey: "IronPartsV")
        LandV = userDefaults.integer(forKey: "LandV")
        HouseV = userDefaults.integer(forKey: "HouseV")
        RoadV = userDefaults.integer(forKey: "RoadV")
        TownV = userDefaults.integer(forKey: "TownV")
        CastleWallV = userDefaults.integer(forKey: "CastleWallV")
        CastleV = userDefaults.integer(forKey: "CastleWallV")
        RCWV = userDefaults.integer(forKey: "RCWV")
        KingdomV = userDefaults.integer(forKey: "KingdomV")
        EmpireV = userDefaults.integer(forKey: "EmpireV")
        EmployedV = userDefaults.integer(forKey: "EmployedV")
        UnEmployedV = userDefaults.integer(forKey: "UnEmployedV")
        FarmerV = userDefaults.integer(forKey: "FarmerV")
        MinerV = userDefaults.integer(forKey: "MinerV")
        LumberJackV = userDefaults.integer(forKey: "LumberJackV")
        CrafterV = userDefaults.integer(forKey: "CrafterV")
        CarverV = userDefaults.integer(forKey: "CarverV")
        BSIV = userDefaults.integer(forKey: "BSIV")
        BSNV = userDefaults.integer(forKey: "BSNV")
        BSPV = userDefaults.integer(forKey: "BSPV")
        StickV = userDefaults.integer(forKey: "StickV")
        AxeV = userDefaults.integer(forKey: "AxeV")
        PickV = userDefaults.integer(forKey: "PickV")
        HoeV = userDefaults.integer(forKey: "HoeV")
        ScaleV = userDefaults.integer(forKey: "ScaleV")
        SwordV = userDefaults.integer(forKey: "SwordV")
        BowV = userDefaults.integer(forKey: "BowV")
        ArrowV = userDefaults.integer(forKey: "ArrowV")
        BowNArrowV = userDefaults.integer(forKey: "BowNArrowV")
        FenceV = userDefaults.integer(forKey: "FenceV")
        CampV = userDefaults.integer(forKey: "CampV")
        GeneralV = userDefaults.integer(forKey: "GeneralV")
        SoldierV = userDefaults.integer(forKey: "SoldierV")
        ASoldierV = userDefaults.integer(forKey: "ASoldierV")
        ArcharyRangeV = userDefaults.integer(forKey: "ArcharyRangeV")
        SwordManV = userDefaults.integer(forKey: "SwordManV")
        ArcherV = userDefaults.integer(forKey: "ArcherV")
        LandV = userDefaults.integer(forKey: "LandV")
        
        
        
        if MinerV >= 1 || LumberJackV >= 1 || CrafterV >= 1 || BSIV >= 1 || BSNV >= 1 || BSPV >= 1{
            timer()
        }
    }
}

class Building: UIViewController {
    
    @IBOutlet weak var BeamL: UILabel!
    @IBOutlet weak var FrameL: UILabel!
    @IBOutlet weak var ShingleL: UILabel!
    @IBOutlet weak var RoofL: UILabel!
    @IBOutlet weak var WallL: UILabel!
    @IBOutlet weak var DoorL: UILabel!
    @IBOutlet weak var GrinderL: UILabel!
    @IBOutlet weak var FurnaceL: UILabel!
    @IBOutlet weak var AnvilL: UILabel!
    
    
    @IBOutlet weak var BeamNA: UILabel!
    @IBOutlet weak var FrameNA: UILabel!
    @IBOutlet weak var ShingleNA: UILabel!
    @IBOutlet weak var RoofNA: UILabel!
    @IBOutlet weak var WallNA: UILabel!
    @IBOutlet weak var DoorNA: UILabel!
    @IBOutlet weak var GrinderNA: UILabel!
    @IBOutlet weak var FurnaceNA: UILabel!
    @IBOutlet weak var AnvilNA: UILabel!
    
    @IBOutlet weak var BeamNNA: UILabel!
    @IBOutlet weak var FrameNNA: UILabel!
    @IBOutlet weak var ShingleNNA: UILabel!
    @IBOutlet weak var RoofNNA: UILabel!
    @IBOutlet weak var WallNNA: UILabel!
    @IBOutlet weak var DoorNNA: UILabel!
    @IBOutlet weak var GrinderNNA: UILabel!
    @IBOutlet weak var FurnaceNNA: UILabel!
    @IBOutlet weak var AnvilNNA: UILabel!
    
    @IBOutlet weak var FrameNNNA: UILabel!
    @IBOutlet weak var WallNNNA: UILabel!
    @IBOutlet weak var DoorNNNA: UILabel!
    @IBOutlet weak var GrinderNNNA: UILabel!
    
    @IBOutlet var DoorNNNNA: UILabel!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.setToolbarHidden(false, animated: false)
        
        BeamV = userDefaults.integer(forKey: "BeamV")
        FrameV = userDefaults.integer(forKey: "FrameV")
        ShingleV = userDefaults.integer(forKey: "ShingleV")
        RoofV = userDefaults.integer(forKey: "RoofV")
        WallV = userDefaults.integer(forKey: "WallV")
        DoorV = userDefaults.integer(forKey: "DoorV")
        GrinderV = userDefaults.integer(forKey: "GrinderV")
        FurnaceV = 3
        AnvilV = userDefaults.integer(forKey: "AnvilV")
        
        
        BeamL.text = "\(BeamV)"
        FrameL.text = "\(FrameV)"
        ShingleL.text = "\(ShingleV)"
        RoofL.text = "\(RoofV)"
        WallL.text = "\(WallV)"
        DoorL.text = "\(DoorV)"
        GrinderL.text = "\(GrinderV)"
        FurnaceL.text = "\(FurnaceV)"
        AnvilL.text = "\(AnvilV)"
        
        
    }
    
    @IBAction func BeamC(_ sender: Any) {
        if PlankV >= 3 {
            BeamV += 1
            userDefaults.set(BeamV, forKey: "BeamV")
            BeamL.text = "\(BeamV)"
            PlankV -= 3
            userDefaults.set(PlankV, forKey: "PlankV")
        }
    }
    
    @IBAction func FrameC(_ sender: Any) {
        if BeamV >= 36 && NailV >= 72 {
            FrameV += 1
            userDefaults.set(FrameV, forKey: "FrameV")
            FrameL.text = "\(FrameV)"
            BeamV -= 36
            userDefaults.set(BeamV, forKey: "BeamV")
            BeamL.text = "\(BeamV)"
            NailV -= 72
            userDefaults.set(NailV, forKey: "NailV")
        }
    }
    
    @IBAction func ShinglesC(_ sender: Any) {
        if StoneV >= 1 && GrinderV >= 1 {
            ShingleV += 6
            userDefaults.set(ShingleV, forKey: "ShingleV")
            ShingleL.text = "\(ShingleV)"
            StoneV -= 1
            userDefaults.set(StoneV, forKey: "StoneV")
        }
    }
    
    @IBAction func RoofC(_ sender: Any) {
        if ShingleV >= 128 {
            RoofV += 1
            userDefaults.set(RoofV, forKey: "RoofV")
            RoofL.text = "\(RoofV)"
            ShingleV -= 128
            userDefaults.set(ShingleV, forKey: "ShingleV")
            ShingleL.text = "\(ShingleV)"
        }
    }
    
    @IBAction func WallC(_ sender: Any) {
        if PlankV >= 27 && NailV >= 27 {
            WallV += 1
            userDefaults.set(WallV, forKey: "WallV")
            WallL.text = "\(WallV)"
            PlankV -= 27
            userDefaults.set(PlankV, forKey: "PlankV")
            NailV -= 27
            userDefaults.set(NailV, forKey: "NailV")
        }
    }
    
    @IBAction func DoorC(_ sender: Any) {
        if PlankV >= 18 && NailV >= 40 && IronPartsV >= 2{
            DoorV += 1
            userDefaults.set(DoorV, forKey: "DoorV")
            DoorL.text = "\(DoorV)"
            PlankV -= 18
            userDefaults.set(PlankV, forKey: "PlankV")
            NailV -= 40
            userDefaults.set(NailV, forKey: "NailV")
            IronPartsV -= 2
            userDefaults.set(IronPartsV, forKey: "IronPartsV")
        }
    }
    
    @IBAction func GrinderC(_ sender: Any) {
        if ScrapWoodV >= 20 && RockV >= 10 {
            GrinderV += 1
            userDefaults.set(GrinderV, forKey: "GrinderV")
            GrinderL.text = "\(GrinderV)"
            ScrapWoodV -= 20
            userDefaults.set(ScrapWoodV, forKey: "ScrapWoodV")
            RockV -= 10
            userDefaults.set(RockV, forKey: "RockV")
        }
    }
    
    @IBAction func FurnaceC(_ sender: Any) {
        if StoneV >= 50 {
            FurnaceV += 1
            userDefaults.set(FurnaceV, forKey: "FurnaceV")
            FurnaceL.text = "\(FurnaceV)"
            StoneV -= 50
            userDefaults.set(StoneV, forKey: "StoneV")
        }
    }
    
    @IBAction func AnvilC(_ sender: Any) {
        if IronV >= 10 {
            AnvilV += 1
            userDefaults.set(AnvilV, forKey: "AnvilV")
            AnvilL.text = "\(AnvilV)"
            IronV -= 10
            userDefaults.set(IronV, forKey: "IronV")
        }
    }
    
    
    @IBAction func NeededC(_ sender: Any) {
        
        BeamNA.text = "Needed:"
        FrameNA.text = "Needed:"
        ShingleNA.text = "Needed:"
        RoofNA.text = "Needed:"
        WallNA.text = "Needed:"
        DoorNA.text = "Needed:"
        GrinderNA.text = "Needed:"
        FurnaceNA.text = "Needed:"
        AnvilNA.text = "Needed:"
        
        BeamNNA.text = "3 Planks"
        FrameNNA.text = "36 Beams"
        ShingleNNA.text = "Stone"
        RoofNNA.text = "128 Shingles"
        WallNNA.text = "27 Planks"
        DoorNNA.text = "18 Planks"
        GrinderNNA.text = "20 Scrap Wood"
        FurnaceNNA.text = "50 Stone"
        AnvilNNA.text = "10 Iron"
        
        FrameNNNA.text = "72 Nails"
        WallNNNA.text = "27 Nails"
        DoorNNNA.text = "40 Nails"
        GrinderNNNA.text = "10 Rock"
        
        DoorNNNNA.text = "2 Parts"
    }
    
    
    @IBAction func Amount(_ sender: Any) {
        
        BeamNA.text = "Amount:"
        FrameNA.text = "Amount:"
        ShingleNA.text = "Amount:"
        RoofNA.text = "Amount:"
        WallNA.text = "Amount:"
        DoorNA.text = "Amount:"
        GrinderNA.text = "Amount:"
        FurnaceNA.text = "Amount:"
        AnvilNA.text = "Amount:"
        
        BeamNNA.text = "1"
        FrameNNA.text = "1"
        ShingleNNA.text = "6"
        RoofNNA.text = "1"
        WallNNA.text = "1"
        DoorNNA.text = "1"
        GrinderNNA.text = "1"
        FurnaceNNA.text = "1"
        AnvilNNA.text = "1"
        
        FrameNNNA.text = ""
        WallNNNA.text = ""
        DoorNNNA.text = ""
        GrinderNNNA.text = ""
        
        DoorNNNNA.text = ""
    }
    
    
}









class Matterials: UIViewController {
    
    
    @IBOutlet var LogL: UILabel!
    @IBOutlet var RockL: UILabel!
    @IBOutlet var IronOreL: UILabel!
    @IBOutlet var ScrapWoodL: UILabel!
    @IBOutlet var FireWoodL: UILabel!
    @IBOutlet var StoneL: UILabel!
    @IBOutlet var PlankL: UILabel!
    @IBOutlet var IronL: UILabel!
    @IBOutlet var NailL: UILabel!
    @IBOutlet var IronPartsL: UILabel!
    
    
    @IBOutlet weak var LogNA: UILabel!
    @IBOutlet weak var RockNA: UILabel!
    @IBOutlet weak var ScrapWoodNA: UILabel!
    @IBOutlet weak var FireWoodNA: UILabel!
    @IBOutlet weak var StoneNA: UILabel!
    @IBOutlet weak var PlankNA: UILabel!
    @IBOutlet weak var IronNA: UILabel!
    @IBOutlet weak var NailNA: UILabel!
    @IBOutlet weak var IronPartNA: UILabel!
    
    @IBOutlet weak var LogNNA: UILabel!
    @IBOutlet weak var RockNNA: UILabel!
    @IBOutlet weak var ScrapWoodNNA: UILabel!
    @IBOutlet weak var FireWoodNNA: UILabel!
    @IBOutlet weak var StoneNNA: UILabel!
    @IBOutlet weak var PlankNNA: UILabel!
    @IBOutlet weak var IronNNA: UILabel!
    @IBOutlet weak var NailNNA: UILabel!
    @IBOutlet weak var IronPartsNNA: UILabel!
    
    @IBOutlet weak var IronNNNA: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.setToolbarHidden(false, animated: false)
        
        LogV = userDefaults.integer(forKey: "LogV")
        ScrapWoodV = userDefaults.integer(forKey: "ScrapWoodV")
        IronOreV = userDefaults.integer(forKey: "IronOreV")
        RockV = userDefaults.integer(forKey: "RockV")
        FireWoodV = userDefaults.integer(forKey: "FireWoodV")
        StoneV = userDefaults.integer(forKey: "StoneV")
        PlankV = userDefaults.integer(forKey: "PlankV")
        IronV = userDefaults.integer(forKey: "IronV")
        NailV = userDefaults.integer(forKey: "NailV")
        IronPartsV = userDefaults.integer(forKey: "IronPartsV")
        
        
        LogL.text = "\(LogV)"
        RockL.text = "\(RockV)"
        ScrapWoodL.text = "\(ScrapWoodV)"
        IronOreL.text = "\(IronOreV)"
        RockL.text = "\(RockV)"
        FireWoodL.text = "\(FireWoodV)"
        StoneL.text = "\(StoneV)"
        PlankL.text = "\(PlankV)"
        IronL.text = "\(IronV)"
        NailL.text = "\(NailV)"
        IronPartsL.text = "\(IronPartsV)"
        
        Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { (Refresh) in
            self.IronOreL.text = "\(IronOreV)"
            self.RockL.text = "\(RockV)"
            self.ScrapWoodL.text = "\(ScrapWoodV)"
            self.IronOreL.text = "\(IronOreV)"
            self.IronL.text = "\(IronV)"
            self.PlankL.text = "\(PlankV)"
            self.NailL.text = "\(NailV)"
            self.IronPartsL.text = "\(IronPartsV)"
            self.LogL.text = "\(LogV)"
        }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    }
    @IBAction func LogC(_ sender: Any) {
        LogV += 1
        userDefaults.set(LogV, forKey: "LogV")
        LogL.text = "\(LogV)"
    }
    
    @IBAction func RockC(_ sender: Any) {
        RockR = Int(arc4random_uniform(5))+1
        if RockR == 2 {
            IronOreV += 1
            IronOreL.text = "\(IronOreV)"
            userDefaults.set(IronOreV, forKey: "IronOreV")
        } else {
            RockV += 1
            RockL.text = "\(RockV)"
            userDefaults.set(RockV, forKey: "RockV")
        }
    }
    
    @IBAction func ScrapWoodC(_ sender: Any) {
        
        if LogV >= 1 {
            ScrapWoodV += 5
            userDefaults.set(ScrapWoodV, forKey: "ScrapWoodV")
            ScrapWoodL.text = "\(ScrapWoodV)"
            LogV -= 1
            userDefaults.set(LogV, forKey: "LogV")
            LogL.text = "\(LogV)"
        }
    }
    
    @IBAction func FireWoodC(_ sender: Any) {
        if ScrapWoodV >= 1{
            FireWoodV += 1
            userDefaults.set(FireWoodV, forKey: "FireWoodV")
            FireWoodL.text = "\(FireWoodV)"
            ScrapWoodV -= 1
            userDefaults.set(ScrapWoodV, forKey: "ScrapWoodV")
            ScrapWoodL.text = "\(ScrapWoodV)"
        }
    }
    
    @IBAction func StoneC(_ sender: Any) {
        if RockV >= 1 && GrinderV >= 1{
            StoneV += 1
            userDefaults.set(StoneV, forKey: "StoneV")
            StoneL.text = "\(StoneV)"
            RockV -= 1
            userDefaults.set(RockV, forKey: "RockV")
            RockL.text = "\(RockV)"
        }
    }
    
    @IBAction func PlankC(_ sender: Any) {
        if ScrapWoodV >= 2 && GrinderV >= 1{
            PlankV += 1
            userDefaults.set(PlankV, forKey: "PlankV")
            PlankL.text = "\(PlankV)"
            ScrapWoodV -= 2
            userDefaults.set(ScrapWoodV, forKey: "ScrapWoodV")
            ScrapWoodL.text = "\(ScrapWoodV)"
        }
    }
    
    @IBAction func IronC(_ sender: Any) {
        if IronOreV >= 1 && FireWoodV >= 1 && FurnaceV >= 1{
            IronV += 1
            userDefaults.set(IronV, forKey: "IronV")
            IronL.text = "\(IronV)"
            IronOreV -= 1
            userDefaults.set(IronOreV, forKey: "IronOreV")
            IronOreL.text = "\(IronOreV)"
            FireWoodV -= 1
            userDefaults.set(FireWoodV, forKey: "FireWoodV")
            FireWoodL.text = "\(FireWoodV)"
        }
    }
    
    @IBAction func NailC(_ sender: Any) {
        if IronV >= 1 && AnvilV >= 1{
            NailV += 5
            userDefaults.set(NailV, forKey: "NailV")
            NailL.text = "\(NailV)"
            IronV -= 1
            userDefaults.set(IronV, forKey: "IronV")
            IronL.text = "\(IronV)"
        }
    }
    
    @IBAction func IronPartsC(_ sender: Any) {
        if IronV >= 1 && AnvilV >= 1{
            IronPartsV += 3
            userDefaults.set(IronPartsV, forKey: "IronPartsV")
            IronPartsL.text = "\(IronPartsV)"
            IronV -= 1
            userDefaults.set(IronV, forKey: "IronV")
            IronL.text = "\(IronV)"
        }
    }
    
    
    
    @IBAction func Needed(_ sender: Any) {
        
        LogNA.text = "Needed:"
        RockNA.text = "Needed:"
        ScrapWoodNA.text = "Needed:"
        FireWoodNA.text = "Needed:"
        StoneNA.text = "Needed:"
        PlankNA.text = "Needed:"
        IronNA.text = "Needed:"
        NailNA.text = "Needed:"
        IronPartNA.text = "Needed:"
        
        LogNNA.text = "Nothing"
        RockNNA.text = "Nothing"
        ScrapWoodNNA.text = "Log"
        FireWoodNNA.text = "Scrap Wood"
        StoneNNA.text = "Rock"
        PlankNNA.text = "2 Scrap Wood"
        IronNNA.text = "Iron Ore"
        NailNNA.text = "Iron"
        IronPartsNNA.text = "Iron"
        
        IronNNNA.text = "Fire Wood"
    }
    
    @IBAction func Amount(_ sender: Any) {
        
        LogNA.text = "Amount:"
        RockNA.text = "Amount:"
        ScrapWoodNA.text = "Amount:"
        FireWoodNA.text = "Amount:"
        StoneNA.text = "Amount:"
        PlankNA.text = "Amount:"
        IronNA.text = "Amount:"
        NailNA.text = "Amount:"
        IronPartNA.text = "Amount:"
        
        LogNNA.text = "1"
        RockNNA.text = "1"
        ScrapWoodNNA.text = "5"
        FireWoodNNA.text = "1"
        StoneNNA.text = "1"
        PlankNNA.text = "1"
        IronNNA.text = "1"
        NailNNA.text = "5"
        IronPartsNNA.text = "3"
        
        IronNNNA.text = ""
    }
    
    
}
class Town: UIViewController {
    
    @IBOutlet weak var LandL: UILabel!
    @IBOutlet weak var HouseL: UILabel!
    @IBOutlet weak var RoadL: UILabel!
    @IBOutlet weak var TownL: UILabel!
    @IBOutlet weak var CastleWallL: UILabel!
    @IBOutlet weak var CastleL: UILabel!
    @IBOutlet weak var RCWL: UILabel!
    @IBOutlet weak var KingdomL: UILabel!
    @IBOutlet weak var EmpireL: UILabel!
    
    
    @IBOutlet weak var HouseNA: UILabel!
    @IBOutlet weak var RoadNA: UILabel!
    @IBOutlet weak var TownNA: UILabel!
    @IBOutlet weak var CastleWallNA: UILabel!
    @IBOutlet weak var CastleNA: UILabel!
    @IBOutlet weak var RCWNA: UILabel!
    @IBOutlet weak var KIngdomNA: UILabel!
    @IBOutlet weak var EmpireNA: UILabel!
    
    @IBOutlet weak var HouseNNA: UILabel!
    @IBOutlet weak var RoadNNA: UILabel!
    @IBOutlet weak var TownNNA: UILabel!
    @IBOutlet weak var CastleWallNNA: UILabel!
    @IBOutlet weak var CastleNNA: UILabel!
    @IBOutlet weak var RCWNNA: UILabel!
    @IBOutlet weak var KingdomNNA: UILabel!
    @IBOutlet weak var EmpireNNA: UILabel!
    
    @IBOutlet weak var HouseNNNA: UILabel!
    @IBOutlet weak var TownNNNA: UILabel!
    @IBOutlet weak var CastleNNNA: UILabel!
    @IBOutlet weak var RCWNNNA: UILabel!
    @IBOutlet weak var KingdomNNNA: UILabel!
    
    @IBOutlet weak var HouseNNNNA: UILabel!
    @IBOutlet weak var KingdomNNNNA: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.setToolbarHidden(false, animated: false)
        
        
        LandV = userDefaults.integer(forKey: "LandV")
        HouseV = userDefaults.integer(forKey: "HouseV")
        RoadV = userDefaults.integer(forKey: "RoadV")
        TownV = userDefaults.integer(forKey: "TownV")
        CastleWallV = userDefaults.integer(forKey: "CastleWallV")
        CastleV = userDefaults.integer(forKey: "CastleWallV")
        RCWV = userDefaults.integer(forKey: "RCWV")
        KingdomV = userDefaults.integer(forKey: "KingdomV")
        EmpireV = userDefaults.integer(forKey: "EmpireV")
        
        LandL.text = "\(LandV)"
        HouseL.text = "\(HouseV)"
        RoadL.text = "\(RoadV)"
        TownL.text = "\(TownV)"
        CastleWallL.text = "\(CastleWallV)"
        CastleL.text = "\(CastleV)"
        RCWL.text = "\(RCWV)"
        KingdomL.text = "\(KingdomV)"
        EmpireL.text = "\(EmpireV)"
        
        
        
    }
    
    
    
    @IBAction func HouseC(_ sender: Any) {
        if WallV >= 4 && DoorV >= 1 && RoofV >= 1 && IronPartsV >= 30 && FrameV >= 1 {
            HouseV += 1
            UnEmployedV += 3
            userDefaults.set(UnEmployedV, forKey: "UnEmployedV")
            HouseL.text = "\(HouseV)"
            userDefaults.set(HouseV, forKey: "HouseV")
            WallV -= 4
            userDefaults.set(WallV, forKey: "WallV")
            DoorV -= 1
            userDefaults.set(RoofV, forKey: "RoofV")
            RoofV -= 1
            userDefaults.set(RoofV, forKey: "RoofV")
            FrameV -= 1
            userDefaults.set(FrameV, forKey: "FrameV")
            IronPartsV -= 30
            userDefaults.set(IronPartsV, forKey: "IronPartsV")
        }
    }
    
    @IBAction func RoadC(_ sender: Any) {
        if StoneV >= 12 {
            RoadV += 1
            userDefaults.set(RoadV, forKey: "RoadV")
            RoadL.text = "\(RoadV)"
            StoneV -= 12
            userDefaults.set(StoneV, forKey: "StoneV")
        }
    }
    
    @IBAction func TownC(_ sender: Any) {
        if HouseV >= 20 && RoadV >= 50 && LandV >= 100 {
            TownV += 1
            userDefaults.set(TownV, forKey: "TownV")
            TownL.text = "\(TownV)"
            HouseV -= 20
            userDefaults.set(HouseV, forKey: "HouseV")
            HouseL.text = "\(HouseV)"
            RoadV -= 50
            userDefaults.set(RoadV, forKey: "RoadV")
            RoadL.text = "\(RoadV)"
            LandV -= 100
            userDefaults.set(LandV, forKey: "LandV")
            LandL.text = "\(LandV)"
        }
    }
    
    @IBAction func CastleWallC(_ sender: Any) {
        if StoneV >= 260 {
            CastleWallV += 1
            userDefaults.set(CastleWallV, forKey: "CastleWallV")
            CastleWallL.text = "\(CastleWallV)"
            StoneV -= 260
            userDefaults.set(StoneV, forKey: "StoneV")
        }
    }
    
    @IBAction func CastleC(_ sender: Any) {
        if TownV >= 15 && CastleWallV >= 4 && LandV >= 1000{
            CastleV += 1
            userDefaults.set(CastleV, forKey: "CastleV")
            CastleL.text = "\(CastleV)"
            TownV -= 15
            userDefaults.set(TownV, forKey: "TownV")
            TownL.text = "\(TownV)"
            CastleWallV -= 4
            userDefaults.set(CastleWallV, forKey: "CastleWallV")
            CastleWallL.text = "\(CastleWallV)"
            LandV -= 1000
            userDefaults.set(LandV, forKey: "LandV")
            LandL.text = "\(LandV)"
        }
    }
    
    @IBAction func RCWC(_ sender: Any) {
        if StoneV >= 1000 && IronV >= 200 {
            RCWV += 1
            userDefaults.set(RCWV, forKey: "RCWV")
            RCWL.text = "\(RCWV)"
            StoneV -= 1000
            userDefaults.set(StoneV, forKey: "StoneV")
            IronV -= 200
            userDefaults.set(IronV, forKey: "IronV")
        }
    }
    
    @IBAction func KingdomC(_ sender: Any) {
        if RCWV >= 4 && CastleV >= 25 && LandV >= 10000{
            KingdomV += 1
            userDefaults.set(KingdomV, forKey: "KingdomV")
            KingdomL.text = "\(KingdomV)"
            RCWV -= 4
            userDefaults.set(RCWV, forKey: "RCWV")
            RCWL.text = "\(RCWV)"
            CastleV -= 25
            userDefaults.set(CastleV, forKey: "CastleV")
            CastleL.text = "\(CastleV)"
            LandV -= 10000
            userDefaults.set(LandV, forKey: "LandV")
            LandL.text = "\(LandV)"
        }
    }
    
    @IBAction func EmpireC(_ sender: Any) {
        if KingdomV >= 100 && LandV >= 1000000{
            EmpireV += 1
            userDefaults.set(EmpireV, forKey: "EmpireV")
            EmpireL.text = "\(EmpireV)"
            KingdomV -= 100
            userDefaults.set(KingdomV, forKey: "KingdomV")
            KingdomL.text = "\(KingdomV)"
            LandV -= 1000000
            userDefaults.set(LandV, forKey: "LandV")
            LandL.text = "\(LandV)"
        }
    }
    
    
    
    
    @IBAction func NeededC(_ sender: Any) {
        HouseNA.text = "Needed:"
        RoadNA.text = "Needed:"
        TownNA.text = "Needed:"
        CastleWallNA.text = "Needed:"
        CastleNA.text = "Needed:"
        RCWNA.text = "Needed:"
        KIngdomNA.text = "Needed:"
        EmpireNA.text = "Needed:"
        
        HouseNNA.text = "4 Walls, Door,"
        RoadNNA.text = "12 Stone"
        TownNNA.text = "50 Houses"
        CastleNNA.text = "260 Stone"
        CastleWallNNA.text = "15 Towns"
        RCWNNA.text = "1000 Stone"
        KingdomNNA.text = "4 Reienforced"
        EmpireNNA.text = "100 Kingdoms"
        
        HouseNNNA.text = "Roof, 30 Parts,"
        TownNNNA.text = "50 Roads"
        CastleNNNA.text = "4 Castle Walls"
        RCWNNNA.text = "200 Iron"
        KingdomNNNA.text = "Kingdom Walls,"
        
        HouseNNNNA.text = "Frame"
        KingdomNNNNA.text = "25 Castles"
    }
    
    @IBAction func AmountC(_ sender: Any) {
        HouseNA.text = "Amount:"
        RoadNA.text = "Amount:"
        TownNA.text = "Amount:"
        CastleWallNA.text = "Amount:"
        CastleNA.text = "Amount:"
        RCWNA.text = "Amount:"
        KIngdomNA.text = "Amount:"
        EmpireNA.text = "Amount:"
        
        HouseNNA.text = "1"
        RoadNNA.text = "1"
        TownNNA.text = "1"
        CastleNNA.text = "1"
        CastleWallNNA.text = "1"
        RCWNNA.text = "1"
        KingdomNNA.text = "1"
        EmpireNNA.text = "1"
        
        HouseNNNA.text = ""
        TownNNNA.text = ""
        CastleNNNA.text = ""
        RCWNNNA.text = ""
        KingdomNNNA.text = ""
        
        HouseNNNNA.text = ""
        KingdomNNNNA.text = ""
    }
    
    
}

class People: UIViewController {
    
    @IBOutlet weak var EmployedL: UILabel!
    @IBOutlet weak var UnEmployedL: UILabel!
    @IBOutlet weak var FarmerL: UILabel!
    @IBOutlet weak var MinerL: UILabel!
    @IBOutlet weak var LumberJackL: UILabel!
    @IBOutlet weak var CrafterL: UILabel!
    @IBOutlet weak var CarverL: UILabel!
    @IBOutlet weak var BSIL: UILabel!
    @IBOutlet weak var BSNL: UILabel!
    @IBOutlet weak var BSPL: UILabel!
    
    
    @IBOutlet weak var FarmerNA: UILabel!
    @IBOutlet weak var MinerNA: UILabel!
    @IBOutlet weak var LumberJackNA: UILabel!
    @IBOutlet weak var CrafterNA: UILabel!
    @IBOutlet weak var CarverNA: UILabel!
    @IBOutlet weak var BSINA: UILabel!
    @IBOutlet weak var BSNNA: UILabel!
    @IBOutlet weak var BSPNA: UILabel!
    
    @IBOutlet weak var FarmerNNA: UILabel!
    @IBOutlet weak var MinerNNA: UILabel!
    @IBOutlet weak var LumberJackNNA: UILabel!
    @IBOutlet weak var CrafterNNA: UILabel!
    @IBOutlet weak var CarverNNA: UILabel!
    @IBOutlet weak var BSINNA: UILabel!
    @IBOutlet weak var BSNNNA: UILabel!
    @IBOutlet weak var BSPNNA: UILabel!
    
    
    
    @IBAction func FarmerC(_ sender: Any) {
        if HoeV >= 1 && UnEmployedV >= 1{
            FarmerV += 1
            userDefaults.set(FarmerV, forKey: "FarmerV")
            FarmerL.text = "\(FarmerV)"
            UnEmployedV -= 1
            userDefaults.set(UnEmployedV, forKey: "UnEmployedV")
            UnEmployedL.text = "\(UnEmployedV)"
            EmployedV += 1
            userDefaults.set(EmployedV, forKey: "EmployedV")
            EmployedL.text = "\(EmployedV)"
            HoeV -= 1
            userDefaults.set(HoeV, forKey: "HoeV")
        }
    }
    
    @IBAction func MinerC(_ sender: Any) {
        if PickV >= 1 && UnEmployedV >= 1{
            MinerV += 1
            userDefaults.set(MinerV, forKey: "MinerV")
            MinerL.text = "\(MinerV)"
            UnEmployedV -= 1
            userDefaults.set(UnEmployedV, forKey: "UnEmployedV")
            UnEmployedL.text = "\(UnEmployedV)"
            EmployedV += 1
            userDefaults.set(EmployedV, forKey: "EmployedV")
            EmployedL.text = "\(EmployedV)"
            PickV -= 1
            userDefaults.set(PickV, forKey: "PickV")
            if MinerVC == false {
                timer()
            }
        }
    }
    @IBAction func LumberJackC(_ sender: Any) {
        if AxeV >= 1 && UnEmployedV >= 1{
            LumberJackV += 1
            userDefaults.set(LumberJackV, forKey: "LumberJackV")
            LumberJackL.text = "\(LumberJackV)"
            UnEmployedV -= 1
            userDefaults.set(UnEmployedV, forKey: "UnEmployedV")
            UnEmployedL.text = "\(UnEmployedV)"
            EmployedV += 1
            userDefaults.set(EmployedV, forKey: "EmployedV")
            EmployedL.text = "\(EmployedV)"
            AxeV -= 1
            userDefaults.set(AxeV, forKey: "AxeV")
            if MinerVC == false {
                timer()
            }
        }
    }
    @IBAction func CrafterC(_ sender: Any) {
        if GrinderV >= 1 && UnEmployedV >= 1{
            CrafterV += 1
            userDefaults.set(CrafterV, forKey: "CrafterV")
            CrafterL.text = "\(CrafterV)"
            UnEmployedV -= 1
            userDefaults.set(UnEmployedV, forKey: "UnEmployedV")
            UnEmployedL.text = "\(UnEmployedV)"
            EmployedV += 1
            userDefaults.set(EmployedV, forKey: "EmployedV")
            EmployedL.text = "\(EmployedV)"
            GrinderV -= 1
            userDefaults.set(GrinderV, forKey: "GrinderV")
            if MinerVC == false {
                timer()
            }
        }
    }
    
    @IBAction func CarverC(_ sender: Any) {
        if GrinderV >= 1 && UnEmployedV >= 1{
            CarverV += 1
            userDefaults.set(CarverV, forKey: "CarverV")
            CarverL.text = "\(CarverV)"
            UnEmployedV -= 1
            userDefaults.set(UnEmployedV, forKey: "UnEmployedV")
            UnEmployedL.text = "\(UnEmployedV)"
            EmployedV += 1
            userDefaults.set(EmployedV, forKey: "EmployedV")
            EmployedL.text = "\(EmployedV)"
            GrinderV -= 1
            userDefaults.set(GrinderV, forKey: "GrinderV")
            if MinerVC == false {
                timer()
            }
        }
    }
    
    @IBAction func BSIC(_ sender: Any) {
        if  FurnaceV >= 1 && UnEmployedV >= 1{
            BSIV += 1
            userDefaults.set(BSIV, forKey: "BSIV")
            BSIL.text = "\(BSIV)"
            UnEmployedV -= 1
            userDefaults.set(UnEmployedV, forKey: "UnEmployedV")
            UnEmployedL.text = "\(UnEmployedV)"
            EmployedV += 1
            userDefaults.set(EmployedV, forKey: "EmployedV")
            EmployedL.text = "\(EmployedV)"
            FurnaceV -= 1
            userDefaults.set(FurnaceV, forKey: "FurnaceV")
            if MinerVC == false {
                timer()
            }
            
        }
    }
    
    @IBAction func BSNC(_ sender: Any) {
        if AnvilV >= 1 && UnEmployedV >= 1{
            BSNV += 1
            userDefaults.set(BSNV, forKey: "BSNV")
            BSNL.text = "\(BSNV)"
            UnEmployedV -= 1
            userDefaults.set(UnEmployedV, forKey: "UnEmployedV")
            UnEmployedL.text = "\(UnEmployedV)"
            EmployedV += 1
            userDefaults.set(EmployedV, forKey: "EmployedV")
            EmployedL.text = "\(EmployedV)"
            AnvilV -= 1
            userDefaults.set(AnvilV, forKey: "AnvilV")
            if MinerVC == false {
                timer()
            }
        }
    }
    
    @IBAction func BSPC(_ sender: Any) {
        if AnvilV >= 1 && UnEmployedV >= 1{
            BSPV += 1
            userDefaults.set(BSPV, forKey: "BSPV")
            BSPL.text = "\(BSPV)"
            UnEmployedV -= 1
            userDefaults.set(UnEmployedV, forKey: "UnEmployedV")
            UnEmployedL.text = "\(UnEmployedV)"
            EmployedV += 1
            userDefaults.set(EmployedV, forKey: "EmployedV")
            EmployedL.text = "\(EmployedV)"
            AnvilV -= 1
            userDefaults.set(AnvilV, forKey: "AnvilV")
            if MinerVC == false {
                timer()
            }
        }
    }
    
    @IBAction func NeededC(_ sender: Any) {
        
        
        FarmerNA.text = "Needed:"
        MinerNA.text = "Needed:"
        LumberJackNA.text = "Needed:"
        CrafterNA.text = "Needed:"
        CarverNA.text = "Needed:"
        BSINA.text = "Needed:"
        BSNNA.text = "Needed:"
        BSPNA.text = "Needed:"
        
        FarmerNNA.text = "Axe"
        MinerNNA.text = "PickAxe"
        LumberJackNNA.text = "Axe"
        CrafterNNA.text = "Grinder"
        CarverNNA.text = "Grinder"
        BSINNA.text = "Furnace"
        BSNNNA.text = "Anvil"
        BSPNNA.text = "Anvil"
        
    }
    
    
    @IBAction func AmountC(_ sender: Any) {
        
        
        FarmerNA.text = "Amount:"
        MinerNA.text = "Amount:"
        LumberJackNA.text = "Amount:"
        CrafterNA.text = "Amount:"
        CarverNA.text = "Amount:"
        BSINA.text = "Amount:"
        BSNNA.text = "Amount:"
        BSPNA.text = "Amount:"
        
        FarmerNNA.text = "1"
        MinerNNA.text = "1"
        LumberJackNNA.text = "1"
        CrafterNNA.text = "1"
        CarverNNA.text = "1"
        BSINNA.text = "1"
        BSNNNA.text = "1"
        BSPNNA.text = "1"
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.setToolbarHidden(false, animated: false)
        
        
        EmployedV = userDefaults.integer(forKey: "EmployedV")
        UnEmployedV = userDefaults.integer(forKey: "UnEmployedV")
        FarmerV = userDefaults.integer(forKey: "FarmerV")
        MinerV = userDefaults.integer(forKey: "MinerV")
        LumberJackV = userDefaults.integer(forKey: "LumberJackV")
        CrafterV = userDefaults.integer(forKey: "CrafterV")
        CarverV = userDefaults.integer(forKey: "CarverV")
        BSIV = userDefaults.integer(forKey: "BSIV")
        BSNV = userDefaults.integer(forKey: "BSNV")
        BSPV = userDefaults.integer(forKey: "BSPV")
        
        UnEmployedL.text = "\(UnEmployedV)"
        EmployedL.text = "\(EmployedV)"
        FarmerL.text = "\(FarmerV)"
        MinerL.text = "\(MinerV)"
        LumberJackL.text = "\(LumberJackV)"
        CrafterL.text = "\(CrafterV)"
        UnEmployedL.text = "\(UnEmployedV)"
        BSIL.text = "\(BSIV)"
        BSNL.text = "\(BSNV)"
        BSPL.text = "\(BSPV)"
        
    }
}

class Tool: UIViewController {
    
    @IBOutlet weak var StickL: UILabel!
    @IBOutlet weak var AxeL: UILabel!
    @IBOutlet weak var PickL: UILabel!
    @IBOutlet weak var HoeL: UILabel!
    @IBOutlet weak var ScaleL: UILabel!
    @IBOutlet weak var SwordL: UILabel!
    @IBOutlet weak var BowL: UILabel!
    @IBOutlet weak var ArrowL: UILabel!
    @IBOutlet weak var BowNArrowL: UILabel!
    
    
    @IBOutlet weak var StickNA: UILabel!
    @IBOutlet weak var AxeNA: UILabel!
    @IBOutlet weak var PickNA: UILabel!
    @IBOutlet weak var HoeNA: UILabel!
    @IBOutlet weak var ScaleNA: UILabel!
    @IBOutlet weak var SwordNA: UILabel!
    @IBOutlet weak var BowNA: UILabel!
    @IBOutlet weak var ArrowNA: UILabel!
    @IBOutlet weak var BowNArrowNA: UILabel!
    
    @IBOutlet weak var StickNNA: UILabel!
    @IBOutlet weak var AxeNNA: UILabel!
    @IBOutlet weak var PickNNA: UILabel!
    @IBOutlet weak var HoeNNA: UILabel!
    @IBOutlet weak var ScaleNNA: UILabel!
    @IBOutlet weak var SwordNNA: UILabel!
    @IBOutlet weak var BowNNA: UILabel!
    @IBOutlet weak var ArrowNNA: UILabel!
    @IBOutlet weak var BowNArrowNNA: UILabel!
    
    
    
    @IBAction func StickC(_ sender: Any) {
        if ScrapWoodV >= 1{
            StickV += 3
            userDefaults.set(StickV, forKey: "StickV")
            StickL.text = "\(StickV)"
            ScrapWoodV -= 1
            userDefaults.set(ScrapWoodV, forKey: "ScrapWoodV")
        }
    }
    
    @IBAction func AxeC(_ sender: Any) {
        if IronV >= 3 && StickV >= 1 {
            AxeV += 1
            userDefaults.set(AxeV, forKey: "AxeV")
            AxeL.text = "\(AxeV)"
            StickV -= 1
            userDefaults.set(StickV, forKey: "StickV")
            StickL.text = "\(StickV)"
            IronV -= 3
            userDefaults.set(IronV, forKey: "IronV")
        }
    }
    
    @IBAction func PickC(_ sender: Any) {
        if IronV >= 3 && StickV >= 2 {
            PickV += 1
            userDefaults.set(PickV, forKey: "PickV")
            PickL.text = "\(PickV)"
            StickV -= 2
            userDefaults.set(StickV, forKey: "StickV")
            StickL.text = "\(StickV)"
            IronV -= 3
            userDefaults.set(IronV, forKey: "IronV")
        }
    }
    
    @IBAction func HoeC(_ sender: Any) {
        if IronV >= 2 && StickV >= 2 {
            HoeV += 1
            userDefaults.set(HoeV, forKey: "HoeV")
            HoeL.text = "\(HoeV)"
            StickV -= 2
            userDefaults.set(StickV, forKey: "StickV")
            StickL.text = "\(StickV)"
            IronV -= 2
            userDefaults.set(IronV, forKey: "IronV")
        }
    }
    
    @IBAction func ScaleC(_ sender: Any) {
        if IronV >= 4 {
            ScaleV += 1
            userDefaults.set(ScaleV, forKey: "ScaleV")
            ScaleL.text = "\(ScaleV)"
            IronV -= 4
            userDefaults.set(IronV, forKey: "IronV")
        }
    }
    
    @IBAction func SwordC(_ sender: Any) {
        if IronV >= 3 && StickV >= 1 {
            SwordV += 1
            userDefaults.set(SwordV, forKey: "SwordV")
            SwordL.text = "\(SwordV)"
            StickV -= 1
            userDefaults.set(StickV, forKey: "StickV")
            StickL.text = "\(StickV)"
            IronV -= 3
            userDefaults.set(IronV, forKey: "IronV")
        }
    }
    
    @IBAction func BowC(_ sender: Any) {
        if StickV >= 5 {
            BowV += 1
            userDefaults.set(BowV, forKey: "BowV")
            BowL.text = "\(BowV)"
            StickV -= 5
            userDefaults.set(StickV, forKey: "StickV")
            StickL.text = "\(StickV)"
        }
    }
    
    @IBAction func ArrowC(_ sender: Any) {
        if IronV >= 1 && StickV >= 3 {
            ArrowV += 1
            userDefaults.set(ArrowV, forKey: "ArrowV")
            ArrowL.text = "\(ArrowV)"
            StickV -= 3
            userDefaults.set(StickV, forKey: "StickV")
            StickL.text = "\(StickV)"
            IronV -= 1
            userDefaults.set(IronV, forKey: "IronV")
        }
    }
    
    @IBAction func BowNArrowC(_ sender: Any) {
        if BowV >= 1 && ArrowV >= 9 {
            BowNArrowV += 1
            userDefaults.set(BowNArrowV, forKey: "BowNArrowV")
            BowNArrowL.text = "\(BowNArrowV)"
            BowV -= 1
            userDefaults.set(BowV, forKey: "BowV")
            BowL.text = "\(BowV)"
            ArrowV -= 9
            userDefaults.set(ArrowV, forKey: "ArrowV")
            ArrowL.text = "\(ArrowV)"
        }
    }
    
    @IBAction func NeededC(_ sender: Any) {
        StickNA.text = "Needed:"
        AxeNA.text = "Needed:"
        PickNA.text = "Needed:"
        HoeNA.text = "Needed:"
        ScaleNA.text = "Needed:"
        SwordNA.text = "Needed:"
        BowNA.text = "Needed:"
        ArrowNA.text = "Needed:"
        BowNArrowNA.text = "Needed:"
        
        StickNNA.text = "ScrapWood"
        AxeNNA.text = "3 Iron Stick"
        PickNNA.text = "3 Iron 2 Stick"
        HoeNNA.text = "2 Iron 2 Stick"
        ScaleNNA.text = "4 Iron"
        SwordNNA.text = "2 Stick 3 Iron"
        BowNNA.text = "5 Stick"
        ArrowNNA.text = "1 Iron 3 Stick"
        BowNArrowNNA.text = "Bow 9 Arrows"
        
        
    }
    
    @IBAction func AmountC(_ sender: Any) {
        StickNA.text = "Amount:"
        AxeNA.text = "Amount:"
        PickNA.text = "Amount:"
        HoeNA.text = "Amount:"
        ScaleNA.text = "Amount:"
        SwordNA.text = "Amount:"
        BowNA.text = "Amount:"
        ArrowNA.text = "Amount:"
        BowNArrowNA.text = "Amount:"
        
        StickNNA.text = "3"
        AxeNNA.text = "1"
        PickNNA.text = "1"
        HoeNNA.text = "1"
        ScaleNNA.text = "1"
        SwordNNA.text = "1"
        BowNNA.text = "1"
        ArrowNNA.text = "1"
        BowNArrowNNA.text = "1"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.setToolbarHidden(false, animated: false)
        
        StickV = userDefaults.integer(forKey: "StickV")
        AxeV = userDefaults.integer(forKey: "AxeV")
        PickV = userDefaults.integer(forKey: "PickV")
        HoeV = userDefaults.integer(forKey: "HoeV")
        ScaleV = userDefaults.integer(forKey: "ScaleV")
        SwordV = userDefaults.integer(forKey: "SwordV")
        BowV = userDefaults.integer(forKey: "BowV")
        ArrowV = userDefaults.integer(forKey: "ArrowV")
        BowNArrowV = userDefaults.integer(forKey: "BowNArrowV")
        
        StickL.text = "\(StickV)"
        AxeL.text = "\(AxeV)"
        PickL.text = "\(PickV)"
        HoeL.text = "\(HoeV)"
        ScaleL.text = "\(ScaleV)"
        SwordL.text = "\(SwordV)"
        BowL.text = "\(BowV)"
        ArrowL.text = "\(ArrowV)"
        BowNArrowL.text = "\(BowNArrowV)"
        
    }
    
}

class Army: UIViewController {
    
    @IBOutlet var FenceL: UILabel!
    @IBOutlet var CampL: UILabel!
    @IBOutlet var GeneralL: UILabel!
    @IBOutlet var SoldierL: UILabel!
    @IBOutlet var ASoldierL: UILabel!
    @IBOutlet var BarracksL: UILabel!
    @IBOutlet var ArcharyRangeL: UILabel!
    @IBOutlet var SwordManL: UILabel!
    @IBOutlet var ArcherL: UILabel!
    @IBOutlet var LandL: UILabel!
    
    
    @IBOutlet var FenceNA: UILabel!
    @IBOutlet var CampNA: UILabel!
    @IBOutlet var GeneralNA: UILabel!
    @IBOutlet var SoldierNA: UILabel!
    @IBOutlet var BarracksNA: UILabel!
    @IBOutlet var ArcharyRangeNA: UILabel!
    @IBOutlet var SwordManNA: UILabel!
    @IBOutlet var ArcherNA: UILabel!
    
    @IBOutlet var FenceNNA: UILabel!
    @IBOutlet var CampNNA: UILabel!
    @IBOutlet var GeneralNNA: UILabel!
    @IBOutlet var SoldierNNA: UILabel!
    @IBOutlet var BarracksNNA: UILabel!
    @IBOutlet var ArcharyRangeNNA: UILabel!
    @IBOutlet var SwordManNNA: UILabel!
    @IBOutlet var ArcherNNA: UILabel!
    
    
    @IBOutlet var FenceNNNA: UILabel!
    @IBOutlet var ArcherNNNA: UILabel!
    
    
    @IBAction func FenceC(_ sender: Any) {
        if BeamV >= 6 && IronPartsV >= 2 && NailV >= 8 {
            FenceV += 1
            userDefaults.set(FenceV, forKey: "FenceV")
            FenceL.text = "\(FenceV)"
            BeamV -= 6
            userDefaults.set(BeamV, forKey: "BeamV")
            IronPartsV -= 2
            userDefaults.set(IronPartsV, forKey: "IronPartsV")
            NailV -= 8
            userDefaults.set(NailV, forKey: "NailV")
        }
    }
    
    @IBAction func CampC(_ sender: Any) {
        if FenceV >= 64 {
            CampV += 3
            userDefaults.set(CampV, forKey: "CampV")
            CampL.text = "\(CampV)"
            FenceV -= 64
            userDefaults.set(FenceV, forKey: "FenceV")
            FenceL.text = "\(FenceV)"
        }
    }
    
    @IBAction func GeneralC(_ sender: Any) {
        if CampV >= 1 && UnEmployedV >= 1{
            GeneralV += 1
            userDefaults.set(GeneralV, forKey: "GeneralV")
            FenceL.text = "\(FenceV)"
            CampV -= 1
            userDefaults.set(CampV, forKey: "CampV")
            CampL.text = "\(CampV)"
            UnEmployedV -= 1
        }
    }
    
    @IBAction func SoldierC(_ sender: Any) {
        if ScaleV >= 1 && UnEmployedV >= 1  && (ASoldierV - (GeneralV * 50)) < 50{
            SoldierV += 1
            ASoldierV += 1
            userDefaults.set(SoldierV, forKey: "SoldierV")
            userDefaults.set(ASoldierV, forKey: "ASoldierV")
            SoldierL.text = "\(SoldierV)"
            ScaleV -= 1
            userDefaults.set(ScaleV, forKey: "ScaleV")
            UnEmployedV -= 1
            userDefaults.set(UnEmployedV, forKey: "UnEmployedV")
        }
    }
    
    @IBAction func BarracksC(_ sender: Any) {
        if FenceV >= 128 {
            BarracksV += 1
            userDefaults.set(BarracksV, forKey: "BarracksV")
            BarracksL.text = "\(BarracksV)"
            FenceV -= 128
            userDefaults.set(FenceV, forKey: "FenceV")
            FenceL.text = "\(FenceV)"
        }
    }
    
    @IBAction func ArcharyRangeC(_ sender: Any) {
        if FenceV >= 128 {
            ArcharyRangeV += 1
            userDefaults.set(ArcharyRangeV, forKey: "ArcharyRangeV")
            ArcharyRangeL.text = "\(ArcharyRangeV)"
            FenceV -= 128
            userDefaults.set(FenceV, forKey: "FenceV")
            FenceL.text = "\(FenceV)"
        }
    }
    
    @IBAction func SwordManC(_ sender: Any) {
        if SoldierV >= 1 && UnEmployedV >= 1 {
            SwordManV += 1
            userDefaults.set(SwordManV, forKey: "SwordManV")
            SwordManL.text = "\(SwordManV)"
            SoldierV -= 1
            userDefaults.set(SoldierV, forKey: "SoldierV")
            UnEmployedV -= 1
            userDefaults.set(UnEmployedV, forKey: "UnEmployedV")
        }
    }
    
    @IBAction func ArcherC(_ sender: Any) {
        if SoldierV >= 1 && UnEmployedV >= 1 {
            ArcherV += 1
            userDefaults.set(ArcherV, forKey: "ArcherV")
            ArcherL.text = "\(ArcherC)"
            SoldierV -= 1
            userDefaults.set(SoldierV, forKey: "SoldierV")
            UnEmployedV -= 1
            userDefaults.set(UnEmployedV, forKey: "UnEmployedV")
        }
    }
    func NeededC() {
        FenceNA.text = "Needed:"
        CampNA.text = "Needed:"
        GeneralNA.text = "Needed:"
        SoldierNA.text = "Needed:"
        BarracksNA.text = "Needed:"
        ArcharyRangeNA.text = "Needed:"
        SwordManNA.text = "Needed:"
        ArcherNA.text = "Needed:"
        
        FenceNNA.text = "6 Beam 2 Parts"
        CampNNA.text = "64 Fences"
        GeneralNNA.text = "Camp Person"
        SoldierNNA.text = "Person"
        BarracksNNA.text = "128 Fences"
        ArcharyRangeNNA.text = "128 Fences"
        SwordManNNA.text = "Soldier Sword"
        ArcherNNA.text = "Soldier"
        
        FenceNNNA.text = "8 Nails"
        ArcherNNNA.text = "Bow N Arrow"
    }
    
    @IBAction func Needed(_ sender: Any) {
        NeededC()
    }
    
    @IBAction func Amount(_ sender: Any) {
        FenceNA.text = "Amount:"
        CampNA.text = "Amount:"
        GeneralNA.text = "Amount:"
        SoldierNA.text = "Amount:"
        BarracksNA.text = "Amount:"
        ArcharyRangeNA.text = "Amount:"
        SwordManNA.text = "Amount:"
        ArcherNA.text = "Amount:"
        
        FenceNNA.text = "1"
        CampNNA.text = "1"
        GeneralNNA.text = "1"
        SoldierNNA.text = "1"
        BarracksNNA.text = "1"
        ArcharyRangeNNA.text = "1"
        SwordManNNA.text = "1"
        ArcherNNA.text = "1"
        
        FenceNNNA.text = ""
        ArcherNNNA.text = ""
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.setToolbarHidden(false, animated: false)
        
        
        
        FenceV = userDefaults.integer(forKey: "FenceV")
        CampV = userDefaults.integer(forKey: "CampV")
        GeneralV = userDefaults.integer(forKey: "GeneralV")
        SoldierV = userDefaults.integer(forKey: "SoldierV")
        ASoldierV = userDefaults.integer(forKey: "ASoldierV")
        ArcharyRangeV = userDefaults.integer(forKey: "ArcharyRangeV")
        SwordManV = userDefaults.integer(forKey: "SwordManV")
        ArcherV = userDefaults.integer(forKey: "ArcherV")
        LandV = userDefaults.integer(forKey: "LandV")
        
        
        FenceL.text = "\(FenceV)"
        CampL.text = "\(CampV)"
        GeneralL.text = "\(GeneralV)"
        SoldierL.text = "\(SoldierV)"
        ASoldierL.text = "\(ASoldierV)"
        BarracksL.text = "\(BarracksV)"
        ArcharyRangeL.text = "\(ArcharyRangeV)"
        SwordManL.text = "\(SwordManV)"
        ArcherL.text = "\(ArcherV)"
        LandL.text = "\(LandV)"
    }
}

class War: UIViewController {
    
    @IBOutlet weak var CR1: UILabel!
    @IBOutlet weak var CR2: UILabel!
    @IBOutlet weak var CR3: UILabel!
    @IBOutlet weak var CR4: UILabel!
    @IBOutlet weak var CR5: UILabel!
    @IBOutlet weak var CR6: UILabel!
    @IBOutlet weak var CR7: UILabel!
    @IBOutlet weak var CR8: UILabel!
    @IBOutlet weak var CR9: UILabel!
    
    @IBOutlet weak var SM1: UILabel!
    @IBOutlet weak var SM2: UILabel!
    @IBOutlet weak var SM3: UILabel!
    @IBOutlet weak var SM4: UILabel!
    @IBOutlet weak var SM5: UILabel!
    @IBOutlet weak var SM6: UILabel!
    @IBOutlet weak var SM7: UILabel!
    @IBOutlet weak var SM8: UILabel!
    @IBOutlet weak var SM9: UILabel!
    
    @IBOutlet weak var A1: UILabel!
    @IBOutlet weak var A2: UILabel!
    @IBOutlet weak var A3: UILabel!
    @IBOutlet weak var A4: UILabel!
    @IBOutlet weak var A5: UILabel!
    @IBOutlet weak var A6: UILabel!
    @IBOutlet weak var A7: UILabel!
    @IBOutlet weak var A8: UILabel!
    @IBOutlet weak var A9: UILabel!
    
    
    func Change() {
        
        
        
        func TwoNums() -> Int {
            let num1 = Int((pow(Double(FightsNum), 1.75) / 15) + (Double(FightsNum) * 5)) + 6
            let num2 = Int((pow(Double(FightsNum), 1.75) / 10) + (Double(FightsNum) * 2.5))
            return num2 + Int(arc4random_uniform(UInt32(IfNegitive(num: (num1 - num2)))))
        }
        
        func SM(n: Int) -> Int {
            return IfNegitive(num: (n + (Int(arc4random_uniform(UInt32(Double(FightsNum) * 2.5))) - Int(arc4random_uniform(UInt32(Double(FightsNum) * 2.5))))) / 2) + Int(arc4random_uniform(2)) + 1
        }
        
        func A(n: Int, n2: Int) -> Int {
            return  IfNegitive(num: (n - n2) + (Int(arc4random_uniform(UInt32(Double(FightsNum) * 1.75))) - Int(arc4random_uniform(UInt32(Double(FightsNum) * 1.75)))))
        }
        
        CR1V = "\(TwoNums())"
        CR2V = "\(TwoNums())"
        CR3V = "\(TwoNums())"
        CR4V = "\(TwoNums())"
        CR5V = "\(TwoNums())"
        CR6V = "\(TwoNums())"
        CR7V = "\(TwoNums())"
        CR8V = "\(TwoNums())"
        CR9V = "\(TwoNums())"
        
        
        SM1V = "\(SM(n: Int(CR1V)!))"
        SM2V = "\(SM(n: Int(CR2V)!))"
        SM3V = "\(SM(n: Int(CR3V)!))"
        SM4V = "\(SM(n: Int(CR4V)!))"
        SM5V = "\(SM(n: Int(CR5V)!))"
        SM6V = "\(SM(n: Int(CR6V)!))"
        SM7V = "\(SM(n: Int(CR7V)!))"
        SM8V = "\(SM(n: Int(CR8V)!))"
        SM9V = "\(SM(n: Int(CR9V)!))"
        
        
        A1V = "\(A(n: Int(CR1V)!, n2: Int(SM1V)!))"
        A2V = "\(A(n: Int(CR1V)!, n2: Int(SM1V)!))"
        A3V = "\(A(n: Int(CR1V)!, n2: Int(SM1V)!))"
        A4V = "\(A(n: Int(CR1V)!, n2: Int(SM1V)!))"
        A5V = "\(A(n: Int(CR1V)!, n2: Int(SM1V)!))"
        A6V = "\(A(n: Int(CR1V)!, n2: Int(SM1V)!))"
        A7V = "\(A(n: Int(CR1V)!, n2: Int(SM1V)!))"
        A8V = "\(A(n: Int(CR1V)!, n2: Int(SM1V)!))"
        A9V = "\(A(n: Int(CR1V)!, n2: Int(SM1V)!))"
        
        
        userDefaults.set(CR1V, forKey: "CR1V")
        userDefaults.set(CR2V, forKey: "CR2V")
        userDefaults.set(CR3V, forKey: "CR3V")
        userDefaults.set(CR4V, forKey: "CR4V")
        userDefaults.set(CR5V, forKey: "CR5V")
        userDefaults.set(CR6V, forKey: "CR6V")
        userDefaults.set(CR7V, forKey: "CR7V")
        userDefaults.set(CR8V, forKey: "CR8V")
        userDefaults.set(CR9V, forKey: "CR9V")
        
        userDefaults.set(SM1V, forKey: "SM1V")
        userDefaults.set(SM2V, forKey: "SM2V")
        userDefaults.set(SM3V, forKey: "SM3V")
        userDefaults.set(SM4V, forKey: "SM4V")
        userDefaults.set(SM5V, forKey: "SM5V")
        userDefaults.set(SM6V, forKey: "SM6V")
        userDefaults.set(SM7V, forKey: "SM7V")
        userDefaults.set(SM8V, forKey: "SM8V")
        userDefaults.set(SM9V, forKey: "SM9V")
        
        userDefaults.set(A1V, forKey: "A1V")
        userDefaults.set(A2V, forKey: "A2V")
        userDefaults.set(A3V, forKey: "A3V")
        userDefaults.set(A4V, forKey: "A4V")
        userDefaults.set(A5V, forKey: "A5V")
        userDefaults.set(A6V, forKey: "A6V")
        userDefaults.set(A7V, forKey: "A7V")
        userDefaults.set(A8V, forKey: "A8V")
        userDefaults.set(A9V, forKey: "A9V")
        
        CR1.text = "\(CR1V)"
        CR2.text = "\(CR2V)"
        CR3.text = "\(CR3V)"
        CR4.text = "\(CR4V)"
        CR5.text = "\(CR5V)"
        CR6.text = "\(CR6V)"
        CR7.text = "\(CR7V)"
        CR8.text = "\(CR8V)"
        CR9.text = "\(CR9V)"
        
        SM1.text = "\(SM1V)"
        SM2.text = "\(SM2V)"
        SM3.text = "\(SM3V)"
        SM4.text = "\(SM4V)"
        SM5.text = "\(SM5V)"
        SM6.text = "\(SM6V)"
        SM7.text = "\(SM7V)"
        SM8.text = "\(SM8V)"
        SM9.text = "\(SM9V)"
        
        A1.text = "\(A1V)"
        A2.text = "\(A2V)"
        A3.text = "\(A3V)"
        A4.text = "\(A4V)"
        A5.text = "\(A5V)"
        A6.text = "\(A6V)"
        A7.text = "\(A7V)"
        A8.text = "\(A8V)"
        A9.text = "\(A9V)"
    }
    
    
    func Keep() {
        
        CR1V = userDefaults.string(forKey: "CR1V")!
        CR2V = userDefaults.string(forKey: "CR2V")!
        CR3V = userDefaults.string(forKey: "CR3V")!
        CR4V = userDefaults.string(forKey: "CR4V")!
        CR5V = userDefaults.string(forKey: "CR5V")!
        CR6V = userDefaults.string(forKey: "CR6V")!
        CR7V = userDefaults.string(forKey: "CR7V")!
        CR8V = userDefaults.string(forKey: "CR8V")!
        CR9V = userDefaults.string(forKey: "CR9V")!
        
        SM1V = userDefaults.string(forKey: "SM1V")!
        SM2V = userDefaults.string(forKey: "SM2V")!
        SM3V = userDefaults.string(forKey: "SM3V")!
        SM4V = userDefaults.string(forKey: "SM4V")!
        SM5V = userDefaults.string(forKey: "SM5V")!
        SM6V = userDefaults.string(forKey: "SM6V")!
        SM7V = userDefaults.string(forKey: "SM7V")!
        SM8V = userDefaults.string(forKey: "SM8V")!
        SM9V = userDefaults.string(forKey: "SM9V")!
        
        A1V = userDefaults.string(forKey: "A1V")!
        A2V = userDefaults.string(forKey: "A2V")!
        A3V = userDefaults.string(forKey: "A3V")!
        A4V = userDefaults.string(forKey: "A4V")!
        A5V = userDefaults.string(forKey: "A5V")!
        A6V = userDefaults.string(forKey: "A6V")!
        A7V = userDefaults.string(forKey: "A7V")!
        A8V = userDefaults.string(forKey: "A8V")!
        A9V = userDefaults.string(forKey: "A9V")!
        
        CR1.text = "\(CR1V)"
        CR2.text = "\(CR2V)"
        CR3.text = "\(CR3V)"
        CR4.text = "\(CR4V)"
        CR5.text = "\(CR5V)"
        CR6.text = "\(CR6V)"
        CR7.text = "\(CR7V)"
        CR8.text = "\(CR8V)"
        CR9.text = "\(CR9V)"
        
        SM1.text = "\(SM1V)"
        SM2.text = "\(SM2V)"
        SM3.text = "\(SM3V)"
        SM4.text = "\(SM4V)"
        SM5.text = "\(SM5V)"
        SM6.text = "\(SM6V)"
        SM7.text = "\(SM7V)"
        SM8.text = "\(SM8V)"
        SM9.text = "\(SM9V)"
        
        A1.text = "\(A1V)"
        A2.text = "\(A2V)"
        A3.text = "\(A3V)"
        A4.text = "\(A4V)"
        A5.text = "\(A5V)"
        A6.text = "\(A6V)"
        A7.text = "\(A7V)"
        A8.text = "\(A8V)"
        A9.text = "\(A9V)"
        
    }
    
    func Fight(SM: Int, A: Int, CR: Int) {
        func mod(O: Int, T: Int) -> Int {
         return Int((Double(O) * 1.8) + Double(T)) + Int(Double(IfNegitive(num: ((Int(arc4random_uniform(UInt32(Double(FightsNum) * 2.5)))) - Int(arc4random_uniform(UInt32(Double(FightsNum) * 2.5))))) / 2))
        }
        
        var hp = mod(O: A, T: SM) + 1
        var dmg = mod(O: SM, T: A) + 1
        var Mhp = mod(O: ArcherV, T: SwordManV) + 1
        var Mdmg = mod(O: SwordManV, T: ArcherV) + 1
        print("\( Double(Double(Mhp) / Double(dmg)))    Mhp / dmg")
        var final = 0.0
        var AL = 0
        var SML = 0
        var say = ""
        var ATSM = 0
        var SMTA = 0
        var Cross = false
        print((Double(arc4random_uniform(UInt32(100 * Double(Double(Mhp) / Double(dmg)))))) + 34000000000000)
        
        for _ in stride(from: 10, through: Int(hp), by: 1){
            if Int(((Double(arc4random_uniform(UInt32(40 * Double(Double(hp) / Double(Mdmg)))))) - Double(arc4random_uniform(UInt32(20 * Double(Double(hp) / Double(Mdmg)))))) - ((Double(arc4random_uniform(UInt32(40 * Double(Double(Mhp) / Double(dmg)))))) - Double(arc4random_uniform(UInt32(20 * Double(Double(Mhp) / Double(dmg))))))) > 12 {
                    final += 1
                }
        }
        
        
        func sayC() -> Int {
            var both = false
            if ArcherV == 0 && SwordManV == 0 {
                both = true
            }
            print(AL)
            print(SML)
            if Int(Double(AL) * 0.8) < ArcherV && Int(Double(SML) * 0.7) < SwordManV && both == false {
                LandV += CR
                userDefaults.set(LandV, forKey: "LandV")
                return CR
            } else {
                return 0
            }
        }
        
        print("\(final)    final")
        final /= 100
        let ALR = arc4random_uniform(10) + 30
        AL = Int(final * Double(ALR))
        SML = Int((final * Double(100 - ALR)))
        print(AL + 2300000)
        print(SML + 3200000)
        
        func TestA() {
            if ArcherV < AL {
                ATSM = AL - ArcherV
                Cross = true
                AL = ArcherV
                SML += Int(Double(ATSM) * 1.4)
                TestSM()
            }
        }
        
        func TestSM() {
            if SwordManV < SML {
                if Cross == true{
                    AL = ArcherV
                    SML = SwordManV
                } else {
                    SMTA = SML - SwordManV
                    SML = SwordManV
                    AL += Int(Double(SMTA) * 3.2)
                    TestA()
                }
            }
        }
        
        TestA()
        TestSM()
        
        ArcherV -= AL
        SwordManV -= SML
        
        userDefaults.set(ArcherV, forKey: "ArcherV")
        userDefaults.set(SwordManV, forKey: "SwordManV")
        
        say = "You lost \(AL) Archers and \(SML) Sword Men\nYou now have \(ArcherV) Archers and \(SwordManV) Sword Men\n You have won \(sayC())."
        
        
        let alertController = UIAlertController(title: "Resaults", message: "\(say)", preferredStyle: UIAlertController.Style.alert)
        alertController.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default,handler: nil))
        
        self.present(alertController, animated: true, completion: nil)
    
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        formatter.dateFormat = "dd.MM.yyyy"
        print("Here")
        dateDN = formatter.string(from: date)
        if UserDefaults.standard.string(forKey: "dateDB") != nil {
            dateDB = UserDefaults.standard.string(forKey: "dateDB")!
        }
        dateDN = formatter.string(from: date)
        
        if dateDN == dateDB || dateDB == "" {
            Change()
        } else {
            Keep()
        }
        
        date = Date()
        formatter.dateFormat = "dd.MM.yyyy"
        dateDB = formatter.string(from: date)
        userDefaults.set(dateDB, forKey: "dateDB")
    }
    
    @IBAction func B1C(_ sender: Any) {
        Change()
    }
    
    @IBAction func B2C(_ sender: Any) {
        FightsNum += 1
    }
    
    @IBAction func B3C(_ sender: Any) {
        FightsNum -= 1
    }
    
    @IBAction func B4C(_ sender: Any) {
        FightsNum += 10
    }
    
    @IBAction func B5C(_ sender: Any) {
        FightsNum -= 10
    }
    
    @IBAction func B6C(_ sender: Any) {
        FightsNum = 50
    }
    
    @IBAction func B7C(_ sender: Any) {
    if SM7.text != "Wait Until Tomorrow" {
        if ArcherV != 0 && SwordManV != 0 {
        Fight(SM: Int(SM7V)!, A: Int(A7V)!, CR: Int(CR7V)!)
        } else {
            let alertController = UIAlertController(title: "Need Troops", message: "Buy Sword Men or Archers.", preferredStyle: UIAlertController.Style.alert)
            alertController.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default,handler: nil))
            
            self.present(alertController, animated: true, completion: nil)
        }
    } else {
        SM7.text = "Wait Until Tomorrow"
        userDefaults.set("Wait Until Tomorrow", forKey: "CR7V")
        A7.text = "Wait Until Tomorrow"
        userDefaults.set("Wait Until Tomorrow", forKey: "A7V")
        CR7.text = "Wait Until Tomorrow"
        userDefaults.set("Wait Until Tomorrow", forKey: "SM7V")
    
    let alertController = UIAlertController(title: "Already Fought Today", message: "Please Wait Until Tomorrow to Fight\nOr if You Want to Today, Beat Every Fight", preferredStyle: UIAlertController.Style.alert)
    alertController.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default,handler: nil))
    
    self.present(alertController, animated: true, completion: nil)
        }
    }
    
    @IBAction func B8C(_ sender: Any) {
        SwordManV += 10
        print(SwordManV + 210000000)
    }
    
    @IBAction func B9C(_ sender: Any) {
        ArcherV += 10
        print(ArcherV + 120000000)
    }
}


class Shop: UITableViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var PV: UIPickerView!
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return PVData.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return PVData[row]
    }
    var PVData: [String] = [String]()
    
    
    @IBOutlet weak var SellThingLabel: UILabel!
    
    @IBOutlet weak var SellIS: UIStepper!
    @IBOutlet weak var IronOreIS: UIStepper!
    @IBOutlet weak var FireWoodIS: UIStepper!
    @IBOutlet weak var FrameIS: UIStepper!
    @IBOutlet weak var WallIS: UIStepper!
    @IBOutlet weak var SoldierIS: UIStepper!
    @IBOutlet weak var HouseIS: UIStepper!
    @IBOutlet weak var RoadIS: UIStepper!
    @IBOutlet weak var SwordIS: UIStepper!
    @IBOutlet weak var BowNArrowIS: UIStepper!
    @IBOutlet weak var TownIS: UIStepper!
    @IBOutlet weak var CastleIS: UIStepper!
    
    @IBOutlet weak var SellCS: UIStepper!
    @IBOutlet weak var IronOreCS: UIStepper!
    @IBOutlet weak var FireWoodCS: UIStepper!
    @IBOutlet weak var FrameCS: UIStepper!
    @IBOutlet weak var WallCS: UIStepper!
    @IBOutlet weak var SoldierCS: UIStepper!
    @IBOutlet weak var HouseCS: UIStepper!
    @IBOutlet weak var RoadCS: UIStepper!
    @IBOutlet weak var SwordCS: UIStepper!
    @IBOutlet weak var BowNArrowCS: UIStepper!
    @IBOutlet weak var TownCS: UIStepper!
    @IBOutlet weak var CastleCS: UIStepper!
    
    @IBOutlet weak var SellIT: UITextField!
    @IBOutlet weak var IronOreIT: UITextField!
    @IBOutlet weak var FireWoodIT: UITextField!
    @IBOutlet weak var FrameIT: UITextField!
    @IBOutlet weak var WallIT: UITextField!
    @IBOutlet weak var SoldierIT: UITextField!
    @IBOutlet weak var HouseIT: UITextField!
    @IBOutlet weak var RoadIT: UITextField!
    @IBOutlet weak var SwordIT: UITextField!
    @IBOutlet weak var BowNArrowIT: UITextField!
    @IBOutlet weak var TownIT: UITextField!
    @IBOutlet weak var CastleIT: UITextField!
    
    @IBOutlet weak var SellCT: UITextField!
    @IBOutlet weak var IronOreCT: UITextField!
    @IBOutlet weak var FireWoodCT: UITextField!
    @IBOutlet weak var FrameCT: UITextField!
    @IBOutlet weak var WallCT: UITextField!
    @IBOutlet weak var SoldierCT: UITextField!
    @IBOutlet weak var HouseCT: UITextField!
    @IBOutlet weak var RoadCT: UITextField!
    @IBOutlet weak var SwordCT: UITextField!
    @IBOutlet weak var BowNArrowCT: UITextField!
    @IBOutlet weak var TownCT: UITextField!
    @IBOutlet weak var CastleCT: UITextField!
    
    @IBOutlet weak var SellCoin: UILabel!
    @IBOutlet weak var IronOreCoin: UILabel!
    @IBOutlet weak var FireWoodCoin: UILabel!
    @IBOutlet weak var FrameCoin: UILabel!
    @IBOutlet weak var WallCoin: UILabel!
    @IBOutlet weak var SoldierCoin: UILabel!
    @IBOutlet weak var HouseCoin: UILabel!
    @IBOutlet weak var RoadCoin: UILabel!
    @IBOutlet weak var SwordCoin: UILabel!
    @IBOutlet weak var BowNArrowCoin: UILabel!
    @IBOutlet weak var TownCoin: UILabel!
    @IBOutlet weak var CastleCoin: UILabel!
    var SRow = 0
    var prices = [10, 8, 16, 3, 16, 20, 18     , 35, 10, 25, 65, 3500, 5, 750, 775,  800, 250, 1000, 550, 15, 175, 200, 150, 220,     225, 90, 140, 1500, 550, 36000, 72500, 72500]
    var ChS = "Log"
    var ChI = 10
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        SRow = row
        ChS = PVData[row]
        ChI = prices[row]
        SellCT.text = "\(Int(SellIT.text!)! * ChI)"
        sellT()
    }
    
    
    @IBAction func SellITC(_ sender: Any) {
        if SellIT.text == ""{
            SellCT.text = ""
        }
        if SellIT.text != "" && Int(SellIT.text!) != nil{
            if Int(SellIT.text!)! * ChI > 100000000000 {
                SellIT.deleteBackward()
            }
            SellIS.value = Double(SellIT.text!)!
            SellCS.value = Double(SellIT.text!)!
            SellISM = ChI * Int(SellCS.value)
            SellCT.text = "\(SellISM)"
        }
    }
    
    
    @IBAction func IronOreITC(_ sender: Any) {
        if IronOreIT.text == ""{
            IronOreCT.text = ""
        }
        if IronOreIT.text != "" && Int(IronOreIT.text!) != nil{
            if Int(IronOreIT.text!)! * 20 > 100000000000 {
                IronOreIT.deleteBackward()
            }
            IronOreIS.value = Double(IronOreIT.text!)!
            IronOreCS.value = Double(IronOreIT.text!)!
            IronOreISM = 20 * Int(IronOreCS.value)
            IronOreCT.text = "\(IronOreISM)"
        }
        
        
    }
    
    @IBAction func FireWoodITC(_ sender: Any) {
        if FireWoodIT.text == ""{
            FireWoodCT.text = ""
        }
        if FireWoodIT.text != "" && Int(FireWoodIT.text!) != nil{
            if Int(FireWoodIT.text!)! * 20 > 100000000000 {
                FireWoodIT.deleteBackward()
            }
            FireWoodIS.value = Double(FireWoodIT.text!)!
            FireWoodCS.value = Double(FireWoodIT.text!)!
            FireWoodISM = 20 * Int(FireWoodCS.value)
            FireWoodCT.text = "\(FireWoodISM)"
        }
    }
    
    @IBAction func FrameITC(_ sender: Any) {
        if FrameIT.text == ""{
            FrameCT.text = ""
        }
        if FrameIT.text != "" && Int(FrameIT.text!) != nil{
            if Int(FrameIT.text!)! * 3750 > 100000000000 {
                FrameIT.deleteBackward()
            }
            FrameIS.value = Double(FrameIT.text!)!
            FrameCS.value = Double(FrameIT.text!)!
            FrameISM = 3750 * Int(FrameCS.value)
            FrameCT.text = "\(FrameISM)"
        }
    }
    
    @IBAction func WallITC(_ sender: Any) {
        if WallIT.text == ""{
            WallCT.text = ""
        }
        if WallIT.text != "" && Int(WallIT.text!) != nil{
            if Int(WallIT.text!)! * 800 > 100000000000 {
                WallIT.deleteBackward()
            }
            WallIS.value = Double(WallIT.text!)!
            WallCS.value = Double(WallIT.text!)!
            WallISM = 800 * Int(WallCS.value)
            WallCT.text = "\(WallISM)"
        }
    }
    
    @IBAction func SoldierITC(_ sender: Any) {
        if SoldierIT.text == ""{
            SoldierCT.text = ""
        }
        if SoldierIT.text != "" && Int(SoldierIT.text!) != nil{
            if Int(SoldierIT.text!)! * 300 > 100000000000 {
                SoldierIT.deleteBackward()
            }
            SoldierIS.value = Double(SoldierIT.text!)!
            SoldierCS.value = Double(SoldierIT.text!)!
            SoldierISM = 300 * Int(SoldierCS.value)
            SoldierCT.text = "\(SoldierISM)"
        }
    }
    
    @IBAction func HouseITC(_ sender: Any) {
        if HouseIT.text == ""{
            HouseCT.text = ""
        }
        if HouseIT.text != "" && Int(HouseIT.text!) != nil{
            if Int(HouseIT.text!)! * 10000 > 100000000000 {
                HouseIT.deleteBackward()
            }
            HouseIS.value = Double(HouseIT.text!)!
            HouseCS.value = Double(HouseIT.text!)!
            HouseISM = 10000 * Int(HouseCS.value)
            HouseCT.text = "\(HouseISM)"
        }
    }
    
    @IBAction func RoadITC(_ sender: Any) {
        if RoadIT.text == ""{
            RoadCT.text = ""
        }
        
        if RoadIT.text != "" && Int(RoadIT.text!) != nil{
            if Int(RoadIT.text!)! * 150 > 100000000000 {
                RoadIT.deleteBackward()
            }
            RoadIS.value = Double(RoadIT.text!)!
            RoadCS.value = Double(RoadIT.text!)!
            RoadISM = 150 * Int(RoadCS.value)
            RoadCT.text = "\(RoadISM)"
        }
    }
    
    @IBAction func SwordITC(_ sender: Any) {
        if SwordIT.text == ""{
            SwordCT.text = ""
        }
        if SwordIT.text != "" && Int(SwordIT.text!) != nil{
            if Int(SwordIT.text!)! * 200 > 100000000000 {
                SwordIT.deleteBackward()
            }
            SwordIS.value = Double(SwordIT.text!)!
            SwordCS.value = Double(SwordIT.text!)!
            SwordISM = 200 * Int(SwordCS.value)
            SwordCT.text = "\(SwordISM)"
        }
    }
    
    @IBAction func BowNArrowITC(_ sender: Any) {
        if BowNArrowIT.text == ""{
            BowNArrowCT.text = ""
        }
        if BowNArrowIT.text != "" && Int(BowNArrowIT.text!) != nil{
            if Int(BowNArrowIT.text!)! * 1400 > 100000000000 {
                BowNArrowIT.deleteBackward()
            }
            BowNArrowIS.value = Double(BowNArrowIT.text!)!
            BowNArrowCS.value = Double(BowNArrowIT.text!)!
            BowNArrowISM = 1400 * Int(BowNArrowCS.value)
            BowNArrowCT.text = "\(BowNArrowISM)"
        }
    }
    
    @IBAction func TownITC(_ sender: Any) {
        if TownIT.text == "" {
            TownCT.text = ""
        }
        if TownIT.text != "" && Int(TownIT.text!) != nil{
            if Int(TownIT.text!)! * 275000 > 100000000000 {
                TownIT.deleteBackward()
            }
            TownIS.value = Double(TownIT.text!)!
            TownCS.value = Double(TownIT.text!)!
            TownISM = 275000 * Int(TownCS.value)
            TownCT.text = "\(TownISM)"
        }
    }
    
    @IBAction func CastleITC(_ sender: Any) {
        if CastleIT.text == "" {
            CastleCT.text = ""
        }
        if CastleIT.text != "" && Int(CastleIT.text!) != nil{
            if Int(CastleIT.text!)! * 600000 > 100000000000 {
                CastleIT.deleteBackward()
            }
            CastleIS.value = Double(CastleIT.text!)!
            CastleCS.value = Double(CastleIT.text!)!
            CastleISM = 600000 * Int(CastleCS.value)
            CastleCT.text = "\(CastleISM)"
        }
    }
    
    
    
    
    @IBAction func SellCTC(_ sender: Any) {
        if SellCT.text == ""{
            SellIT.text = ""
        }
        if SellIT.text != "" && Int(SellCT.text!) != nil{
            if Int(SellIT.text!)! > 100000000000 {
                SellIT.deleteBackward()
            }
            SellISM = Int(Double(SellCT.text!)! / Double(ChI))
            SellIS.value = Double(SellISM)
            SellCS.value = Double(SellISM)
            SellISM = Int(SellCS.value) * ChI
            SellCT.text = "\(SellISM)"
            SellIT.text = "\(Int(SellIS.value))"
        }
    }
    
    
    @IBAction func IronOreCTC(_ sender: Any) {
        if IronOreCT.text == ""{
            IronOreIT.text = ""
        }
        if IronOreIT.text != "" && Int(IronOreCT.text!) != nil{
            if Int(IronOreIT.text!)! > 100000000000 {
                IronOreIT.deleteBackward()
            }
            IronOreISM = Int(Double(IronOreCT.text!)! / 20)
            IronOreIS.value = Double(IronOreISM)
            IronOreCS.value = Double(IronOreISM)
            IronOreISM = Int(IronOreCS.value) * 20
            IronOreCT.text = "\(IronOreISM)"
            IronOreIT.text = "\(Int(IronOreIS.value))"
        }
    }
    
    @IBAction func FireWoodCTC(_ sender: Any) {
        if FireWoodCT.text == ""{
            FireWoodIT.text = ""
        }
        if FireWoodIT.text != "" && Int(FireWoodCT.text!) != nil{
            if Int(FireWoodIT.text!)! > 100000000000 {
                FireWoodIT.deleteBackward()
            }
            FireWoodISM = Int(Double(FireWoodCT.text!)! / 20)
            FireWoodIS.value = Double(FireWoodISM)
            FireWoodCS.value = Double(FireWoodISM)
            FireWoodISM = Int(FireWoodCS.value) * 20
            FireWoodCT.text = "\(FireWoodISM)"
            FireWoodIT.text = "\(Int(FireWoodIS.value))"
        }
    }
    
    @IBAction func FrameCTC(_ sender: Any) {
        if FrameCT.text == ""{
            FrameIT.text = ""
        }
        if FrameIT.text != "" && Int(FrameCT.text!) != nil{
            if Int(FrameIT.text!)! > 100000000000 {
                FrameIT.deleteBackward()
            }
            FrameISM = Int(Double(FrameCT.text!)! / 3750)
            FrameIS.value = Double(FrameISM)
            FrameCS.value = Double(FrameISM)
            FrameISM = Int(FrameCS.value) * 3750
            FrameCT.text = "\(FrameISM)"
            FrameIT.text = "\(Int(FrameIS.value))"
        }
    }
    
    @IBAction func WallCTC(_ sender: Any) {
        if WallCT.text == ""{
            WallIT.text = ""
        }
        if WallIT.text != "" && Int(WallCT.text!) != nil{
            if Int(WallIT.text!)! > 100000000000 {
                WallIT.deleteBackward()
            }
            WallISM = Int(Double(WallCT.text!)! / 800)
            WallIS.value = Double(WallISM)
            WallCS.value = Double(WallISM)
            WallISM = Int(WallCS.value) * 800
            WallCT.text = "\(WallISM)"
            WallIT.text = "\(Int(WallIS.value))"
        }
    }
    
    @IBAction func SoldierCTC(_ sender: Any) {
        if SoldierCT.text == ""{
            SoldierIT.text = ""
        }
        if SoldierIT.text != "" && Int(SoldierCT.text!) != nil{
            if Int(SoldierIT.text!)! > 100000000000 {
                SoldierIT.deleteBackward()
            }
            SoldierISM = Int(Double(SoldierCT.text!)! / 200)
            SoldierIS.value = Double(SoldierISM)
            SoldierCS.value = Double(SoldierISM)
            SoldierISM = Int(SoldierCS.value) * 200
            SoldierCT.text = "\(SoldierISM)"
            SoldierIT.text = "\(Int(SoldierIS.value))"
        }
    }
    
    @IBAction func HouseCTC(_ sender: Any) {
        if HouseCT.text == ""{
            HouseIT.text = ""
        }
        if HouseIT.text != "" && Int(HouseCT.text!) != nil{
            if Int(HouseIT.text!)! > 100000000000 {
                HouseIT.deleteBackward()
            }
            HouseISM = Int(Double(HouseCT.text!)! / 10000)
            HouseIS.value = Double(HouseISM)
            HouseCS.value = Double(HouseISM)
            HouseISM = Int(HouseCS.value) * 10000
            HouseCT.text = "\(HouseISM)"
            HouseIT.text = "\(Int(HouseIS.value))"
        }
    }
    
    @IBAction func RoadCTC(_ sender: Any) {
        if RoadCT.text == ""{
            RoadIT.text = ""
        }
        if RoadIT.text != "" && Int(RoadCT.text!) != nil{
            if Int(RoadIT.text!)! > 100000000000 {
                RoadIT.deleteBackward()
            }
            RoadISM = Int(Double(RoadCT.text!)! / 150)
            RoadIS.value = Double(RoadISM)
            RoadCS.value = Double(RoadISM)
            RoadISM = Int(RoadCS.value) * 150
            RoadCT.text = "\(RoadISM)"
            RoadIT.text = "\(Int(RoadIS.value))"
        }
    }
    
    @IBAction func SwordCTC(_ sender: Any) {
        if SwordCT.text == ""{
            SwordIT.text = ""
        }
        if SwordIT.text != "" && Int(SwordCT.text!) != nil{
            if Int(SwordIT.text!)! > 100000000000 {
                SwordIT.deleteBackward()
            }
            SwordISM = Int(Double(SwordCT.text!)! / 200)
            SwordIS.value = Double(SwordISM)
            SwordCS.value = Double(SwordISM)
            SwordISM = Int(SwordCS.value) * 200
            SwordCT.text = "\(SwordISM)"
            SwordIT.text = "\(Int(SwordIS.value))"
        }
    }
    
    @IBAction func BowNArrowCTC(_ sender: Any) {
        if BowNArrowCT.text == ""{
            BowNArrowIT.text = ""
        }
        if BowNArrowIT.text != "" && Int(BowNArrowCT.text!) != nil{
            if Int(BowNArrowIT.text!)! > 100000000000 {
                BowNArrowIT.deleteBackward()
            }
            BowNArrowISM = Int(Double(BowNArrowCT.text!)! / 1400)
            BowNArrowIS.value = Double(BowNArrowISM)
            BowNArrowCS.value = Double(BowNArrowISM)
            BowNArrowISM = Int(BowNArrowCS.value) * 1400
            BowNArrowCT.text = "\(BowNArrowISM)"
            BowNArrowIT.text = "\(Int(BowNArrowIS.value))"
        }
    }
    
    @IBAction func TownCTC(_ sender: Any) {
        if TownCT.text == ""{
            TownIT.text = ""
        }
        if TownIT.text != "" && Int(TownCT.text!) != nil{
            if Int(TownIT.text!)! > 100000000000 {
                TownIT.deleteBackward()
            }
            TownISM = Int(Double(TownCT.text!)! / 1000)
            TownIS.value = Double(TownISM)
            TownCS.value = Double(TownISM)
            TownISM = Int(TownCS.value) * 1000
            TownCT.text = "\(TownISM)"
            TownIT.text = "\(Int(TownIS.value))"
        }
    }
    
    @IBAction func CastleCTC(_ sender: Any) {
        if CastleCT.text == ""{
            CastleIT.text = ""
        }
        if CastleIT.text != "" && Int(CastleCT.text!) != nil{
            if Int(CastleIT.text!)! > 100000000000 {
                CastleIT.deleteBackward()
            }
            CastleISM = Int(Double(CastleCT.text!)! / 275000)
            CastleIS.value = Double(CastleISM)
            CastleCS.value = Double(CastleISM)
            CastleISM = Int(CastleCS.value) * 275000
            CastleCT.text = "\(CastleISM)"
            CastleIT.text = "\(Int(CastleIS.value))"
        }
    }
    
    
    
    @IBAction func SellCTE(_ sender: Any) {
        if SellCT.text == ""{
            SellIT.text = ""
        } else {
            SellII = Double(SellCT.text!)! / Double(ChI)
        }
        if floor(SellII) == SellII && Int(SellCT.text!) != nil{
            SellISM = Int(Double(SellCT.text!)! / Double(ChI))
            SellIS.value = Double(SellISM)
            SellCS.value = Double(SellISM)
            SellISM = Int(SellCS.value) * Int(ChI)
            SellCT.text = "\(SellISM)"
            SellIT.text = "\(Int(SellIS.value))"
        }
    }
    
    
    @IBAction func IronOreCTE(_ sender: Any) {
        if IronOreCT.text == ""{
            IronOreIT.text = ""
        } else {
            IronOreII = Double(IronOreCT.text!)! / 20
        }
        if floor(IronOreII) == IronOreII && Int(IronOreCT.text!) != nil{
            IronOreISM = Int(Double(IronOreCT.text!)! / 20)
            IronOreIS.value = Double(IronOreISM)
            IronOreCS.value = Double(IronOreISM)
            IronOreISM = Int(IronOreCS.value) * 20
            IronOreCT.text = "\(IronOreISM)"
            IronOreIT.text = "\(Int(IronOreIS.value))"
        }
    }
    
    @IBAction func FireWoodCTE(_ sender: Any) {
        if FireWoodCT.text == ""{
            FireWoodIT.text = ""
        } else {
            FireWoodII = Double(FireWoodCT.text!)! / 20
        }
        if floor(FireWoodII) == FireWoodII && Int(FireWoodCT.text!) != nil{
            FireWoodISM = Int(Double(FireWoodCT.text!)! / 20)
            FireWoodIS.value = Double(FireWoodISM)
            FireWoodCS.value = Double(FireWoodISM)
            FireWoodISM = Int(FireWoodCS.value) * 20
            FireWoodCT.text = "\(FireWoodISM)"
            FireWoodIT.text = "\(Int(FireWoodIS.value))"
        }
    }
    
    @IBAction func FrameCTE(_ sender: Any) {
        if FrameCT.text == ""{
            FrameIT.text = ""
        } else {
        FrameII = Double(FrameCT.text!)! / 3750
        }
        if floor(FrameII) == FrameII && Int(FrameCT.text!) != nil{
            if Int(FrameIT.text!)! > 100000000000 {
                FrameIT.deleteBackward()
            }
            FrameISM = Int(Double(FrameCT.text!)! / 3750)
            FrameIS.value = Double(FrameISM)
            FrameCS.value = Double(FrameISM)
            FrameISM = Int(FrameCS.value) * 3750
            FrameCT.text = "\(FrameISM)"
            FrameIT.text = "\(Int(FrameIS.value))"
        }
    }
    
    @IBAction func WallCTE(_ sender: Any) {
        if WallCT.text == ""{
            WallIT.text = ""
        } else {
            WallII = Double(WallCT.text!)! / 800
        }
        if floor(WallII) == WallII && Int(WallCT.text!) != nil{
            WallISM = Int(Double(WallCT.text!)! / 800)
            WallIS.value = Double(WallISM)
            WallCS.value = Double(WallISM)
            WallISM = Int(WallCS.value) * 800
            WallCT.text = "\(WallISM)"
            WallIT.text = "\(Int(WallIS.value))"
        }
    }
    
    @IBAction func FenceCTE(_ sender: Any) {
        if FrameCT.text == ""{
            FrameIT.text = ""
        } else {
            FrameII = Double(FrameCT.text!)! / 3750
        }
        if FrameIT.text != "" && floor(FrameII) == FrameII && Int(FrameCT.text!) != nil{
            if Int(FrameIT.text!)! > 100000000000 {
                FrameIT.deleteBackward()
            }
            FrameISM = Int(Double(FrameCT.text!)! / 3750)
            FrameIS.value = Double(FrameISM)
            FrameCS.value = Double(FrameISM)
            FrameISM = Int(FrameCS.value) * 3750
            FrameCT.text = "\(FrameISM)"
            FrameIT.text = "\(Int(FrameIS.value))"
        }
    }
    
    
    @IBAction func HouseCTE(_ sender: Any) {
        if HouseCT.text == ""{
            HouseIT.text = ""
        } else {
            HouseII = Double(HouseCT.text!)! / 10000
        }
        if HouseIT.text != "" && floor(HouseII) == HouseII && Int(HouseCT.text!) != nil{
            if Int(HouseIT.text!)! > 100000000000 {
                HouseIT.deleteBackward()
            }
            HouseISM = Int(Double(HouseCT.text!)! / 10000)
            HouseIS.value = Double(HouseISM)
            HouseCS.value = Double(HouseISM)
            HouseISM = Int(HouseCS.value) * 10000
            HouseCT.text = "\(HouseISM)"
            HouseIT.text = "\(Int(HouseIS.value))"
        }
    }
    
    @IBAction func RoadCTE(_ sender: Any) {
        if RoadCT.text == ""{
            RoadIT.text = ""
        } else {
            RoadII = Double(RoadCT.text!)! / 150
        }
        if RoadIT.text != "" && floor(RoadII) == RoadII && Int(RoadCT.text!) != nil{
            if Int(RoadIT.text!)! > 100000000000 {
                RoadIT.deleteBackward()
            }
            RoadISM = Int(Double(RoadCT.text!)! / 150)
            RoadIS.value = Double(RoadISM)
            RoadCS.value = Double(RoadISM)
            RoadISM = Int(RoadCS.value) * 150
            RoadCT.text = "\(RoadISM)"
            RoadIT.text = "\(Int(RoadIS.value))"
        }
    }
    
    @IBAction func SwordCTE(_ sender: Any) {
        if SwordCT.text == ""{
            SwordIT.text = ""
        } else {
            SwordII = Double(SwordCT.text!)! / 200
        }
        if SwordIT.text != "" && floor(SwordII) == SwordII && Int(SwordCT.text!) != nil{
            if Int(SwordIT.text!)! > 100000000000 {
                SwordIT.deleteBackward()
            }
            SwordISM = Int(Double(SwordCT.text!)! / 200)
            SwordIS.value = Double(SwordISM)
            SwordCS.value = Double(SwordISM)
            SwordISM = Int(SwordCS.value) * 200
            SwordCT.text = "\(SwordISM)"
            SwordIT.text = "\(Int(SwordIS.value))"
        }
    }
    
    @IBAction func BowNArrowCTE(_ sender: Any) {
        if BowNArrowCT.text == ""{
            BowNArrowIT.text = ""
        } else {
            BowNArrowII = Double(BowNArrowCT.text!)! / 1000
        }
        if BowNArrowIT.text != "" && floor(BowNArrowII) == BowNArrowII && Int(BowNArrowCT.text!) != nil{
            if Int(BowNArrowIT.text!)! > 100000000000 {
                BowNArrowIT.deleteBackward()
            }
            BowNArrowISM = Int(Double(BowNArrowCT.text!)! / 1000)
            BowNArrowIS.value = Double(BowNArrowISM)
            BowNArrowCS.value = Double(BowNArrowISM)
            BowNArrowISM = Int(BowNArrowCS.value) * 1000
            BowNArrowCT.text = "\(BowNArrowISM)"
            BowNArrowIT.text = "\(Int(BowNArrowIS.value))"
        }
    }
    
    @IBAction func TownCTE(_ sender: Any) {
        if TownCT.text == ""{
            TownIT.text = ""
        } else {
            TownII = Double(TownCT.text!)! / 275000
        }
        if TownIT.text != "" && floor(TownII) == TownII && Int(TownCT.text!) != nil{
            if Int(TownIT.text!)! > 100000000000 {
                TownIT.deleteBackward()
            }
            TownISM = Int(Double(TownCT.text!)! / 275000)
            TownIS.value = Double(TownISM)
            TownCS.value = Double(TownISM)
            TownISM = Int(TownCS.value) * 275000
            TownCT.text = "\(TownISM)"
            TownIT.text = "\(Int(TownIS.value))"
        }
    }
    
    @IBAction func CastleCTE(_ sender: Any) {
        if CastleCT.text == ""{
            CastleIT.text = ""
        } else {
            CastleII = Double(CastleCT.text!)! / 600000
        }
        if CastleIT.text != "" && floor(CastleII) == CastleII && Int(CastleCT.text!) != nil{
            if Int(CastleIT.text!)! > 100000000000 {
                CastleIT.deleteBackward()
            }
            CastleISM = Int(Double(CastleCT.text!)! / 600000)
            CastleIS.value = Double(CastleISM)
            CastleCS.value = Double(CastleISM)
            CastleISM = Int(CastleCS.value) * 600000
            CastleCT.text = "\(CastleISM)"
            CastleIT.text = "\(Int(CastleIS.value))"
        }
    }
    
    func CoinR() {
        SellCoin.text = "\(Coins)"
        IronOreCoin.text = "\(Coins)"
        FireWoodCoin.text = "\(Coins)"
        FrameCoin.text = "\(Coins)"
        WallCoin.text = "\(Coins)"
        SoldierCoin.text = "\(Coins)"
        HouseCoin.text = "\(Coins)"
        RoadCoin.text = "\(Coins)"
        SwordCoin.text = "\(Coins)"
        BowNArrowCoin.text = "\(Coins)"
        TownCoin.text = "\(Coins)"
        CastleCoin.text = "\(Coins)"
    }
    
    func SellCH() -> Bool{
        switch SRow {
        case 0:
            if LogV >=  Int(SellIS.value){
                LogV -=  Int(SellIS.value)
                userDefaults.set(LogV, forKey: "LogV")
                return true
            } else {
                return false
            }
        case 1:
            if RockV >=  Int(SellIS.value){
                RockV -=  Int(SellIS.value)
                userDefaults.set(RockV, forKey: "RockV")
                return true
            } else {
                return false
            }
        case 2:
            if IronOreV >=  Int(SellIS.value){
                IronOreV -=  Int(SellIS.value)
                userDefaults.set(IronOreV, forKey: "IronOreV")
                return true
            } else {
                return false
            }
        case 3:
            if ScrapWoodV >=  Int(SellIS.value){
                ScrapWoodV -=  Int(SellIS.value)
                userDefaults.set(ScrapWoodV, forKey: "ScrapWoodV")
                return true
            } else {
                return false
            }
        case 4:
            if FireWoodV >=  Int(SellIS.value){
                FireWoodV -=  Int(SellIS.value)
                userDefaults.set(FireWoodV, forKey: "FireWoodV")
                return true
            } else {
                return false
            }
        case 5:
            if StoneV >=  Int(SellIS.value){
                StoneV -=  Int(SellIS.value)
                userDefaults.set(StoneV, forKey: "StoneV")
                return true
            } else {
                return false
            }
        case 6:
            if PlankV >=  Int(SellIS.value){
                PlankV -=  Int(SellIS.value)
                userDefaults.set(PlankV, forKey: "PlankV")
                return true
            } else {
                return false
            }
        case 7:
            if IronV >=  Int(SellIS.value){
                IronV -=  Int(SellIS.value)
                userDefaults.set(IronV, forKey: "IronV")
                return true
            } else {
                return false
            }
        case 8:
            if NailV >=  Int(SellIS.value){
                NailV -=  Int(SellIS.value)
                userDefaults.set(NailV, forKey: "NailV")
                return true
            } else {
                return false
            }
        case 9:
            if IronPartsV >=  Int(SellIS.value){
                IronPartsV -=  Int(SellIS.value)
                userDefaults.set(IronPartsV, forKey: "IronPartsV")
                return true
            } else {
                return false
            }
        case 10:
            if BeamV >=  Int(SellIS.value){
                BeamV -=  Int(SellIS.value)
                userDefaults.set(BeamV, forKey: "BeamV")
                return true
            } else {
                return false
            }
        case 11:
            if FrameV >=  Int(SellIS.value){
                FrameV -=  Int(SellIS.value)
                userDefaults.set(FrameV, forKey: "FrameV")
                return true
            } else {
                return false
            }
        case 12:
            if ShingleV >=  Int(SellIS.value){
                ShingleV -=  Int(SellIS.value)
                userDefaults.set(ShingleV, forKey: "ShingleV")
                return true
            } else {
                return false
            }
        case 13:
            if RoofV >=  Int(SellIS.value){
                RoofV -=  Int(SellIS.value)
                userDefaults.set(RoofV, forKey: "RoofV")
                return true
            } else {
                return false
            }
        case 14:
            if WallV >=  Int(SellIS.value){
                WallV -=  Int(SellIS.value)
                userDefaults.set(WallV, forKey: "WallV")
                return true
            } else {
                return false
            }
        case 15:
            if DoorV >=  Int(SellIS.value){
                DoorV -=  Int(SellIS.value)
                userDefaults.set(DoorV, forKey: "DoorV")
                return true
            } else {
                return false
            }
        case 16:
            if GrinderV >=  Int(SellIS.value){
                GrinderV -=  Int(SellIS.value)
                userDefaults.set(GrinderV, forKey: "GrinderV")
                return true
            } else {
                return false
            }
        case 17:
            if FurnaceV >=  Int(SellIS.value){
                FurnaceV -=  Int(SellIS.value)
                userDefaults.set(FurnaceV, forKey: "FurnaceV")
                return true
            } else {
                return false
            }
        case 18:
            if AnvilV >=  Int(SellIS.value){
                AnvilV -=  Int(SellIS.value)
                userDefaults.set(AnvilV, forKey: "AnvilV")
                return true
            } else {
                return false
            }
        case 19:
            if StickV >=  Int(SellIS.value){
                StickV -=  Int(SellIS.value)
                userDefaults.set(StickV, forKey: "StickV")
                return true
            } else {
                return false
            }
        case 20:
            if AxeV >=  Int(SellIS.value){
                AxeV -=  Int(SellIS.value)
                userDefaults.set(AxeV, forKey: "AxeV")
                return true
            } else {
                return false
            }
        case 21:
            if PickV >=  Int(SellIS.value){
                PickV -=  Int(SellIS.value)
                userDefaults.set(PickV, forKey: "PickV")
                return true
            } else {
                return false
            }
        case 22:
            if HoeV >=  Int(SellIS.value){
                HoeV -=  Int(SellIS.value)
                userDefaults.set(HoeV, forKey: "HoeV")
                return true
            } else {
                return false
            }
        case 23:
            if ScaleV >=  Int(SellIS.value){
                ScaleV -=  Int(SellIS.value)
                userDefaults.set(ScaleV, forKey: "ScaleV")
                return true
            } else {
                return false
            }
        case 24:
            if SwordV >=  Int(SellIS.value){
                SwordV -=  Int(SellIS.value)
                userDefaults.set(SwordV, forKey: "SwordV")
                return true
            } else {
                return false
            }
        case 25:
            if BowV >=  Int(SellIS.value){
                BowV -=  Int(SellIS.value)
                userDefaults.set(BowV, forKey: "BowV")
                return true
            } else {
                return false
            }
        case 26:
            if ArrowV >=  Int(SellIS.value){
                ArrowV -=  Int(SellIS.value)
                userDefaults.set(ArrowV, forKey: "ArrowV")
                return true
            } else {
                return false
            }
        case 27:
            if BowNArrowV >=  Int(SellIS.value){
                BowNArrowV -=  Int(SellIS.value)
                userDefaults.set(BowNArrowV, forKey: "BowNArrowV")
                return true
            } else {
                return false
            }
        case 28:
            if FenceV >=  Int(SellIS.value){
                FenceV -=  Int(SellIS.value)
                userDefaults.set(FenceV, forKey: "FenceV")
                return true
            } else {
                return false
            }
        case 29:
            if CampV >=  Int(SellIS.value){
                CampV -=  Int(SellIS.value)
                userDefaults.set(CampV, forKey: "CampV")
                return true
            } else {
                return false
            }
        case 30:
            if BarracksV >=  Int(SellIS.value){
                BarracksV -=  Int(SellIS.value)
                userDefaults.set(BarracksV, forKey: "BarracksV")
                return true
            } else {
                return false
            }
        default:
            if ArcharyRangeV >=  Int(SellIS.value){
                ArcharyRangeV -=  Int(SellIS.value)
                userDefaults.set(ArcharyRangeV, forKey: "ArcharyRangeV")
                return true
            } else {
                return false
            }
        }
    }
    
    
    @IBAction func SellBC(_ sender: Any) {
        print(Int(SellIS.value))
        if SellCH() == true {
            Coins +=  ChI * Int(SellIS.value)
            userDefaults.set(Coins, forKey: "Coins")
            CoinR()
            sellT()
        }
    }
    
    
    @IBAction func IronOreBC(_ sender: Any) {
        if Coins >= 20 * Int(IronOreIS.value) {
            IronOreV += 1 * Int(IronOreIS.value)
            userDefaults.set(IronOreV, forKey: "IronOreV")
            Coins -= 20 * Int(IronOreIS.value)
            userDefaults.set(Coins, forKey: "Coins")
            CoinR()
        }
    }
    
    @IBAction func FireWoodBC(_ sender: Any) {
        if Coins >= 20 * Int(FireWoodIS.value) {
            FireWoodV += 1 * Int(FireWoodIS.value)
            userDefaults.set(FireWoodV, forKey: "FireWoodV")
            Coins -= 20 * Int(FireWoodCS.value)
            userDefaults.set(Coins, forKey: "Coins")
            CoinR()
        }
    }
    
    @IBAction func FrameBC(_ sender: Any) {
        if Coins >= 3750 * Int(FrameIS.value) {
            FrameV += 1 * Int(FrameIS.value)
            userDefaults.set(FrameV, forKey: "FrameV")
            Coins -= 3750 * Int(FrameIS.value)
            userDefaults.set(Coins, forKey: "Coins")
            CoinR()
        }
    }
    
    @IBAction func WallBC(_ sender: Any) {
        if Coins >= 1000 * Int(WallIS.value) {
            WallV += 1 * Int(WallIS.value)
            userDefaults.set(WallV, forKey: "WallV")
            Coins -= 1000 * Int(WallCS.value)
            userDefaults.set(Coins, forKey: "Coins")
            CoinR()
        }
    }
    
    @IBAction func SoldierBC(_ sender: Any) {
        if Coins >= 200 * Int(SoldierIS.value){
            FenceV += 1 * Int(SoldierIS.value)
            userDefaults.set(FenceV, forKey: "FenceV")
            Coins -= 200 * Int(SoldierCS.value)
            userDefaults.set(Coins, forKey: "Coins")
            CoinR()
        }
    }
    
    @IBAction func HouseBC(_ sender: Any) {
        if Coins >= 10000 * Int(HouseIS.value) {
            HouseV += 1 * Int(HouseIS.value)
            userDefaults.set(HouseV, forKey: "HouseV")
            UnEmployedV += 3 * Int(HouseIS.value)
            userDefaults.set(UnEmployedV, forKey: "UnEmployedV")
            Coins -= 10000 * Int(HouseIS.value)
            userDefaults.set(Coins, forKey: "Coins")
            CoinR()
        }
    }
    
    @IBAction func RoadBC(_ sender: Any) {
        if Coins >= 150 * Int(RoadIS.value){
            RoadV += 1  * Int(RoadIS.value)
            userDefaults.set(RoadV, forKey: "RoadV")
            Coins -= 150 * Int(RoadIS.value)
            userDefaults.set(Coins, forKey: "Coins")
            CoinR()
        }
    }
    
    @IBAction func SwordBC(_ sender: Any) {
        if Coins >= 200 * Int(SwordIS.value) {
            SwordV += 1 * Int(SwordIS.value)
            userDefaults.set(SwordV, forKey: "SwordV")
            Coins -= 200 * Int(SwordIS.value)
            userDefaults.set(Coins, forKey: "Coins")
            CoinR()
        }
    }
    
    @IBAction func BowNArrowBC(_ sender: Any) {
        if Coins >= 1000 * Int(BowNArrowIS.value) {
            BowNArrowV += 1 * Int(BowNArrowIS.value)
            userDefaults.set(BowNArrowV, forKey: "BowNArrowV")
            Coins -= 1000 * Int(BowNArrowIS.value)
            userDefaults.set(Coins, forKey: "Coins")
            CoinR()
        }
    }
    
    @IBAction func TownBC(_ sender: Any) {
        if Coins >= 275000 * Int(TownCS.value) {
            TownV += 1 * Int(TownCS.value)
            userDefaults.set(TownV, forKey: "TownV")
            Coins -= 275000 * Int(TownCS.value)
            userDefaults.set(Coins, forKey: "Coins")
            UnEmployedV += 60 * Int(HouseIS.value)
            userDefaults.set(UnEmployedV, forKey: "UnEmployedV")
            CoinR()
        }
    }
    
    @IBAction func CastleBC(_ sender: Any) {
        if Coins >= 600000 * Int(CastleCS.value) {
            CastleV += 1 * Int(CastleCS.value)
            userDefaults.set(CastleV, forKey: "CastleV")
            Coins -= 600000 * Int(CastleCS.value)
            userDefaults.set(Coins, forKey: "Coins")
            UnEmployedV += 900 * Int(HouseIS.value)
            userDefaults.set(UnEmployedV, forKey: "UnEmployedV")
            CoinR()
        }
    }
    
    
    
    
    
    @IBAction func SellISC(_ sender: Any) {
        SellIT.text = "\(Int(SellIS.value))"
        SellISM = ChI * Int(SellIS.value)
        SellCT.text = "\(SellISM)"
        SellCS.value = SellIS.value
    }
    
    
    @IBAction func IronOreISC(_ sender: Any) {
        IronOreIT.text = "\(Int(IronOreIS.value))"
        IronOreISM = 20 * Int(IronOreIS.value)
        IronOreCT.text = "\(IronOreISM)"
        IronOreCS.value = IronOreIS.value
    }
    
    @IBAction func FireWoodISC(_ sender: Any) {
        FireWoodIT.text = "\(Int(FireWoodIS.value))"
        FireWoodISM = 20 * Int(FireWoodIS.value)
        FireWoodCT.text = "\(FireWoodISM)"
        FireWoodCS.value = FireWoodIS.value
    }
    
    @IBAction func FrameISC(_ sender: Any) {
        FrameIT.text = "\(Int(FrameIS.value))"
        FrameISM = 3750 * Int(FrameIS.value)
        FrameCT.text = "\(FrameISM)"
        FrameCS.value = FrameIS.value
    }
    
    @IBAction func WallISC(_ sender: Any) {
        WallIT.text = "\(Int(WallIS.value))"
        WallISM = 1000 * Int(WallIS.value)
        WallCT.text = "\(WallISM)"
        WallCS.value = WallCS.value
    }
    
    @IBAction func SoldierISC(_ sender: Any) {
        SoldierIT.text = "\(Int(SoldierIS.value))"
        SoldierISM = 200 * Int(SoldierIS.value)
        SoldierCT.text = "\(SoldierISM)"
        SoldierIS.value = SoldierCS.value
    }
    
    @IBAction func HouseISC(_ sender: Any) {
        HouseIT.text = "\(Int(HouseIS.value))"
        HouseISM = 10000 * Int(HouseIS.value)
        HouseCT.text = "\(HouseISM)"
        HouseCS.value = HouseIS.value
    }
    
    @IBAction func RoadISC(_ sender: Any) {
        RoadIT.text = "\(Int(RoadIS.value))"
        RoadISM = 150 * Int(RoadIS.value)
        RoadCT.text = "\(RoadISM)"
        RoadCS.value = RoadIS.value
    }
    
    @IBAction func SwordISC(_ sender: Any) {
        SwordIT.text = "\(Int(SwordIS.value))"
        SwordISM = 200 * Int(SwordIS.value)
        SwordCT.text = "\(SwordISM)"
        SwordCS.value = SwordIS.value
    }
    
    @IBAction func BowNArrowISC(_ sender: Any) {
        BowNArrowIT.text = "\(Int(BowNArrowIS.value))"
        BowNArrowISM = 1000 * Int(BowNArrowIS.value)
        BowNArrowCT.text = "\(BowNArrowISM)"
        BowNArrowCS.value = BowNArrowIS.value
    }
    
    @IBAction func TownISC(_ sender: Any) {
        TownIT.text = "\(Int(TownIS.value))"
        TownISM = 275000 * Int(TownIS.value)
        TownCT.text = "\(TownISM)"
        TownCS.value = TownIS.value
    }
    
    @IBAction func CastleISC(_ sender: Any) {
        CastleIT.text = "\(Int(CastleIS.value))"
        CastleISM = 600000 * Int(CastleIS.value)
        CastleCT.text = "\(CastleISM)"
        CastleCS.value = CastleIS.value
    }
    
    
    
    @IBAction func SellCSC(_ sender: Any) {
        SellIT.text = "\(Int(SellCS.value))"
        SellISM = ChI * Int(SellCS.value)
        SellCT.text = "\(SellISM)"
        SellIS.value = SellCS.value
    }
    
    @IBAction func IronOreCSC(_ sender: Any) {
        IronOreIT.text = "\(Int(IronOreCS.value))"
        IronOreISM = 20 * Int(IronOreCS.value)
        IronOreCT.text = "\(IronOreISM)"
        IronOreIS.value = IronOreCS.value
    }
    
    @IBAction func FireWoodCSC(_ sender: Any) {
        FireWoodIT.text = "\(Int(FireWoodCS.value))"
        FireWoodISM = 20 * Int(FireWoodCS.value)
        FireWoodCT.text = "\(FireWoodISM)"
        FireWoodIS.value = FireWoodCS.value
    }
    
    @IBAction func FrameCSC(_ sender: Any) {
        FrameIT.text = "\(Int(FrameCS.value))"
        FrameISM = 3750 * Int(FrameCS.value)
        FrameCT.text = "\(FrameISM)"
        FrameIS.value = FrameCS.value
    }
    
    @IBAction func WallCSC(_ sender: Any) {
        WallIT.text = "\(Int(WallCS.value))"
        WallISM = 1000 * Int(WallCS.value)
        WallCT.text = "\(WallISM)"
        WallIS.value = WallCS.value
    }
    
    @IBAction func SoldierCSC(_ sender: Any) {
        SoldierIT.text = "\(Int(SoldierCS.value))"
        SoldierISM = 200 * Int(SoldierCS.value)
        SoldierCT.text = "\(SoldierISM)"
        SoldierIS.value = SoldierCS.value
    }
    
    @IBAction func HouseCSC(_ sender: Any) {
        HouseIT.text = "\(Int(HouseCS.value))"
        HouseISM = 10000 * Int(HouseCS.value)
        HouseCT.text = "\(HouseISM)"
        HouseIS.value = HouseCS.value
    }
    
    @IBAction func RoadCSC(_ sender: Any) {
        RoadIT.text = "\(Int(RoadCS.value))"
        RoadISM = 150 * Int(RoadCS.value)
        RoadCT.text = "\(RoadISM)"
        RoadIS.value = RoadCS.value
    }
    
    @IBAction func SwordCSC(_ sender: Any) {
        SwordIT.text = "\(Int(SwordCS.value))"
        SwordISM = 200 * Int(SwordCS.value)
        SwordCT.text = "\(SwordISM)"
        SwordIS.value = SwordCS.value
    }
    
    @IBAction func BowNArrowCSC(_ sender: Any) {
        BowNArrowIT.text = "\(Int(BowNArrowCS.value))"
        BowNArrowISM = 1000 * Int(BowNArrowCS.value)
        BowNArrowCT.text = "\(BowNArrowISM)"
        BowNArrowIS.value = BowNArrowCS.value
    }
    
    @IBAction func TownCSC(_ sender: Any) {
        TownIT.text = "\(Int(TownCS.value))"
        TownISM = 275000 * Int(TownCS.value)
        TownCT.text = "\(TownISM)"
        TownIS.value = TownCS.value
    }
    
    @IBAction func CastleCSC(_ sender: Any) {
        CastleIT.text = "\(Int(CastleCS.value))"
        CastleISM = 600000 * Int(CastleCS.value)
        CastleCT.text = "\(CastleISM)"
        CastleIS.value = CastleCS.value
    }
    
    
    override func viewDidLoad() {
        
        PV.delegate = self
        PV.dataSource = self
        
        PVData = ["Log", "Rock", "Iron Ore", "Scrap Wood", "Fire Wood", "Stone", "Plank", "Iron", "Nail", "Iron Part", "Beam", "Frame", "Shingels", "Roof", "Wall", "Door", "Grinder", "Furnace", "Anvil", "Stick", "Axe", "Pick", "Saw", "Medal", "Sword", "Bow", "Arrow", "Bow N Arrow", "Fence", "Camp", "Barracks", "Archary Range"]
        //saw is hoe metal is scale
        Coins = userDefaults.integer(forKey: "Coins")
        
        IronOreIS.value = 1
        FireWoodIS.value = 1
        FrameIS.value = 1
        WallIS.value = 1
        SoldierIS.value = 1
        HouseIS.value = 1
        RoadIS.value = 1
        SwordIS.value = 1
        BowNArrowIS.value = 1
        TownIS.value = 1
        CastleIS.value = 1
        
        IronOreCS.value = 1
        FireWoodCS.value = 1
        FrameCS.value = 1
        WallCS.value = 1
        SoldierCS.value = 1
        HouseCS.value = 1
        RoadCS.value = 1
        SwordCS.value = 1
        BowNArrowCS.value = 1
        TownCS.value = 1
        CastleCS.value = 1
        
        IronOreIT.text = "\(Int(IronOreIS.value))"
        FireWoodIT.text = "\(Int(FireWoodIS.value))"
        FrameIT.text = "\(Int(FrameIS.value))"
        WallIT.text = "\(Int(WallIS.value))"
        SoldierIT.text = "\(Int(SoldierIS.value))"
        HouseIT.text = "\(Int(HouseIS.value))"
        RoadIT.text = "\(Int(RoadIS.value))"
        SwordIT.text = "\(Int(SwordIS.value))"
        BowNArrowIT.text = "\(Int(BowNArrowIS.value))"
        TownIT.text = "\(Int(TownIS.value))"
        CastleIT.text = "\(Int(CastleIS.value))"
        
        IronOreISM = 20 * Int(IronOreIS.value)
        FireWoodISM = 20 * Int(FireWoodIS.value)
        FrameISM = 3750 * Int(FrameIS.value)
        WallISM = 1000 * Int(WallIS.value)
        SoldierISM = 200 * Int(SoldierIS.value)
        HouseISM = 10000 * Int(HouseIS.value)
        RoadISM = 150 * Int(RoadIS.value)
        SwordISM = 300 * Int(SwordIS.value)
        BowNArrowISM = 1000 * Int(BowNArrowIS.value)
        TownISM = 275000 * Int(TownIS.value)
        CastleISM = 600000 * Int(CastleIS.value)
        
        IronOreCT.text = "\(Int(IronOreISM))"
        FireWoodCT.text = "\(Int(FireWoodISM))"
        FrameCT.text = "\(Int(FrameISM))"
        WallCT.text = "\(Int(WallISM))"
        SoldierCT.text = "\(Int(SoldierISM))"
        HouseCT.text = "\(Int(HouseISM))"
        RoadCT.text = "\(Int(RoadISM))"
        SwordCT.text = "\(Int(SwordISM))"
        BowNArrowCT.text = "\(Int(BowNArrowISM))"
        TownCT.text = "\(Int(TownISM))"
        CastleCT.text = "\(Int(CastleISM))"
        
        SellCoin.text = "\(Coins)"
        IronOreCoin.text = "\(Coins)"
        FireWoodCoin.text = "\(Coins)"
        FrameCoin.text = "\(Coins)"
        WallCoin.text = "\(Coins)"
        SoldierCoin.text = "\(Coins)"
        HouseCoin.text = "\(Coins)"
        RoadCoin.text = "\(Coins)"
        SwordCoin.text = "\(Coins)"
        BowNArrowCoin.text = "\(Coins)"
        TownCoin.text = "\(Coins)"
        CastleCoin.text = "\(Coins)"
        
        Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { (SellU) in
            if SEnd == false {
                self.sellT()
            } else {
                SellU.invalidate()
            }
        }
    }
    
    func sellT() {
        switch SRow {
        case 0:
            SellThingLabel.text = "\(LogV)"
        case 1:
            SellThingLabel.text = "\(RockV)"
        case 2:
            SellThingLabel.text = "\(IronOreV)"
        case 3:
            SellThingLabel.text = "\(ScrapWoodV)"
        case 4:
            SellThingLabel.text = "\(FireWoodV)"
        case 5:
            SellThingLabel.text = "\(StoneV)"
        case 6:
            SellThingLabel.text = "\(PlankV)"
        case 7:
            SellThingLabel.text = "\(IronV)"
        case 8:
            SellThingLabel.text = "\(NailV)"
        case 9:
            SellThingLabel.text = "\(IronPartsV)"
        case 10:
            SellThingLabel.text = "\(BeamV)"
        case 11:
            SellThingLabel.text = "\(FrameV)"
        case 12:
            SellThingLabel.text = "\(ShingleV)"
        case 13:
            SellThingLabel.text = "\(RoofV)"
        case 14:
            SellThingLabel.text = "\(WallV)"
        case 15:
            SellThingLabel.text = "\(DoorV)"
        case 16:
            SellThingLabel.text = "\(GrinderV)"
        case 17:
            SellThingLabel.text = "\(FurnaceV)"
        case 18:
            SellThingLabel.text = "\(AnvilV)"
        case 19:
            SellThingLabel.text = "\(StickV)"
        case 20:
            SellThingLabel.text = "\(AxeV)"
        case 21:
            SellThingLabel.text = "\(PickV)"
        case 22:
            SellThingLabel.text = "\(HoeV)"
        case 23:
            SellThingLabel.text = "\(ScaleV)"
        case 24:
            SellThingLabel.text = "\(SwordV)"
        case 25:
            SellThingLabel.text = "\(BowV)"
        case 26:
            SellThingLabel.text = "\(ArrowV)"
        case 27:
            SellThingLabel.text = "\(BowNArrowV)"
        case 28:
            SellThingLabel.text = "\(FenceV)"
        case 29:
            SellThingLabel.text = "\(CampV)"
        case 30:
            SellThingLabel.text = "\(BarracksV)"
        default:
            SellThingLabel.text = "\(ArcharyRangeV)"
        }
    }
    
}

func IfNegitive(num: Int) -> Int{
    if num < 0 {
        return (num * -1)
    } else {
        return num
    }
}
