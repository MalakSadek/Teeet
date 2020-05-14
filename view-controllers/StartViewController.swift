//
//  ViewController.swift
//  Teet
//
//  Created by Malak Sadek on 10/20/17.
//  Copyright © 2017 Malak Sadek. All rights reserved.
//

import UIKit

class StartViewController: UIViewController {
    
    var choice = 0;
    
    @IBOutlet weak var microbuslabel: UILabel!
    @IBOutlet weak var taxilabel: UILabel!
    @IBOutlet weak var metrolabel: UILabel!
    @IBOutlet weak var toktoklabel: UILabel!
    @IBOutlet weak var nilebuslabel: UILabel!
    @IBOutlet weak var trainlabel: UILabel!
    @IBOutlet weak var publicbuslabel: UILabel!
    
    @IBAction func settingsButtonPressed(_ sender: Any) {
        performSegue(withIdentifier: "mainMenuToSettings", sender: nil)
    }
    

    /**Labels to lang***/
    //ONE
  
    
    func languageCheck(){
        let userDefaults = UserDefaults.standard
        let key =  userDefaults.string(forKey: "Language")
        if(key == "A"){
            //one
            
            
            // let routesbutton  = UIButton(type: .custom)
           
          
        
            microbuslabel?.text = "ميكروباص"
            taxilabel?.text = "تاكسي"
            metrolabel?.text = "ميترو"
            publicbuslabel?.text = "اتوبيس عام"
            toktoklabel?.text = "توك توك"
            nilebuslabel?.text = "اتوبيس نيل"
            trainlabel?.text = "قطار"
            
            
            /*************************************************/
            //two
   
        }
        
        
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "showSegments"){
            let destVC: SegmentedControl=segue.destination as! SegmentedControl
            destVC.choice = choice;
        }
        else if (segue.identifier == "showFun"){
            let destVC: MusicViewController=segue.destination as! MusicViewController
            destVC.choice = choice;
        } else if (segue.identifier == "mainMenuToSettings") {
             if let SettingsViewController = segue.destination as? SettingsViewController {
                     SettingsViewController.src = "mainmenu"
             }
         }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let userDef = UserDefaults.standard
        let first = userDef.object(forKey: "first")
        if (first == nil) {
            userDef.set("A", forKey: "Language")
            userDef.set(1, forKey: "first")
            languageCheck()
        }
        else {
            languageCheck()
        }
        
        
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    open override var shouldAutorotate: Bool {
        get {
            return false
        }
    }
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        get {
            return .portrait
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        UIApplication.shared.statusBarStyle = .lightContent
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    
}


