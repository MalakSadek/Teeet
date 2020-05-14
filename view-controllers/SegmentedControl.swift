//
//  SegmentedControl.swift
//  Teet
//
//  Created by Mohamed Shedeed on 11/4/17.
//  Copyright © 2017 Malak Sadek. All rights reserved.
//

import UIKit
import GoogleMaps

class SegmentedControl: UIViewController{//,
    var choice = 0;

    
    @IBOutlet weak var stopIconEnglish1: UIImageView!
    @IBOutlet weak var stopIconEnglish2: UIImageView!
    @IBOutlet weak var stopIconEnglish3: UIImageView!
    
    @IBOutlet weak var stopIconArabic1: UIImageView!
    @IBOutlet weak var stopIconArabic2: UIImageView!
    @IBOutlet weak var stopIconArabic3: UIImageView!
    
    @IBOutlet weak var StopExitLabelEnglish1: UILabel!
    @IBOutlet weak var StopExitLabelEnglish2: UILabel!
    @IBOutlet weak var StopExitLabelEnglish3: UILabel!
    
    @IBOutlet weak var StopExitLabelArabic1: UILabel!
    @IBOutlet weak var StopExitLabelArabic2: UILabel!
    @IBOutlet weak var StopExitLabelArabic3: UILabel!
    
    @IBOutlet weak var mapicon: UIImageView!
    @IBOutlet weak var stopicon: UIImageView!
    @IBOutlet weak var outicon: UIImageView!
     @IBOutlet fileprivate weak var myMap: GMSMapView?
   
    @IBOutlet weak var mohamed: UISegmentedControl!
    
    @IBAction func settingsButton3Pressed(_ sender: Any) {
        performSegue(withIdentifier: "segmentsToSettings", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "segmentsToSettings") {
            if let SettingsViewController = segue.destination as? SettingsViewController {
                    SettingsViewController.src = "segment"
                SettingsViewController.segmentno = choice
            }
        }
    }
    
    func hideIconsWhenOnMap(){
        
        mapicon.isHidden = false;
        myMap?.isHidden = false;
        stopicon.isHidden = true;
        outicon.isHidden = true;
        
        stopIconArabic1.isHidden = true;
        stopIconArabic2.isHidden = true;
        stopIconArabic3.isHidden = true;
        stopIconEnglish1.isHidden = true;
        stopIconEnglish2.isHidden = true;
        stopIconEnglish3.isHidden = true;
        
        StopExitLabelArabic1.isHidden = true;
        StopExitLabelArabic2.isHidden = true;
        StopExitLabelArabic3.isHidden = true;
        StopExitLabelEnglish1.isHidden = true;
        StopExitLabelEnglish2.isHidden = true;
        StopExitLabelEnglish3.isHidden = true;
        
    }
    
