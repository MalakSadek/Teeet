//
//  SeatsViewController.swift
//  Teet
//
//  Created by baher ibrahim on 11/27/17.
//  Copyright © 2017 Malak Sadek. All rights reserved.
//

import UIKit
import QuartzCore

class SeatsViewController: UIViewController {

    var choice = 0;
    @IBOutlet weak var mohamedseats: UISegmentedControl!
    
    @IBOutlet weak var seats: UIImageView!
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    @IBOutlet weak var button5: UIButton!
    @IBOutlet weak var button6: UIButton!
    @IBOutlet weak var button7: UIButton!
    @IBOutlet weak var button8: UIButton!
    @IBOutlet weak var button9: UIButton!
    @IBOutlet weak var button10: UIButton!
    @IBOutlet weak var button11: UIButton!
    @IBOutlet weak var button12: UIButton!
    @IBOutlet weak var button13: UIButton!
    @IBOutlet weak var button14: UIButton!
    @IBOutlet weak var button15: UIButton!
    @IBOutlet weak var button16: UIButton!
    @IBOutlet weak var labelOfSeats: UILabel!
    
    @IBAction func settingsButton3Pressed(_ sender: Any) {
        performSegue(withIdentifier: "seatsToSettings", sender: nil)
    }

    
    func anyButtonSeatIsPressed(){
        button1.isHidden = true;
        button2.isHidden = true;
        button3.isHidden = true;
        button4.isHidden = true;
        button5.isHidden = true;
        button6.isHidden = true;
        button7.isHidden = true;
        button8.isHidden = true;
        button9.isHidden = true;
        button10.isHidden = true;
        button11.isHidden = true;
        button12.isHidden = true;
        button13.isHidden = true;
        button14.isHidden = true;
        button15.isHidden = true;
        button16.isHidden = true;
        seatslabel.isHidden = false;
        gotitbutton.isHidden = false;
        seatsimage.isHidden = false;
        seats.isHidden = true;
    }
    
