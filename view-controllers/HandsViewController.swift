//
//  HandsViewController.swift
//  Teet
//
//  Created by baher ibrahim on 11/27/17.
//  Copyright © 2017 Malak Sadek. All rights reserved.
//

import UIKit

class HandsViewController: UIViewController, UITableViewDataSource,UITableViewDelegate {

    @IBOutlet weak var handSignsLabel: UILabel!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 7;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
    if indexPath.row == 0 {
    let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! Row1TableViewCell;
    cell.contentView.layer.removeAllAnimations()
    //set the data here
    return cell
    }
    else if indexPath.row == 1 {
    let cell = tableView.dequeueReusableCell(withIdentifier: "cell1", for: indexPath) as! Row2TableViewCell;
    cell.contentView.layer.removeAllAnimations()
    //set the data here
    return cell
    }
    else if indexPath.row == 2 {
    let cell = tableView.dequeueReusableCell(withIdentifier: "cell2", for: indexPath) as! Row3TableViewCell;
    cell.contentView.layer.removeAllAnimations()
    //set the data here
    return cell
    }
    else if indexPath.row == 3 {
    let cell = tableView.dequeueReusableCell(withIdentifier: "cell3", for: indexPath) as! Row4TableViewCell;
    cell.contentView.layer.removeAllAnimations()
    //set the data here
    return cell
    }
    else if indexPath.row == 4 {
    let cell = tableView.dequeueReusableCell(withIdentifier: "cell4", for: indexPath) as! Row5TableViewCell;
    cell.contentView.layer.removeAllAnimations()
    //set the data here
    return cell
    }
    else if indexPath.row == 5 {
    let cell = tableView.dequeueReusableCell(withIdentifier: "cell5", for: indexPath) as! Row6TableViewCell;
    cell.contentView.layer.removeAllAnimations()
    //set the data here
    return cell
    }
    else if indexPath.row == 6 {
    let cell = tableView.dequeueReusableCell(withIdentifier: "cell6", for: indexPath) as! Row7TableViewCell;
    cell.contentView.layer.removeAllAnimations()
    //set the data here
    return cell
    }
    else {
    let cell = tableView.dequeueReusableCell(withIdentifier: "emptycell", for: indexPath) as! EmptyTableViewCell;
    cell.contentView.layer.removeAllAnimations()
    //set the data here
    return cell
    }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    return 150;
    }
    var choice = 0;
    @IBOutlet weak var mohamedhands: UISegmentedControl!
    @IBOutlet weak var HandSignButtons: UITableView!
    @IBOutlet weak var handsignicon: UIImageView!
    
    @IBAction func settingsButton3Pressed(_ sender: Any) {
        performSegue(withIdentifier: "handsToSettings", sender: nil)
    }
    
    @IBAction func mohamedchanged(_ sender: UISegmentedControl) {
        switch(sender.selectedSegmentIndex) {
        case 0:
        choice = 1;
        self.performSegue(withIdentifier: "handstobig", sender: nil)
        break;
        case 1:
        choice = 2;
        self.performSegue(withIdentifier: "handstobig", sender: nil)
        break;
        case 3:
        self.performSegue(withIdentifier: "handstoseats", sender: nil)
        break;
        case 4:
        choice = 5;
        self.performSegue(withIdentifier: "handstobig", sender: nil)
        break;
        default:
        break;
        }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "handstobig"){
            let destVC: SegmentedControl=segue.destination as! SegmentedControl
            destVC.choice = choice;
            
        }
        if (segue.identifier == "handsToSettings") {
              if let SettingsViewController = segue.destination as? SettingsViewController {
                      SettingsViewController.src = "hands"
              }
          }
    }
    
    @objc func swiped(_ gesture: UISwipeGestureRecognizer) {
        if gesture.direction == .left {
            self.performSegue(withIdentifier: "handstoseats", sender: nil)
        } else if gesture.direction == .right {
            choice = 2;
            self.performSegue(withIdentifier: "handstobig", sender: UISegmentedControl())
        }
    }
    
    func segmentedTab(){
        let userDef = UserDefaults.standard
        let lang = userDef.string(forKey: "Language")
        if(lang == "A"){
            //
            mohamedhands.setTitle("المواقف و الأجرة", forSegmentAt: 0)
            mohamedhands.setTitle("إزاي توقفه؟", forSegmentAt: 1)
            mohamedhands.setTitle("علامات اليد", forSegmentAt: 2)
            mohamedhands.setTitle("اختيار الكرسي", forSegmentAt: 3)
            mohamedhands.setTitle("الخروج", forSegmentAt: 4)
            handSignsLabel?.text = "ثقافة لغة الإشارة باليد (دوس على يد)"
            
        }
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let attr = NSDictionary(object: UIFont(name: "Kharabeesh Font", size: 11)!, forKey: NSAttributedStringKey.font as NSCopying)
        self.mohamedhands.setTitleTextAttributes(attr as? [AnyHashable : Any], for: .normal)
        
        segmentedTab()
        
        mohamedhands.selectedSegmentIndex = 2;
        let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(swiped))
        swipeRight.direction = UISwipeGestureRecognizerDirection.right
        self.view.addGestureRecognizer(swipeRight)
        
        let swipeLeft = UISwipeGestureRecognizer(target: self, action: #selector(swiped))
        swipeLeft.direction = UISwipeGestureRecognizerDirection.left
        self.view.addGestureRecognizer(swipeLeft)

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
