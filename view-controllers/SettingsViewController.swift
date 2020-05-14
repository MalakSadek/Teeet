//
//  SettingsViewController.swift
//  Teet
//
//  Created by Ibrahim Roshdy on 11/22/17.
//  Copyright © 2017 Malak Sadek. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var langSwitchLabel: UISwitch!
    var src:String = ""
    var segmentno:Int = 0
    @IBAction func langSwitchPressed(_ sender: Any) {
        let userDef = UserDefaults.standard
    
        
        
        if(langSwitchLabel.isOn){
            userDef.setValue("E", forKey: "Language")}
        else
        {
            userDef.setValue("A", forKey: "Language")
            
        }
        
    }
    @IBAction func homeButtonPressed(_ sender: Any) {
        switch(src) {
        case "media":
            performSegue(withIdentifier: "settingsToMedia", sender: nil)
            break;
        case "tips":
            performSegue(withIdentifier: "settingsToTips", sender: nil)
            break;
        case "hands":
            performSegue(withIdentifier: "settingsToHands", sender: nil)
            break;
        case "seats":
            performSegue(withIdentifier: "settingsToSeats", sender: nil)
            break;
        case "segment":
            performSegue(withIdentifier: "settingsToSegments", sender: nil)
            break;
        case "segmentMenu":
            performSegue(withIdentifier: "settingsToSegmentsMain", sender: nil)
            break;
            case "info":
            performSegue(withIdentifier: "settingsToInfo", sender: nil)
            break;
            case "mediaMenu":
            performSegue(withIdentifier: "settingsToMediaMenu", sender: nil)
            break;
            case "mainmenu":
            performSegue(withIdentifier: "settingsToMainMenu", sender: nil)
            break;
        default:
            break;
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "settingsToSegments")  {
             if let SegmentedControl = segue.destination as? SegmentedControl {
                SegmentedControl.choice = segmentno
             }
         }
        if (segue.identifier == "settingsToMedia") {
            if let MusicControl = segue.destination as? MusicViewController {
                           MusicControl.choice = segmentno
                        }
        }
     }
    override func viewDidLoad() {
        super.viewDidLoad()
        let userDef = UserDefaults.standard
        
        
        if(userDef.string(forKey: "Language") == "A"){
            langSwitchLabel.setOn(false, animated:true)
        }else{
            langSwitchLabel.setOn(true, animated:true)
        }
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