    @IBAction func button1pressed(_ sender: Any) {
        seatsimage.image = UIImage(named: "1");
        
        let userDef11 = UserDefaults.standard
        let lang11 = userDef11.string(forKey: "Language")
        
        if(lang11 == "A")
        {
                   let font = "DIN Next LT W23"
            seatslabel.font =  UIFont(name: font, size: 17)
            seatslabel.text = " السواق ... الملك"
            gotitbutton.titleLabel?.text = "فهمتك!"
            
        }else{
            seatslabel.text = "Driver … The KING"
        }
        
        
       anyButtonSeatIsPressed()
        
    }
    @IBAction func button2pressed(_ sender: Any) {
        
        seatsimage.image = UIImage(named: "2");
        let userDef11 = UserDefaults.standard
        let lang11 = userDef11.string(forKey: "Language")
        
        if(lang11 == "A")
        {
            let font = "DIN Next LT W23"
            seatslabel.font =  UIFont(name: font, size: 17)
            seatslabel.text = "كان ممكن يبقي احسن كرسي\n السواق بيخبط في القاعد جنبه غصب عنه\n الراكب مش بيلم الأجرة\n بيدفع للسواق عدل"
            gotitbutton.titleLabel?.text = "فهمتك!"
            
        }else{
            seatslabel.text = "It could have been called the best seat.\nDriver hits the passenger unintentionally while driving.\nPassenger avoids collecting the fare.\nPays directly to the driver."
        }
        
       anyButtonSeatIsPressed()
    }
    @IBAction func button3pressed(_ sender: Any) {
        
        seatsimage.image = UIImage(named: "3");
        let userDef11 = UserDefaults.standard
        let lang11 = userDef11.string(forKey: "Language")
        
        if(lang11 == "A")
        {
            let font = "DIN Next LT W23"
            seatslabel.font =  UIFont(name: font, size: 17)
            seatslabel.text = "الكرسي البرنس\n أحسن كرسي في الميكروباص\n مميز و جنبه شباك\n الكرسي واسع و مريح"
            gotitbutton.titleLabel?.text = "فهمتك!"
            
        }else{
            seatslabel.text = "The Thug life seat…\nThe BEST seat in the microbus.\nUnique, beside a window.\nHuge personal space and always wide."
        }
        
       anyButtonSeatIsPressed()
    }
    @IBAction func button4pressed(_ sender: Any) {
        
        seatsimage.image = UIImage(named: "4");
        let userDef11 = UserDefaults.standard
        let lang11 = userDef11.string(forKey: "Language")
        
        if(lang11 == "A")
        {
            let font = "DIN Next LT W23"
            seatslabel.font =  UIFont(name: font, size: 17)
            seatslabel.text = "أحسن كرسي لشخص معاه شنط كتير\n مساحة واسعة تكفي الشنط\n الراكب مش بيلم الأجرة\n بيدفع للسواق عدل\n في مساحة عشان تفرد رجلك"
            gotitbutton.titleLabel?.text = "فهمتك!"
        }else{
            seatslabel.text = "Best seat for people carrying lots of bags.\nA huge empty space to leave bags on.\nPassenger doesn’t collect money from anyone.\nPays directly to the driver.\nAvailable space to stretch the legs."
        }
        
       anyButtonSeatIsPressed()
    }
    @IBAction func button5pressed(_ sender: Any) {
        seatsimage.image = UIImage(named: "5");
        
        let userDef11 = UserDefaults.standard
        let lang11 = userDef11.string(forKey: "Language")
        
        if(lang11 == "A")
        {
            let font = "DIN Next LT W23"
            seatslabel.font =  UIFont(name: font, size: 17)
            seatslabel.text = "كرسي مريح\n واسع بس مزنوق بين شخصين"
            gotitbutton.titleLabel?.text = "فهمتك!"
        }else{
            seatslabel.text = "Comfortable.\nWide but no personal space.\nStuck between two people."
        }
        
       anyButtonSeatIsPressed()
    }
    @IBAction func button6pressed(_ sender: Any) {
        
        let userDef11 = UserDefaults.standard
        let lang11 = userDef11.string(forKey: "Language")
        seatsimage.image = UIImage(named: "6");
        
        if(lang11 == "A")
        {
            let font = "DIN Next LT W23"
            seatslabel.font =  UIFont(name: font, size: 17)
            seatslabel.text = "كرسي مرهق. . البيه البواب\n بيفتح و يقفل الباب كل ما حد يطلع او ينزل من الميكروباص\n في مكان واسع اوي لفرد الرجلين"
            gotitbutton.titleLabel?.text = "فهمتك!"
        }else{
            seatslabel.text = "Tiring Seat…\nPassenger opens and closes the door of the microbus\nwhenever someone gets in or out of it.\nA huge space available to stretch the legs and sit \nproperly."
        }
        
       anyButtonSeatIsPressed()
    }
    @IBAction func button7pressed(_ sender: Any) {
        
        let userDef11 = UserDefaults.standard
        let lang11 = userDef11.string(forKey: "Language")
        
        seatsimage.image = UIImage(named: "7");
        
        if(lang11 == "A")
        {
            let font = "DIN Next LT W23"
            seatslabel.font =  UIFont(name: font, size: 17)
            seatslabel.text = "كرسي حلو\n مريح و مش بيحسسك بالمطبات\n الراكب فيه دايما بيوصل الأجرة من ورا لقدام"
            gotitbutton.titleLabel?.text = "فهمتك!"
        }else{
            
            seatslabel.text = "A nice seat.\nComfortable and doesn’t make the passenger feel any bumps of streets.\nPassenger always passes the fare to the front."
        }
        
       anyButtonSeatIsPressed()
    }
    @IBAction func button8pressed(_ sender: Any) {
        
        let userDef11 = UserDefaults.standard
        let lang11 = userDef11.string(forKey: "Language")
        seatsimage.image = UIImage(named: "8");
        
        if(lang11 == "A")
        {
            
            let font = "DIN Next LT W23"
            seatslabel.font =  UIFont(name: font, size: 17)
            seatslabel.text = "من أسوأ الكراسي\n دايما بيتخبط من الطالع و النازل\n بيقفل و يفتح الكرسي القلاب الجنبه\n محتاج واحد بيعرف يحسب كويس عشان غالبا هيتدبس في لم الأجرة"
            gotitbutton.titleLabel?.text = "فهمتك!"
        }else{
            seatslabel.text = "One of the worst seats ever.\nPassenger is always hit by other passengers getting in and out of the microbus, always closes & opens the seat beside him.\nNeeds a mathematician; as he gets stuck in collecting the fare from all the people behind him."
        }
        
      anyButtonSeatIsPressed()
    }
    @IBAction func button9pressed(_ sender: Any) {
        
        let userDef11 = UserDefaults.standard
        let lang11 = userDef11.string(forKey: "Language")
        seatsimage.image = UIImage(named: "9");
        
        if(lang11 == "A")
        {
                   let font = "DIN Next LT W23"
            seatslabel.font =  UIFont(name: font, size: 17)
            seatslabel.text = "الكرسي القلاب...الأسوأ على الإطلاق\n يطلق عليه مرمطون الميكروباص اخر واحد بيركب الميكروباص بيتدبس فيه\n في ممر كل الكراسي الورا أي شخص ورا عايز ينزل لازم يقوم الشخص القاعد في الكرسي ده"
            gotitbutton.titleLabel?.text = "فهمتك!"
        }else{
            seatslabel.text = "Hell.. The worst seat ever.\nThe last person gets in the microbus sits on it.\nIn the way of all the other seats.\nPassenger moves when anyone wants to move or get out.\nIt is called el “Aallab” as in a folding seat."
        }
        
       anyButtonSeatIsPressed()
    }
    @IBAction func button10pressed(_ sender: Any) {
        
        let userDef11 = UserDefaults.standard
        let lang11 = userDef11.string(forKey: "Language")
        seatsimage.image = UIImage(named: "10");
        
        if(lang11 == "A")
        {
            
            seatslabel.text = "كرسي كويس\n مساحة كويس و جنبه شباك\n بياخد كل المطبات"
            gotitbutton.titleLabel?.text = "فهمتك!"
        }else{
            seatslabel.text = "A good seat.\nGood space and a window.\nPassenger will feel all the bumps that hit the microbus."
        }
        
       anyButtonSeatIsPressed()
    }
    @IBAction func button11pressed(_ sender: Any) {
        
        let userDef11 = UserDefaults.standard
        let lang11 = userDef11.string(forKey: "Language")
        seatsimage.image = UIImage(named: "11");
        
        if(lang11 == "A")
        {
                   let font = "DIN Next LT W23"
            seatslabel.font =  UIFont(name: font, size: 17)
            seatslabel.text = "من أوحش الكراسي\n دايما بيتخبط من الطالع و النازل\n بيقفل و يفتح الكرسي القلاب الجنبه"
            gotitbutton.titleLabel?.text = "فهمتك!"
        }else{
            seatslabel.text = "One of the worst seats ever.\nPassenger is always hit by other passengers getting in and out of the microbus.\nPassenger always closes & opens the seat beside him."
            
          
    }
        
        
       anyButtonSeatIsPressed()
    }
    @IBAction func button12pressed(_ sender: Any) {
        
        let userDef11 = UserDefaults.standard
        let lang11 = userDef11.string(forKey: "Language")
        seatsimage.image = UIImage(named: "12");
        if(lang11 == "A")
        {
            let font = "DIN Next LT W23"
            seatslabel.font =  UIFont(name: font, size: 17)
            seatslabel.text = "القلاب... سيئ\nأي شخص ورا عايز ينزل لازم يقوم الشخص القاعد في الكرسي ده\n كرسي ضيق"
            gotitbutton.titleLabel?.text = "فهمتك!"
        }else{
            
            seatslabel.text = "Miserable…\nNo personal space.\nPassenger gets in and out to pass people through the way.\nIt is called el “Aallab” as in a folding seat."
            
        }
        
       anyButtonSeatIsPressed()
    }
    @IBAction func button13pressed(_ sender: Any) {
        
        let userDef11 = UserDefaults.standard
        let lang11 = userDef11.string(forKey: "Language")
        seatsimage.image = UIImage(named: "13");
        
        if(lang11 == "A")
        {
                   let font = "DIN Next LT W23"
            seatslabel.font =  UIFont(name: font, size: 17)
            seatslabel.text = "أخر كرسي في الميكروباص\n مناسب لواحد نازل اخر محطة\n مريح و مافيش كراسي وراه\n بياخد المطبات كلها"
            gotitbutton.titleLabel?.text = "فهمتك!"
        }else{
            seatslabel.text = "The farthest seat in the whole microbus.\nSuitable for someone heading to the last stop.\nVery good personal space.\nNo seat behind it.\nTakes all the bumps."
        }
        
       anyButtonSeatIsPressed()
    }
    @IBAction func button14pressed(_ sender: Any) {
        
        let userDef11 = UserDefaults.standard
        let lang11 = userDef11.string(forKey: "Language")
        seatsimage.image = UIImage(named: "14");
        
        if(lang11 == "A")
        {
                   let font = "DIN Next LT W23"
            seatslabel.font =  UIFont(name: font, size: 17)
            seatslabel.text = "ضيق\n الراكب بيكون مفعوص في الجنبه"
            gotitbutton.titleLabel?.text = "فهمتك!"
        }else{
            
            seatslabel.text = "Limited space.\nPassenger is squeezed in the person beside him."
        }
        
        anyButtonSeatIsPressed()
    }
    @IBAction func button15pressed(_ sender: Any) {
        let userDef11 = UserDefaults.standard
        let lang11 = userDef11.string(forKey: "Language")
        
        seatsimage.image = UIImage(named: "15");
        if(lang11 == "A")
        {
                   let font = "DIN Next LT W23"
            seatslabel.font =  UIFont(name: font, size: 17)
            seatslabel.text = "ضيق\n الراكب بيكون مفعوص في الجنبه\n بس في مساحة قدام لفرد الرجل"
            gotitbutton.titleLabel?.text = "فهمتك!"
        }else{
            seatslabel.text = "Have a space to stretch the leg.\nLimited space, passenger is squeezed between the persons beside him."
        }
        anyButtonSeatIsPressed()
        
    }
    @IBAction func button16pressed(_ sender: Any) {
        let userDef11 = UserDefaults.standard
        let lang11 = userDef11.string(forKey: "Language")
        seatsimage.image = UIImage(named: "16");
        
        if(lang11 == "A")
        {
                   let font = "DIN Next LT W23"
            seatslabel.font =  UIFont(name: font, size: 17)
            seatslabel.text = "مريح و مافيش كراسي وراه\n بياخد المطبات كلها"
            gotitbutton.titleLabel?.text = "فهمتك!"
            
        }else{
            
            seatslabel.text = "Good Personal Space.\nNo seat behind it.\nTakes all the bumps."
        }
        
       anyButtonSeatIsPressed()
        
    }

