//
//  Row4TableViewCell.swift
//  Teet
//
//  Created by Malak Sadek on 11/22/17.
//  Copyright © 2017 Malak Sadek. All rights reserved.
//

import UIKit

class Row4TableViewCell: UITableViewCell {


    override func awakeFromNib() {
        super.awakeFromNib()
        handSignsArabic()
        popup.isHidden = true;
        gifimage.isHidden = true;
        // Initialization code
    }
    
    //4
    @IBOutlet weak var giza: UILabel!
    @IBOutlet weak var ramsis: UILabel!
    @IBOutlet weak var dokki: UILabel!
    
    @IBOutlet weak var popup: UIImageView!
    @IBOutlet weak var button1: UIButton!
    
    @IBOutlet weak var gifimage: UIImageView!
    
    func handSignsArabic()
    {
        let userDef = UserDefaults.standard
        if(userDef.string(forKey: "Language") == "A")
        {
            giza?.text = "جيزة"
            ramsis?.text = "رمسيس"
            dokki?.text = "دقي"
            giza?.font =  UIFont(name: "DIN Next LT W23", size: 16)
            ramsis?.font =  UIFont(name: "DIN Next LT W23", size: 16)
            dokki?.font =  UIFont(name: "DIN Next LT W23", size: 16)
        }
    }
    
    @IBAction func button1pressed(_ sender: Any) {
        button1.isOpaque = false;
        popup.isHidden = false;
        popup.frame = CGRect(x: -62, y: 13, width: popup.frame.size.width, height: popup.frame.size.height);
        
        gifimage.isHidden = false;
        let jeremyGif = UIImage.gifImageWithName("10.-Giza")
        
        gifimage.image = jeremyGif;
        
        gifimage.frame = CGRect(x: -62, y: 35, width: popup.frame.size.width, height: popup.frame.size.height)
    }
    
    @IBAction func button1released(_ sender: Any) {
        button1.isOpaque = true;
        popup.isHidden = true;
        gifimage.isHidden = true;
    }
    @IBOutlet weak var button2: UIButton!
    
    @IBAction func button2pressed(_ sender: Any) {
        button2.isOpaque = false;
        popup.isHidden = false;
        popup.frame = CGRect(x: 67, y: 13, width: popup.frame.size.width, height: popup.frame.size.height);
        
        gifimage.isHidden = false;
        let jeremyGif = UIImage.gifImageWithName("11.Dokki")
        
        gifimage.image = jeremyGif;
        
        gifimage.frame = CGRect(x: 67, y: 35, width: popup.frame.size.width, height: popup.frame.size.height)
    }
    @IBAction func button2released(_ sender: Any) {
        button2.isOpaque = true;
        popup.isHidden = true;
        gifimage.isHidden = true;
    }
    @IBOutlet weak var button3: UIButton!
    
    @IBAction func button3pressed(_ sender: Any) {
        button3.isOpaque = false;
        popup.isHidden = false;
        popup.frame = CGRect(x: 196, y: 13, width: popup.frame.size.width, height: popup.frame.size.height);
        ramsis.isHidden = true;
        
        gifimage.isHidden = false;
        //let jeremyGif = UIImage.gifImageWithName("12- Ramsis.png")
        
        gifimage.image = UIImage(named:"12- Ramsis1.png")
        
        gifimage.frame = CGRect(x: 196, y: 35, width: popup.frame.size.width, height: popup.frame.size.height)
    }
    @IBAction func button3released(_ sender: Any) {
        gifimage.isHidden = true;
        button3.isOpaque = true;
        popup.isHidden = true;
        ramsis.isHidden = false;
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
