//
//  Row1TableViewCell.swift
//  Teet
//
//  Created by Malak Sadek on 11/22/17.
//  Copyright © 2017 Malak Sadek. All rights reserved.
//

import UIKit

class Row1TableViewCell: UITableViewCell {
    var state = false;
    
    @IBOutlet weak var popup: UIImageView!
    
    @IBOutlet weak var button3: UIButton!
    
    @IBOutlet weak var button1: UIButton!
    
    @IBOutlet weak var gifimage: UIImageView!
    @IBOutlet weak var _6thDistrict: UILabel!
    @IBOutlet weak var _8thDistrict: UILabel!
    @IBOutlet weak var _7thDistrict: UILabel!
    
    func handSignsArabic()
    {
        let userDef = UserDefaults.standard
        if(userDef.string(forKey: "Language") == "A")
        {
            _6thDistrict?.text = "الحي السادس"
            _7thDistrict?.text = "الحي السابع"
            _8thDistrict?.text = "الحي التامن"
            _6thDistrict?.font =  UIFont(name: "DIN Next LT W23", size: 16)
            _7thDistrict?.font =  UIFont(name: "DIN Next LT W23", size: 16)
            _8thDistrict?.font =  UIFont(name: "DIN Next LT W23", size: 16)
        }
    }
    
    @IBAction func button3pressed(_ sender: Any) {
        //button3.isEnabled = false;
        button3.isOpaque = false;
        popup.isHidden = false;
        gifimage.isHidden = false;
        let jeremyGif = UIImage.gifImageWithName("3.-8th-District")
        
        gifimage.image = jeremyGif;
        
        gifimage.frame = CGRect(x: 196, y: 35, width: popup.frame.size.width, height: popup.frame.size.height)
        
        //view.addSubview(imageView)
        popup.frame = CGRect(x: 196, y: 13, width: popup.frame.size.width, height: popup.frame.size.height);
        _8thDistrict.isHidden = true;
    }
    @IBAction func button3released(_ sender: Any) {
        //button3.isEnabled = true;
        gifimage.isHidden = true;
        button3.isOpaque = true;
        popup.isHidden = true;
        _8thDistrict.isHidden = false;
    }
    @IBAction func button2pressed(_ sender: Any) {
        gifimage.isHidden = false;
        let jeremyGif = UIImage.gifImageWithName("2.-7th-District")
     
        
        gifimage.image = jeremyGif;
        
        gifimage.frame = CGRect(x: 67, y: 35, width: popup.frame.size.width, height: popup.frame.size.height)
        
        button2.isOpaque = false;
        popup.isHidden = false;
             popup.frame = CGRect(x: 67, y: 13, width: popup.frame.size.width, height: popup.frame.size.height);
    }
    
    @IBAction func button2released(_ sender: Any) {
        gifimage.isHidden = true;
        button2.isOpaque = true;
        popup.isHidden = true;
    }
    
    @IBAction func button1pressed(_ sender: Any) {
        gifimage.isHidden = false;
        let jeremyGif = UIImage.gifImageWithName("1.-6th-District")

        gifimage.image = jeremyGif;
        
        gifimage.frame = CGRect(x: -62, y: 25, width: popup.frame.size.width, height: popup.frame.size.height)
        
        button1.isOpaque = false;
        popup.isHidden = false;
        popup.frame = CGRect(x: -62, y: 13, width: popup.frame.size.width, height: popup.frame.size.height);
      
    }
    
    
    @IBAction func button1released(_ sender: Any) {
        gifimage.isHidden = true;
        button1.isOpaque = true;
        popup.isHidden = true;
    }
    @IBOutlet weak var button2: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        handSignsArabic()
        popup.isHidden = true;
        gifimage.isHidden = true;
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state/Users/malaksadek/Downloads/Clientt.h
    }

}
