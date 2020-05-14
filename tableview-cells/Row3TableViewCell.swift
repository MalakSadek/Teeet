//
//  Row3TableViewCell.swift
//  Teet
//
//  Created by Malak Sadek on 11/22/17.
//  Copyright © 2017 Malak Sadek. All rights reserved.
//

import UIKit

class Row3TableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        handSignsArabic()
        popup.isHidden = true;
        gifimage.isHidden = true;
        // Initialization code
    }
    @IBOutlet weak var popup: UIImageView!
    @IBOutlet weak var button1: UIButton!
    
    @IBOutlet weak var _45kilo: UILabel!
    @IBOutlet weak var alfaMaskan: UILabel!
    @IBOutlet weak var _3rdSett: UILabel!
    
    @IBOutlet weak var gifimage: UIImageView!
    
    func handSignsArabic()
    {
        let userDef = UserDefaults.standard
        if(userDef.string(forKey: "Language") == "A")
        {
            _45kilo?.text = "الكيلو 4.5"
            alfaMaskan?.text = "ألفا مسكن"
            _3rdSett?.text = "التجمع التالت"
            _45kilo?.font =  UIFont(name: "DIN-NEXT_-ARABIC-REGULAR", size: 16)
            alfaMaskan?.font =  UIFont(name: "DIN-NEXT_-ARABIC-REGULAR", size: 16)
            _3rdSett?.font =  UIFont(name: "DIN-NEXT_-ARABIC-REGULAR", size: 16)
            
        }
    }
    
    @IBAction func button1pressed(_ sender: Any) {
        button1.isOpaque = false;
        popup.isHidden = false;
        popup.frame = CGRect(x: -62, y: 13, width: popup.frame.size.width, height: popup.frame.size.height);
        
        gifimage.isHidden = false;
        let jeremyGif = UIImage.gifImageWithName("7.Kilo4.5")
        
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
        let jeremyGif = UIImage.gifImageWithName("8.-3rd-Settlement")
        
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
        
        gifimage.isHidden = false;
        let jeremyGif = UIImage.gifImageWithName("9. Alfa Maskan gif")
        
        gifimage.image = jeremyGif;
        
        gifimage.frame = CGRect(x: 196, y: 35, width: popup.frame.size.width, height: popup.frame.size.height)
    }
    @IBAction func button3released(_ sender: Any) {
        gifimage.isHidden = true;
        button3.isOpaque = true;
        popup.isHidden = true;
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