    @IBAction func gotitbuttonpressed(_ sender: Any) {
        button1.isHidden = false;
        button2.isHidden = false;
        button3.isHidden = false;
        button4.isHidden = false;
        button5.isHidden = false;
        button6.isHidden = false;
        button7.isHidden = false;
        button8.isHidden = false;
        button9.isHidden = false;
        button10.isHidden = false;
        button11.isHidden = false;
        button12.isHidden = false;
        button13.isHidden = false;
        button14.isHidden = false;
        button15.isHidden = false;
        button16.isHidden = false;
        seatslabel.isHidden = true;
        seatsimage.isHidden = true;
        seats.isHidden = false;
        gotitbutton.isHidden = true
        let userDef11 = UserDefaults.standard
        let lang11 = userDef11.string(forKey: "Language")
        
        if(lang11 == "A"){
            gotitbutton.titleLabel?.text = "فهمتك!"
        }
        
    }
    

    
    @IBOutlet weak var gotitbutton: UIButton!
    @IBOutlet weak var seatsimage: UIImageView!
    @IBOutlet weak var seatslabel: UILabel!
    @IBAction func mohamedchanged(_ sender: UISegmentedControl) {
        switch(sender.selectedSegmentIndex) {
        case 0:
            choice = 1;
            self.performSegue(withIdentifier: "seatstobig", sender: nil)
            break;
        case 1:
            choice = 2;
            self.performSegue(withIdentifier: "seatstobig", sender: nil)
            break;
        case 2:
            self.performSegue(withIdentifier: "seatstohands", sender: nil)
            break;
        case 4:
            choice = 5;
            self.performSegue(withIdentifier: "seatstobig", sender: nil)
            break;
        default:
            break;
        }
        
    }
    
