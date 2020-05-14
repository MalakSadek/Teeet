//
//  ViewController.swift
//  Teet
//
//  Created by Malak Sadek on 10/20/17.
//  Copyright © 2017 Malak Sadek. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var choice = 0;
    @IBOutlet weak var nilebuslabel: UILabel!
    @IBOutlet weak var trainlabel: UILabel!
    @IBOutlet weak var publicbuslabel: UILabel!
    
    @IBAction func settingsButton1Pressed(_ sender: Any) {
        performSegue(withIdentifier: "segmentMenuToSettings", sender: nil)
    }
    
    @IBAction func settingsButton2Pressed(_ sender: Any) {
        performSegue(withIdentifier: "infoToSettings", sender: nil)
    }
    
    @IBAction func settingsButton3Pressed(_ sender: Any) {
        performSegue(withIdentifier: "mediaMenuToSettings", sender: nil)
    }
    
    
    @IBOutlet weak var microbuslabel: UILabel!
    @IBOutlet weak var taxilabel: UILabel!
    @IBOutlet weak var metrolabel: UILabel!
    @IBOutlet weak var toktoklabel: UILabel!

    @IBAction func dictionaryaction(_ sender: Any) {
        choice = 1;
        self.performSegue(withIdentifier: "showFun", sender: nil)
    }
    @IBAction func musicaction(_ sender: Any) {
        choice = 2;
        self.performSegue(withIdentifier: "showFun", sender: nil)
    }

    @IBAction func gamesaction(_ sender: Any) {
        choice = 3;
        self.performSegue(withIdentifier: "showFun", sender: nil)
    }
    @IBAction func handsignaction(_ sender: Any) {
        choice = 3;
        self.performSegue(withIdentifier: "showSegments", sender: nil)
    }
    @IBAction func choiceaction(_ sender: Any) {
        choice = 4;
        self.performSegue(withIdentifier: "showSegments", sender: nil)
    }
    @IBAction func howtoexitaction(_ sender: Any) {
        choice = 5;
        self.performSegue(withIdentifier: "showSegments", sender: nil)
    }
    @IBAction func howtostopaction(_ sender: Any) {
        choice = 2;
        self.performSegue(withIdentifier: "showSegments", sender: nil)
    }
    @IBAction func routesaction(_ sender: Any) {
        choice = 1;
        self.performSegue(withIdentifier: "showSegments", sender: nil)
    }
    
 
    
    @IBOutlet weak var choicebutton: UIButton!
    @IBOutlet weak var howtoexitbutton: UIButton!
    @IBOutlet weak var howtostopbutton: UIButton!
    @IBOutlet weak var routesbutton: UIButton!
    @IBOutlet weak var handsignbutton: UIButton!
    
    /**Labels to lang***/
    //ONE
    @IBOutlet weak var microbus: UILabel!
    @IBOutlet weak var pronouncedAs: UILabel!
    @IBOutlet weak var cheap: UILabel!
    @IBOutlet weak var fast: UILabel!
    //TWO
    @IBOutlet weak var rideTheSteps: UILabel!
    @IBOutlet weak var routers: UILabel!
    @IBOutlet weak var howToStop: UILabel!
    @IBOutlet weak var handSigns: UILabel!
    @IBOutlet weak var choiceOfSeats: UILabel!
    @IBOutlet weak var howToGet: UILabel!
    //THREE
    @IBOutlet weak var funEnjoy: UILabel!
    @IBOutlet weak var microbusDic: UILabel!
    @IBOutlet weak var music: UILabel!
    @IBOutlet weak var games: UILabel!
    
    
    func languageCheck(){
         let userDefaults = UserDefaults.standard
      let key =  userDefaults.string(forKey: "Language")
        if(key == "A"){
            //one
           
           
           // let routesbutton  = UIButton(type: .custom)
           
           routesbutton?.setImage(UIImage(named: "1-LocationArabic.png"), for: .normal)
            howtostopbutton?.setImage(UIImage(named:"2-StopArabic.png"), for: .normal)
             handsignbutton?.setImage(UIImage(named:"3-HandArabic.png"), for: .normal)
            choicebutton?.setImage(UIImage(named:"4-SeatsArabic.png"), for: .normal)
            howtoexitbutton?.setImage(UIImage(named:"5-ExitArabic.png"), for: .normal)
            
            
            self.microbus?.text = "ميكروباص"
            self.pronouncedAs?.text = "أسمه مييكروباز و هو عبارة عن عربية بتشيل 14 شخص و تعتبر أكتر المواصلات استخداما لأنه:"
            self.cheap?.text = "رخيص"
            self.fast?.text = "سريع"
            
            let font = "DIN Next LT W23"
           
            pronouncedAs?.font = UIFont(name: font, size:16)
            cheap?.font = UIFont(name: font, size: 22)
            fast?.font = UIFont(name: font, size: 22)
            
            microbuslabel?.text = "ميكروباص"
            taxilabel?.text = "تاكسي"
            metrolabel?.text = "ميترو"
            publicbuslabel?.text = "اتوبيس عام"
            toktoklabel?.text = "توك توك"
            nilebuslabel?.text = "اتوبيس نيل"
            trainlabel?.text = "قطار"

            
/*************************************************/
            //two
            self.rideTheSteps?.text = "ركوبة... كل خطواتك في الرحلة"
            self.routers?.text = "المواقف و الأجرة"
            self.howToStop?.text = "إزاي توقفه؟"
            self.handSigns?.text = "علامات اليد"
            self.choiceOfSeats?.text = "اختيار الكرسي"
            self.howToGet?.text = "الخروج"
/*************************************************/
            //three
            self.funEnjoy?.text = "سلي وقتك و أتعلم في الطريق"
            self.microbusDic?.text = "قاموس الميكروباص"
            self.music?.text = "موسيقى"
            self.games?.text = "ألعاب"
            
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
        } else
            if (segue.identifier == "segmentMenuToSettings") {
                 if let SettingsViewController = segue.destination as? SettingsViewController {
                         SettingsViewController.src = "segmentMenu"
                 }
             } else
             if (segue.identifier == "infoToSettings") {
                 if let SettingsViewController = segue.destination as? SettingsViewController {
                         SettingsViewController.src = "info"
                 }
             } else 
             if (segue.identifier == "mediaMenuToSettings") {
                 if let SettingsViewController = segue.destination as? SettingsViewController {
                         SettingsViewController.src = "mediaMenu"
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
        
        
        
        let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(swiped))
        swipeRight.direction = UISwipeGestureRecognizerDirection.right
        self.view.addGestureRecognizer(swipeRight)
        
        let swipeLeft = UISwipeGestureRecognizer(target: self, action: #selector(swiped))
        swipeLeft.direction = UISwipeGestureRecognizerDirection.left
        self.view.addGestureRecognizer(swipeLeft)
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    @objc func swiped(_ gesture: UISwipeGestureRecognizer) {
        if gesture.direction == .left {
            if (self.tabBarController?.selectedIndex)! < 4 { // set your total tabs here
                self.tabBarController?.selectedIndex += 1
            }
        } else if gesture.direction == .right {
            if (self.tabBarController?.selectedIndex)! > 0 {
                self.tabBarController?.selectedIndex -= 1
            }
        }
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
    
        let item = UITabBarItem()
        item.title = "Home"
        item.image = UIImage(named: "testicon")
        
        let homeVC = ViewController()
        homeVC.tabBarItem = item
        
        let tabBarController = UITabBarController()
        tabBarController.viewControllers = [homeVC]
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    
}