    func hideAllIcons(){
        mapicon.isHidden = true;
        myMap?.isHidden = true;
        stopicon.isHidden = true;
        outicon.isHidden = true;
        
        stopIconArabic1.isHidden = true;
        stopIconArabic2.isHidden = true;
        stopIconArabic3.isHidden = true;
        stopIconEnglish1.isHidden = true;
        stopIconEnglish2.isHidden = true;
        stopIconEnglish3.isHidden = true;
        
        StopExitLabelArabic1.isHidden = true;
        StopExitLabelArabic2.isHidden = true;
        StopExitLabelArabic3.isHidden = true;
        StopExitLabelEnglish1.isHidden = true;
        StopExitLabelEnglish2.isHidden = true;
        StopExitLabelEnglish3.isHidden = true;
    }
    
    
    
    
    @IBAction func Sgmnt(_ sender: UISegmentedControl) {
        segmentedTab()
        switch sender.selectedSegmentIndex {
        case 0:
            hideIconsWhenOnMap()
            choice = 1
            break;
        case 1:
            choice = 2
            mapicon.isHidden = true;
            myMap?.isHidden = true;
            stopicon.isHidden = false;
            outicon.isHidden = true;
            
            let userDef = UserDefaults.standard
            let lang = userDef.string(forKey: "Language")
            if(lang == "A"){
                
                stopIconArabic1.isHidden = false
                stopIconArabic1.image = UIImage(named:"StopArabic1.png")
                
                stopIconArabic2.isHidden = false
                stopIconArabic2.image = UIImage(named:"StopArabic2.png")
                
                stopIconArabic3.isHidden = false
                stopIconArabic3.image = UIImage(named:"StopArabic3.png")

                StopExitLabelArabic1.isHidden = false
                StopExitLabelArabic1?.text = "حط عينك في عين سواق الميكروباص و شاورله. مش شرط السواق يشوفك او يقف ف ممكن تصفر له أسهل"
                
                StopExitLabelArabic2.isHidden = false
                StopExitLabelArabic2?.text = "صرخ  و قول المكان العايز تروحه و نط زي القرد جوه الميكروباص. بس في مدينة زحمة زي القاهرة محتاج حاجة اكتر من مجرد صوتك عشان تتسمع."
                
                StopExitLabelArabic3.isHidden = false
                StopExitLabelArabic3?.text = "أحفظ علامات اليد البتدل علي الأماكن و أعملها. دي الطريقة المضمونة فإن السواق يقف."
                
                stopIconEnglish1.isHidden = true
                stopIconEnglish2.isHidden = true
                stopIconEnglish3.isHidden = true
                StopExitLabelEnglish1.isHidden = true
                StopExitLabelEnglish2.isHidden = true
                StopExitLabelEnglish3.isHidden = true
                
            }else {
                
                stopIconArabic1.isHidden = true
                stopIconArabic2.isHidden = true
                stopIconArabic3.isHidden = true
                StopExitLabelArabic1.isHidden = true
                StopExitLabelArabic2.isHidden = true
                StopExitLabelArabic3.isHidden = true
                
                stopIconEnglish1.isHidden = false
                stopIconEnglish1.image = UIImage(named:"StopEnglish1.png")
                
                stopIconEnglish2.isHidden = false
                stopIconEnglish2.image = UIImage(named:"StopEnglish2.png")
                
                stopIconEnglish3.isHidden = false
                stopIconEnglish3.image = UIImage(named:"StopEnglish3.png")
                StopExitLabelEnglish1.isHidden = false
                StopExitLabelEnglish1?.text = "Make eye contact with the driver and wave to him. It is not guaranteed that the driver sees you, so you can whistle for him to stop."
                
                StopExitLabelEnglish2.isHidden = false
                StopExitLabelEnglish2?.text = "Yell the destination you are going to and jump to the microbus directly. However, in a loud city like Cairo, Egyptians need something more than just their voices to communicate with the microbus driver."
                
                StopExitLabelEnglish3.isHidden = false
                StopExitLabelEnglish3?.text = "Memorize the hand signs for each route and just do the correct sign for the microbus to stop."
            }
            
            
            break;
        case 2:
            choice = 3
            hideAllIcons()
            self.performSegue(withIdentifier: "bigtohands", sender: nil)
          
            break;
        case 3:
            choice = 4
            hideAllIcons()
            self.performSegue(withIdentifier: "bigtoseats", sender: nil)
            break;
        case 4:
            choice = 5
            mapicon.isHidden = true;
            myMap?.isHidden = true;
            stopicon.isHidden = true;
            outicon.isHidden = false;
            
            let userDef = UserDefaults.standard
            let lang = userDef.string(forKey: "Language")
            if(lang == "A"){
                
                stopIconArabic1.isHidden = false
                stopIconArabic1.image = UIImage(named:"OutArabic1.png")
                
                stopIconArabic2.isHidden = false
                stopIconArabic2.image = UIImage(named:"OutArabic2.png")
                
                stopIconArabic3.isHidden = false
                stopIconArabic3.image = UIImage(named:"OutArabic3.png")
                
                StopExitLabelArabic1.isHidden = false
                StopExitLabelArabic1?.text = "علي صوتك عشان تنزل و السواق يسمعك، و متستغربش لو وقف ينزل لك في نصف الشارع"
                
                StopExitLabelArabic2.isHidden = false
                StopExitLabelArabic2?.text = "افعص الناس و قومهم عشان تنزل"
                
                StopExitLabelArabic3.isHidden = false
                StopExitLabelArabic3?.text = "نط زي سلاحف النينجا برة الميكروباص"
                
                
                stopIconEnglish1.isHidden = true
                stopIconEnglish2.isHidden = true
                stopIconEnglish3.isHidden = true
                StopExitLabelEnglish1.isHidden = true
                StopExitLabelEnglish2.isHidden = true
                StopExitLabelEnglish3.isHidden = true
                
            }else {
                
                stopIconArabic1.isHidden = true
                stopIconArabic2.isHidden = true
                stopIconArabic3.isHidden = true
                StopExitLabelArabic1.isHidden = true
                StopExitLabelArabic2.isHidden = true
                StopExitLabelArabic3.isHidden = true
                
                stopIconEnglish1.isHidden = false
                stopIconEnglish1.image = UIImage(named:"OutEnglish1.png")
                
                stopIconEnglish2.isHidden = false
                stopIconEnglish2.image = UIImage(named:"OutEnglish2.png")
                
                stopIconEnglish3.isHidden = false
                stopIconEnglish3.image = UIImage(named:"OutEnglish3.png")
                
                StopExitLabelEnglish1.isHidden = false
                StopExitLabelEnglish1?.text = "Yell as much as you can till the driver hears you and stops.However, don’t be surprised if he just stops in the middle of the street to drop you off."
                
                StopExitLabelEnglish2.isHidden = false
                StopExitLabelEnglish2?.text = "Squeeze Into People and push them till you reach the microbus door. Also you can wait till all people get out of the microbus to make the path easier for you to get out."
                
                StopExitLabelEnglish3.isHidden = false
                StopExitLabelEnglish3?.text = "Jump out like a NINJA."
            }
            
            break;
        default:
            break;
        }
    }
    
    
    
    
    func showMarker(position: CLLocationCoordinate2D){
        
        let userDef = UserDefaults.standard
        let lang = userDef.string(forKey: "Language")
        /********************************************************************************/
        let marker1 = GMSMarker()
        marker1.position = position
        if(lang == "A"){
            marker1.title = "موقف عبود"
            marker1.snippet = "القاهرة - ٢.٥ جنيه"
        }else {
            marker1.title = "Abood Stop"
            marker1.snippet = "Cairo - 2.5 LE"
        }
        
        marker1.map = myMap
        marker1.position = GMSCameraPosition.camera(withLatitude: (30.10607), longitude:
            (31.25441), zoom: 15).target
        marker1.icon = GMSMarker.markerImage(with: UIColor.black)
        /********************************موقف المرج******************************************/
        let marker2 = GMSMarker()
        marker2.position = position
        if(lang == "A"){
            marker2.title = "موقف المرج"
            marker2.snippet = "القاهرة - ٣.٥ جنيه"
        }else {
            marker2.title = "Al Marj Stop"
            marker2.snippet = "Cairo - 3.50 LE"
        }
        marker2.map = myMap
        marker2.position = GMSCameraPosition.camera(withLatitude: (30.165094), longitude:
            (31.338507), zoom: 15).target
        marker2.icon = GMSMarker.markerImage(with: UIColor.cyan)
        /***********************************ميدان روكسي***************************************/
        let marker3 = GMSMarker()
        marker3.position = position
        if(lang == "A"){
            marker3.title = "ميدان روكسي"
            marker3.snippet = "القاهرة - ٤ جنيه"
        }else {
            marker3.title = "Roxi Stop"
            marker3.snippet = "Cairo - 4 LE"
        }
        marker3.map = myMap
        marker3.position = GMSCameraPosition.camera(withLatitude: (30.0923919), longitude:
            (31.3151104), zoom: 15).target
        marker3.icon = GMSMarker.markerImage(with: UIColor.black)
        /********************************ميدان الساعة, مدينة نصر*********************************/
        let marker4 = GMSMarker()
        marker4.position = position
        if(lang == "A"){
            marker4.title = "ميدان الساعة, مدينة نصر"
            marker4.snippet = "القاهرة - ٢ جنيه"
        }else {
            marker4.title = "Medan AlSaa, Madnt Nasr"
            marker4.snippet = "Cairo - 2 LE"
        }
        marker4.map = myMap
        marker4.position = GMSCameraPosition.camera(withLatitude: (30.0693531), longitude:
            (31.3384651), zoom: 15).target
        marker4.icon = GMSMarker.markerImage(with: UIColor.cyan)
        /*******************************موقف عبود المظلات************************************/
        let marker5 = GMSMarker()
        marker5.position = position
        if(lang == "A"){
            marker5.title = "موقف عبودالمظلات"
            marker5.snippet = "القاهرة - ٣ جنيه"
        }else {
            marker5.title = "Abood Mazalat Stop"
            marker5.snippet = "Cairo - 3 LE"
        }
        marker5.map = myMap
        marker5.position = GMSCameraPosition.camera(withLatitude: (30.0704678), longitude:
            (31.2592487), zoom: 15).target
        
        marker5.icon = GMSMarker.markerImage(with: UIColor.cyan)
        /*****************************موقف ميدان العباسية****************************************/
        let marker6 = GMSMarker()
        marker6.position = position
        if(lang == "A"){
            marker6.title = "موقف ميدان العباسية"
            marker6.snippet = "القاهرة - ٣.٥ جنيه"
        }else {
            marker6.title = "Medan Al Abasia Stop"
            marker6.snippet = "Cairo - 3.50 LE"
        }
        marker6.map = myMap
        marker6.position = GMSCameraPosition.camera(withLatitude: (30.0650075), longitude:
            (31.2714452), zoom: 15).target
        marker6.icon = GMSMarker.markerImage(with: UIColor.black)
        /********************************موقف العاشر من رمضان***************************************/
        let marker7 = GMSMarker()
        marker7.position = position
        if(lang == "A"){
            marker7.title = "موقف العاشر من رمضان"
            marker7.snippet = "القاهرة - ٢ جنيه"
        }else {
            marker7.title = "Al Asher Mn Ramadan Stop"
            marker7.snippet = "Cairo - 2 LE"
        }
        marker7.map = myMap
        marker7.position = GMSCameraPosition.camera(withLatitude: (30.2951875), longitude:
            (31.7447433), zoom: 15).target
        marker7.icon = GMSMarker.markerImage(with: UIColor.cyan)
        /*********************************جامعه المستقبل*****************************************/
        let marker8 = GMSMarker()
        marker8.position = position
        if(lang == "A"){
            marker8.title = "موقف ميكروباصات امام جامعه المستقبل"
            marker8.snippet = "القاهرة - ٣.٥ جنيه"
        }else {
            marker8.title = "Gaamet Al Mostakbal Stop"
            marker8.snippet = "Cairo - 3.50 LE"
        }
        marker8.map = myMap
        marker8.position = GMSCameraPosition.camera(withLatitude: (30.026242), longitude:
            (31.491564), zoom: 15).target
        marker8.icon = GMSMarker.markerImage(with: UIColor.black)
        /************************************ عرب المعادي**************************************/
        let marker9 = GMSMarker()
        marker9.position = position
        if(lang == "A"){
            marker9.title = "موقف عرب المعادي"
            marker9.snippet = "القاهرة - ٣.٥ جنيه"
        }else {
            marker9.title = "Arab Al Maadi Stop"
            marker9.snippet = "Cairo - 3.50 LE"
        }
        marker9.map = myMap
        marker9.position = GMSCameraPosition.camera(withLatitude: (29.9701788), longitude:
            (31.2699829), zoom: 15).target
        marker9.icon = GMSMarker.markerImage(with: UIColor.cyan)
        /***********************************حلوان***************************************/
        let marker10 = GMSMarker()
        marker10.position = position
        if(lang == "A"){
            marker10.title = "موقف ميكروباص حلوان"
            marker10.snippet = "القاهرة - ٢.٥ جنيه"
        }else {
            marker10.title = "Helwan Stop"
            marker10.snippet = "Cairo - 2.50 LE"
        }
        marker10.map = myMap
        marker10.position = GMSCameraPosition.camera(withLatitude: (29.8483192), longitude:
            (31.3368529), zoom: 15).target
        marker10.icon = GMSMarker.markerImage(with: UIColor.black)
        /*********************************المساكن*****************************************/
        let marker11 = GMSMarker()
        marker11.position = position
        if(lang == "A"){
            marker11.title = "موقف ميكروباص المساكن /حلوان"
            marker11.snippet = "القاهرة - ٣.٧٥ جنيه"
        }else {
            marker11.title = "Masaken/Helwan Stop"
            marker11.snippet = "Cairo - 3.75 LE"
        }
        marker11.map = myMap
        marker11.position = GMSCameraPosition.camera(withLatitude: (29.8637398), longitude:
            (31.3169891), zoom: 15).target
        marker11.icon = GMSMarker.markerImage(with: UIColor.cyan)
        /***********************************الازبكيه***************************************/
        let marker12 = GMSMarker()
        marker12.position = position
        if(lang == "A"){
            marker12.title = "موقف ميكروباص الازبكيه"
            marker12.snippet = "القاهرة - ٢ جنيه"
        }else {
            marker12.title = "Al Azbakeya Stop"
            marker12.snippet = "Cairo - 2 LE"
        }
        marker12.map = myMap
        marker12.position = GMSCameraPosition.camera(withLatitude: (30.0602929), longitude:
            (31.2468983), zoom: 15).target
        marker12.icon = GMSMarker.markerImage(with: UIColor.black)
        /********************************** موقف عزبة الهجانة******************************/
        let marker13 = GMSMarker()
        marker13.position = position
        if(lang == "A"){
            marker13.title = "موقف عزبة الهجانة"
            marker13.snippet = "القاهرة - ٢.٥ جنيه"
        }else {
            marker13.title = "Ezbet Al Hajana Stop"
            marker13.snippet = "Cairo - 2.50 LE"
        }
        marker13.map = myMap
        marker13.position = GMSCameraPosition.camera(withLatitude: (30.0694956), longitude:
            (31.3941835), zoom: 15).target
        marker13.icon = GMSMarker.markerImage(with: UIColor.cyan)
        /************************************ ترعه الجبل**************************************/
        let marker14 = GMSMarker()
        marker14.position = position
        if(lang == "A"){
            marker14.title = "موقف ميكروباص ترعه الجبل"
            marker14.snippet = "القاهرة - ٢ جنيه"
        }else {
            marker14.title = "Tereat Al Jbal Stop"
            marker14.snippet = "Cairo - 2 LE"
        }
        marker14.map = myMap
        marker14.position = GMSCameraPosition.camera(withLatitude: (30.1027816), longitude:
            (31.3014494), zoom: 15).target
        marker14.icon = GMSMarker.markerImage(with: UIColor.black)
        /**********************************الحي السابع***************************************/
        let marker15 = GMSMarker()
        marker15.position = position
        if(lang == "A"){
            marker15.title = "موقف ميكروباص (سكه الوايلى) الحي السابع"
            marker15.snippet = "القاهرة - ٢ جنيه"
        }else {
            marker15.title = "Al Hay Al Sabeea Stop"
            marker15.snippet = "Cairo - 2 LE"
        }
        marker15.map = myMap
        marker15.position = GMSCameraPosition.camera(withLatitude: (30.0469887), longitude:
            (31.3269987), zoom: 15).target
        marker15.icon = GMSMarker.markerImage(with: UIColor.cyan)
        /*********************************** الحى العاشر***************************************/
        let marker16 = GMSMarker()
        marker16.position = position
        if(lang == "A"){
            marker16.title = "موقف ميكروباصات الحى العاشر"
            marker16.snippet = "القاهرة - ٣.٥ جنيه"
        }else {
            marker16.title = "Al Hay Al Aasher Stop"
            marker16.snippet = "Cairo - 3.50 LE"
        }
        marker16.map = myMap
        marker16.position = GMSCameraPosition.camera(withLatitude: (30.0242628), longitude:
            (31.3884671), zoom: 15).target
        marker16.icon = GMSMarker.markerImage(with: UIColor.black)
        /*****************************السيدة عائشة*********************************************/
        let marker17 = GMSMarker()
        marker17.position = position
        if(lang == "A"){
            marker17.title = "موقف السيده عائشه"
            marker17.snippet = "القاهرة - ٣.٥ جنيه"
        }else {
            marker17.title = "Al Sayeda Aeesha Stop"
            marker17.snippet = "Cairo - 3.50 LE"
            marker17.map = myMap
        }
        marker17.position = GMSCameraPosition.camera(withLatitude: (29.9930668), longitude:
            (31.2514213), zoom: 15).target
        marker17.icon = GMSMarker.markerImage(with: UIColor.cyan)
        /*********************************ميدان الالف مسكن***************************************/
        let marker18 = GMSMarker()
        marker18.position = position
        if(lang == "A"){
            marker18.title = "موقف الألف مسكن"
            marker18.snippet = "القاهرة - ٤ جنيه"
        }else {
            marker18.title = "Al Alf Maskn Stop"
            marker18.snippet = "Cairo - 4 LE"
        }
        marker18.map = myMap
        marker18.position = GMSCameraPosition.camera(withLatitude: (30.1188399), longitude:
            (31.3403286), zoom: 15).target
        marker18.icon = GMSMarker.markerImage(with: UIColor.black)
        /************************************الدويقة********************************************/
        let marker19 = GMSMarker()
        marker19.position = position
        if(lang == "A"){
            marker19.title = "موقف الدويقة"
            marker19.snippet = "القاهرة - ٣.٥ جنيه"
        }else {
            marker19.title = "Al Dokeya Stop"
            marker19.snippet = "Cairo - 3.50 LE"
        }
        marker19.map = myMap
        marker19.position = GMSCameraPosition.camera(withLatitude: (30.0432894), longitude:
            (31.2953968), zoom: 15).target
        marker19.icon = GMSMarker.markerImage(with: UIColor.cyan)
        /**************************************جسر السويس******************************************/
        let marker20 = GMSMarker()
        marker20.position = position
        if(lang == "A"){
            marker20.title = "موقف جسر السويس"
            marker20.snippet = "القاهرة - ٢.٥ جنيه"
        }else {
            marker20.title = "Gesr Al Swis Stop"
            marker20.snippet = "Cairo - 3.50 LE"
        }
        marker20.map = myMap
        marker20.position = GMSCameraPosition.camera(withLatitude: (30.1410034), longitude:
            (31.3971633), zoom: 15).target
        marker20.icon = GMSMarker.markerImage(with: UIColor.black)
        /********************************موقف عبد المنعم رياض**********************************/
        let marker21 = GMSMarker()
        marker21.position = position
        if(lang == "A"){
            marker21.title = "موقف عبد المنعم رياض"
            marker21.snippet = "القاهرة - ٢ جنيه"
        }else {
            marker21.title = "AbdAlMenim Ryad Stop"
            marker21.snippet = "Cairo - 2 LE"
        }
        marker21.map = myMap
        marker21.position = GMSCameraPosition.camera(withLatitude: (30.0500681), longitude:
            (31.2336937), zoom: 15).target
        marker21.icon = GMSMarker.markerImage(with: UIColor.cyan)
        /**************************************رمسيس******************************************/
        let marker22 = GMSMarker()
        marker22.position = position
        if(lang == "A"){
            marker22.title = "موقف رمسيس"
            marker22.snippet = "القاهرة - ١ جنيه"
        }else {
            marker22.title = "Ramsis Stop"
            marker22.snippet = "Cairo - 1 LE"
        }
        marker22.map = myMap
        marker22.position = GMSCameraPosition.camera(withLatitude: (30.0607559), longitude:
            (31.2456016), zoom: 15).target
        marker22.icon = GMSMarker.markerImage(with: UIColor.black)
        /***********************************إمبابة*********************************************/
        let marker23 = GMSMarker()
        marker23.position = position
        if(lang == "A"){
            marker23.title = "موقف امبابة"
            marker23.snippet = "القاهرة - ٤ جنيه"
        }else {
            marker23.title = "Imbaba Stop"
            marker23.snippet = "Cairo - 4 LE"
        }
        marker23.map = myMap
        marker23.position = GMSCameraPosition.camera(withLatitude: (30.079579), longitude:
            (31.1984178), zoom: 15).target
        marker23.icon = GMSMarker.markerImage(with: UIColor.cyan)
        /**********************************موقف المؤسسة******************************************/
        let marker24 = GMSMarker()
        marker24.position = position
        if(lang == "A"){
            marker24.title = "موقف عبود"
            marker24.snippet = "القاهرة - ٢.٢٥ جنيه"
        }else {
            marker24.title = "Al Moasasa Stop"
            marker24.snippet = "Cairo - 2.25 LE"
        }
        marker24.map = myMap
        marker24.position = GMSCameraPosition.camera(withLatitude: (30.1407775), longitude:
            (31.2520559), zoom: 15).target
        marker24.icon = GMSMarker.markerImage(with: UIColor.black)
        /****************************************عين شمس****************************************/
        let marker25 = GMSMarker()
        marker25.position = position
        if(lang == "A"){
            marker25.title = "موقف عين شمس"
            marker25.snippet = "القاهرة - ٢ جنيه"
        }else {
            marker25.title = "Ein Shams Stop"
            marker25.snippet = "Cairo - 2 LE"
        }
        marker25.map = myMap
        marker25.position = GMSCameraPosition.camera(withLatitude: (30.1301047), longitude:
            (31.54243469), zoom: 15).target
        marker25.icon = GMSMarker.markerImage(with: UIColor.cyan)
        /******************************موقف التجمع الاول*******************************************/
        let marker26 = GMSMarker()
        marker26.position = position
        if(lang == "A"){
            marker26.title = "موقف التجمع الأول"
            marker26.snippet = "القاهرة - ٢ جنيه"
        }else {
            marker26.title = "Al Tagmoa Al Awal Stop"
            marker26.snippet = "Cairo - 2 LE"
        }
        marker26.map = myMap
        marker26.position = GMSCameraPosition.camera(withLatitude: (30.0646026), longitude:
            (31.4490996), zoom: 15).target
        marker26.icon = GMSMarker.markerImage(with: UIColor.black)
        /*************************************موقف السلام************************************/
        let marker27 = GMSMarker()
        marker27.position = position
        if(lang == "A"){
            marker27.title = "موقف السلام"
            marker27.snippet = "القاهرة - ٢.٥ جنيه"
        }else {
            marker27.title = "Al Salam Stop"
            marker27.snippet = "Cairo - 2.50 LE"
        }
        marker27.map = myMap
        marker27.position = GMSCameraPosition.camera(withLatitude: (29.9895151), longitude:
            (31.2540523), zoom: 15).target
        marker27.icon = GMSMarker.markerImage(with: UIColor.cyan)
        /**************************المطرية***********************************/
        let marker28 = GMSMarker()
        marker28.position = position
        if(lang == "A"){
            marker1.title = "موقف المطرية"
            marker1.snippet = "القاهرة - ٢ جنيه"
        }else {
            marker28.title = "Al Matarya Stop"
            marker28.snippet = "Cairo - 2 LE"
        }
        marker28.map = myMap
        marker28.position = GMSCameraPosition.camera(withLatitude: (30.1253988), longitude:
            (31.3181252), zoom: 15).target
        marker28.icon = GMSMarker.markerImage(with: UIColor.black)
        
        
        
    }
    
    
    @IBOutlet weak var titleofpage: UILabel!
    func segmentedTab(){
        let userDef = UserDefaults.standard
        let lang = userDef.string(forKey: "Language")
        if(lang == "A"){
            
            mohamed.setTitle("المواقف و الأجرة", forSegmentAt: 0)
            mohamed.setTitle("إزاي توقفه؟", forSegmentAt: 1)
            mohamed.setTitle("علامات اليد", forSegmentAt: 2)
            mohamed.setTitle("اختيار الكرسي", forSegmentAt: 3)
            mohamed.setTitle("الخروج", forSegmentAt: 4)
            
            if(mohamed.selectedSegmentIndex == 0)
            {
                titleofpage?.text = "المواقف و الأجرة"
                
            }
            else if(mohamed.selectedSegmentIndex == 1){
                titleofpage?.text = "إزاي توقفه؟"
            }
            else if(mohamed.selectedSegmentIndex == 4){
                titleofpage?.text = "الخروج من الميكروباص"
            }
            
        
            
        }else
        {
            if(mohamed.selectedSegmentIndex == 0)
            {
                titleofpage?.text = "Stops and Fares"
                
            }
            else if(mohamed.selectedSegmentIndex == 1){
                titleofpage?.text = "How to Stop A Microbus"
            }
            else if(mohamed.selectedSegmentIndex == 4){
                titleofpage?.text = "How to Get Out of A Microbus"
            }
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let attr = NSDictionary(object: UIFont(name: "Kharabeesh Font", size: 11)!, forKey: NSAttributedStringKey.font as NSCopying)
        self.mohamed.setTitleTextAttributes(attr as? [AnyHashable : Any], for: .normal)
        
        segmentedTab()
        
        let camera = GMSCameraPosition.camera(withLatitude: 30.10607, longitude: 31.25441, zoom: 11.0)
        self.myMap?.camera = camera
        showMarker(position: camera.target)
        
        let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(swiped))
        swipeRight.direction = UISwipeGestureRecognizerDirection.right
        self.view.addGestureRecognizer(swipeRight)
        
        let swipeLeft = UISwipeGestureRecognizer(target: self, action: #selector(swiped))
        swipeLeft.direction = UISwipeGestureRecognizerDirection.left
        self.view.addGestureRecognizer(swipeLeft)
        
        
     hideAllIcons()
        mapicon.isHidden = true;
        // Do any additional setup after loading the view.
    }
    
    @objc func swiped(_ gesture: UISwipeGestureRecognizer) {
        if gesture.direction == .left {
            if (mohamed?.selectedSegmentIndex)! < 5 { // set your total tabs here
                mohamed?.selectedSegmentIndex += 1
                choice += 1
                mohamed.sendActions(for: .valueChanged)
                
            }
        } else if gesture.direction == .right {
            if (mohamed?.selectedSegmentIndex)! > 0 {
                mohamed?.selectedSegmentIndex -= 1
                choice -= 1
                mohamed.sendActions(for: .valueChanged)
            }
        }
        segmentedTab()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
    
    
    override func viewWillAppear(_ animated: Bool) {
        UIApplication.shared.statusBarStyle = .lightContent
        mohamed?.selectedSegmentIndex = choice-1;
        mohamed.sendActions(for: .valueChanged)
        segmentedTab()
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
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

extension ViewController: GMSMapViewDelegate{
    /* handles Info Window tap */
    func mapView(_ mapView: GMSMapView, didTapInfoWindowOf marker: GMSMarker) {
        print("didTapInfoWindowOf")
    }
    
    /* handles Info Window long press */
    func mapView(_ mapView: GMSMapView, didLongPressInfoWindowOf marker: GMSMarker) {
        print("didLongPressInfoWindowOf")
    }
    
    /* set a custom Info Window */
    func mapView(_ mapView: GMSMapView, markerInfoWindow marker: GMSMarker) -> UIView? {
        let view = UIView(frame: CGRect.init(x: 0, y: 0, width: 200, height: 70))
        view.backgroundColor = UIColor.white
        view.layer.cornerRadius = 6
        
        let lbl1 = UILabel(frame: CGRect.init(x: 8, y: 8, width: view.frame.size.width - 16, height: 15))
        lbl1.text = "Hi there!"
        view.addSubview(lbl1)
        
        let lbl2 = UILabel(frame: CGRect.init(x: lbl1.frame.origin.x, y: lbl1.frame.origin.y + lbl1.frame.size.height + 3, width: view.frame.size.width - 16, height: 15))
        lbl2.text = "I am a custom info window."
        lbl2.font = UIFont.systemFont(ofSize: 14, weight: .light)
        view.addSubview(lbl2)
        
        return view
    }
    
}