    func segmentedTab(){
        let userDef = UserDefaults.standard
        let lang = userDef.string(forKey: "Language")
        if(lang == "A"){
            mohamedseats.setTitle("المواقف و الأجرة", forSegmentAt: 0)
            mohamedseats.setTitle("إزاي توقفه؟", forSegmentAt: 1)
            mohamedseats.setTitle("علامات اليد", forSegmentAt: 2)
            mohamedseats.setTitle("اختيار الكرسي", forSegmentAt: 3)
            mohamedseats.setTitle("الخروج", forSegmentAt: 4)
          labelOfSeats?.text = "أختار كرسيك صح (دوس عكرسي)"
          
        }
        
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "seatstobig"){
            let destVC: SegmentedControl=segue.destination as! SegmentedControl
            destVC.choice = choice;
          
        }
        if (segue.identifier == "seatsToSettings") {
               if let SettingsViewController = segue.destination as? SettingsViewController {
                       SettingsViewController.src = "seats"
               }
           }
    }
    
    @objc func swiped(_ gesture: UISwipeGestureRecognizer) {
        if gesture.direction == .left {
            choice = 5;
            self.performSegue(withIdentifier: "seatstobig", sender: UISegmentedControl())
        } else if gesture.direction == .right {
       self.performSegue(withIdentifier: "seatstohands", sender: nil)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let attr = NSDictionary(object: UIFont(name: "Kharabeesh Font", size: 11)!, forKey: NSAttributedStringKey.font as NSCopying)
        self.mohamedseats.setTitleTextAttributes(attr as? [AnyHashable : Any], for: .normal)
        
        segmentedTab()
        
        let userDef11 = UserDefaults.standard
        let lang11 = userDef11.string(forKey: "Language")
        
        if(lang11 == "A"){
            gotitbutton.titleLabel?.text = "فهمتك!"
        }
        
        mohamedseats.selectedSegmentIndex = 3;
        let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(swiped))
        swipeRight.direction = UISwipeGestureRecognizerDirection.right
        self.view.addGestureRecognizer(swipeRight)
        
        let swipeLeft = UISwipeGestureRecognizer(target: self, action: #selector(swiped))
        swipeLeft.direction = UISwipeGestureRecognizerDirection.left
        self.view.addGestureRecognizer(swipeLeft)
        
        button1.isHidden = false;
        button2.isHidden = false;
        button3.isHidden = false;
        button4.isHidden = false;
        button5.isHidden = false;
        button6.isHidden = false;
        button7.isHidden = false;
        button8.isHidden = false;
        button9.isHidden = false;
        button10.isHidden = false;
        button11.isHidden = false;
        button12.isHidden = false;
        button13.isHidden = false;
        button14.isHidden = false;
        button15.isHidden = false;
        button16.isHidden = false;
        seatslabel.isHidden = true;
        gotitbutton.isHidden = true;
        seatsimage.isHidden = true;
        seats.isHidden = false;
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
