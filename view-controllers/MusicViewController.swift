//
//  MusicViewController.swift
//  Teet
//
//  Created by Malak Sadek on 11/24/17.
//  Copyright © 2017 Malak Sadek. All rights reserved.
//

import UIKit
import AVFoundation

class MusicViewController: UIViewController, UITableViewDataSource,UITableViewDelegate{
    
    var arrayOfMusic:[String] = []
    var arrayOfDictionary:[String] = []
    
    @IBAction func settingsButton3Pressed(_ sender: Any) {
        performSegue(withIdentifier: "mediaToSettings", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "mediaToSettings") {
            if let SettingsViewController = segue.destination as? SettingsViewController {
                    SettingsViewController.src = "media"
                SettingsViewController.segmentno = choice
            }
        }
    }
    
    //@IBOutlet weak var commingSoon: UILabel!
    @IBOutlet weak var bigGamesIcon: UIImageView!
    var player: AVAudioPlayer!
    var choice = 0;
    @IBAction func mohamedchanged(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            dictionarytitle.isHidden = false;
            dictionarytable.isHidden = false;
            iconsdictionary.isHidden = false;
            musiclist.isHidden = true;
            iconsmusic.isHidden = true;
            musictitle.isHidden = true;
            play.isHidden = true;
            pause.isHidden = true;
            bigGamesIcon.isHidden = true;
            choice = 1
            break;
        case 1:
            dictionarytitle.isHidden = true;
            dictionarytable.isHidden = true;
            iconsdictionary.isHidden = true;
            musiclist.isHidden = false;
            iconsmusic.isHidden = false;
            musictitle.isHidden = false;
            play.isHidden = false;
            pause.isHidden = false;
            bigGamesIcon.isHidden = true;
            choice = 2
            break;
        case 2:
            dictionarytitle.isHidden = true;
            dictionarytable.isHidden = true;
            iconsdictionary.isHidden = true;
            musiclist.isHidden = true;
            iconsmusic.isHidden = true;
            musictitle.isHidden = true;
            play.isHidden = true;
            pause.isHidden = true;
            bigGamesIcon.isHidden = false;
            choice = 3
            break;
        default:
            break;
        }
        musiclist.reloadData();
        dictionarytable.reloadData();
    }
    
    override func viewWillAppear(_ animated: Bool) {
        UIApplication.shared.statusBarStyle = .lightContent
        mohamed2?.selectedSegmentIndex = choice-1;
        mohamed2.sendActions(for: .valueChanged)
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    @objc func swiped(_ gesture: UISwipeGestureRecognizer) {
        if gesture.direction == .left {
            if (mohamed2?.selectedSegmentIndex)! < 3 { // set your total tabs here
                mohamed2?.selectedSegmentIndex += 1
                choice += 1
                mohamed2.sendActions(for: .valueChanged)
            }
        } else if gesture.direction == .right {
            if (mohamed2?.selectedSegmentIndex)! > 0 {
                mohamed2?.selectedSegmentIndex -= 1
                choice -= 1
                mohamed2.sendActions(for: .valueChanged)
            }
        }
    }
    
    
    @IBOutlet weak var mohamed2: UISegmentedControl!
    @IBOutlet weak var dictionarytitle: UILabel!
    @IBOutlet weak var musictitle: UILabel!
    @IBOutlet weak var musiclist: UITableView!
    @IBOutlet weak var iconsmusic: UIImageView!
    @IBOutlet weak var iconsdictionary: UIImageView!
    @IBAction func pausePressed(_ sender: Any) {
        if (player.isPlaying) {
            player.pause();
            pause.isEnabled = false;
            play.isEnabled = true;
        }
    }
    @IBOutlet weak var pause: UIButton!
    
    @IBAction func playPressed(_ sender: Any) {
        if (!player.isPlaying) {
            player.play();
            pause.isEnabled = true;
            play.isEnabled = false;
        }
    }
    @IBOutlet weak var play: UIButton!
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if (mohamed2.selectedSegmentIndex == 1) {
        return arrayOfMusic.count
        }
        else  {
            return arrayOfDictionary.count
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if (mohamed2.selectedSegmentIndex != 1) {
            if ((indexPath.row != 1)&&(indexPath.row != 3)&&(indexPath.row != 5)&&(indexPath.row != 7)&&(indexPath.row != 11)&&(indexPath.row != 13)&&(indexPath.row != 16)&&(indexPath.row != 18)&&(indexPath.row != 20)&&(indexPath.row != 22)&&(indexPath.row != 24)&&(indexPath.row != 26)&&(indexPath.row != 28)&&(indexPath.row != 30)&&(indexPath.row != 32)&&(indexPath.row != 34)&&(indexPath.row != 36)&&(indexPath.row != 38)&&(indexPath.row != 40)&&(indexPath.row != 42)&&(indexPath.row != 44)&&(indexPath.row != 46)&&(indexPath.row != 48)&&(indexPath.row != 50)&&(indexPath.row != 52)&&(indexPath.row != 54)&&(indexPath.row != 0)&&(indexPath.row != 15)&&(indexPath.row != 9)) {
                //this one chnaged
                return 100;
            }
            else {
                //this one chnaged
                return 50;
            }
        } else {
            return 50;
        }
    }
    
    @IBOutlet weak var dictionarytable: UITableView!
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       // print(mohamed2.selectedSegmentIndex);
        if (mohamed2.selectedSegmentIndex == 1) {
        let cell = musiclist.dequeueReusableCell(withIdentifier: "cell") as! MusicCell // create cell like tableviewcell
        
        var fontName = String()
        let userDef = UserDefaults.standard
  
             fontName = "AvantGardeMdITC"
             cell.name.font = UIFont(name:fontName, size:16)
       
       
        
        cell.name.text = arrayOfMusic[indexPath.row]
        
        cell.contentView.layer.removeAllAnimations()
        
        return cell
        }
        else {
            if ((indexPath.row == 0)||(indexPath.row == 15)) {
                let cell = dictionarytable.dequeueReusableCell(withIdentifier: "cell0") as! WhiteLabelTableViewCell;
                cell.contentView.layer.removeAllAnimations()
                cell.label.text = arrayOfDictionary[indexPath.row];
                 let userDef = UserDefaults.standard
                if(userDef.string(forKey: "Language") == "A")
                {
                    cell.label.textAlignment = NSTextAlignment.right
                }
                else {
                    cell.label.textAlignment = NSTextAlignment.left
                }
                return cell
            }

            else if ((indexPath.row == 1)||(indexPath.row == 3)||(indexPath.row == 5)||(indexPath.row == 7)||(indexPath.row == 11)||(indexPath.row == 13)||(indexPath.row == 16)||(indexPath.row == 18)||(indexPath.row == 20)||(indexPath.row == 22)||(indexPath.row == 24)||(indexPath.row == 26)||(indexPath.row == 28)||(indexPath.row == 30)||(indexPath.row == 32)||(indexPath.row == 34)||(indexPath.row == 36)||(indexPath.row == 38)||(indexPath.row == 40)||(indexPath.row == 42)||(indexPath.row == 44)||(indexPath.row == 46)||(indexPath.row == 48)||(indexPath.row == 9)||(indexPath.row == 50)||(indexPath.row == 52)||(indexPath.row == 54)) {
                let cell = dictionarytable.dequeueReusableCell(withIdentifier: "cell1") as! YellowLabelTableViewCell;
                cell.contentView.layer.removeAllAnimations()
                cell.label.text = arrayOfDictionary[indexPath.row];
                let userDef = UserDefaults.standard
                if(userDef.string(forKey: "Language") == "A")
                {
                 cell.label.textAlignment = NSTextAlignment.right
                }
                else {
                     cell.label.textAlignment = NSTextAlignment.left
                }
                return cell
        }
           else {
                let userDef = UserDefaults.standard
                if(userDef.string(forKey: "Language") == "A")
                {
                    let cell = dictionarytable.dequeueReusableCell(withIdentifier: "cell2a") as! DictionaryArabicTableViewCell;
                    cell.contentView.layer.removeAllAnimations()
                    cell.label.text = arrayOfDictionary[indexPath.row];
                     cell.label.textAlignment = NSTextAlignment.right
                    return cell
                } else {
                    let cell = dictionarytable.dequeueReusableCell(withIdentifier: "cell2e") as! DescriptionTableViewCell;
                    cell.contentView.layer.removeAllAnimations()
                    cell.label.text = arrayOfDictionary[indexPath.row];
                     cell.label.textAlignment = NSTextAlignment.left
                    return cell
                }
                
            }
            
    }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if (mohamed2.selectedSegmentIndex == 1) {
        switch(indexPath.row) {
        case 0:
            guard let path = Bundle.main.path(forResource: "mahragan1", ofType: "mp3") else {return}
            
            try? player = AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            try? player.prepareToPlay()
            break;
            
        case 1:
            guard let path = Bundle.main.path(forResource: "mahragan2", ofType: "mp3") else {return}
            
            try? player = AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            try? player.prepareToPlay()
            break;
        case 2:
            guard let path = Bundle.main.path(forResource: "mahragan3", ofType: "mp3") else {return}
            
            try? player = AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            try? player.prepareToPlay()
            
            break;
        case 3:
            guard let path = Bundle.main.path(forResource: "mahragan4", ofType: "mp3") else {return}
            
            try? player = AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            try? player.prepareToPlay()
            
            break;
        case 4:
            guard let path = Bundle.main.path(forResource: "mahragan5", ofType: "mp3") else {return}
            
            try? player = AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            try? player.prepareToPlay()
            
            break;
        case 5:
            guard let path = Bundle.main.path(forResource: "mahragan6", ofType: "mp3") else {return}
            
            try? player = AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            try? player.prepareToPlay()
            
            break;
        case 6:
            guard let path = Bundle.main.path(forResource: "mahragan7", ofType: "mp3") else {return}
            
            try? player = AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            try? player.prepareToPlay()
            
            break;
        case 7:
            guard let path = Bundle.main.path(forResource: "mahragan8", ofType: "mp3") else {return}
            
            try? player = AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            try? player.prepareToPlay()
            
            break;
        case 8:
            guard let path = Bundle.main.path(forResource: "mahragan9", ofType: "mp3") else {return}
            
            try? player = AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            try? player.prepareToPlay()
            
            break;
        case 9:
            guard let path = Bundle.main.path(forResource: "mahragan10", ofType: "mp3") else {return}
            
            try? player = AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            try? player.prepareToPlay()
            
            break;
        case 10:
            guard let path = Bundle.main.path(forResource: "mahragan11", ofType: "mp3") else {return}
            
            try? player = AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            try? player.prepareToPlay()
            
            break;
        case 11:
            guard let path = Bundle.main.path(forResource: "mahragan12", ofType: "mp3") else {return}
            
            try? player = AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            try? player.prepareToPlay()
            
            break;
        case 12:
            guard let path = Bundle.main.path(forResource: "mahragan13", ofType: "mp3") else {return}
            
            try? player = AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            try? player.prepareToPlay()
            
            break;
        default:
            break;
            
        }
            player.rate = 1.0;
            player.play()
            pause.isEnabled = true;
        }
    }
    
    
    func listArabic()
    {
        arrayOfDictionary.append("كلمات متداولة");
        arrayOfDictionary.append("القلاب");
        arrayOfDictionary.append(" الكرسي الجنب باب الميكروباص البيتفتح و يتقفل كل ما حد يدخل او يخرج من الميكروباص");
        arrayOfDictionary.append("أبلة");
        arrayOfDictionary.append("لقب أي أنثى مش عارفين اسمها");
        arrayOfDictionary.append("باشمهندس");
        arrayOfDictionary.append(" لقب اي راجل حتي لو هو مش مهندس فعلا");
        arrayOfDictionary.append("الباقي");
        arrayOfDictionary.append("باقي الأجرة");
        arrayOfDictionary.append("الأجرة");
        arrayOfDictionary.append("ثمن أي ركوبة ميكروباص");
        arrayOfDictionary.append("موقف");
        arrayOfDictionary.append("المكان البنركب منه اي ميكروباص");
        arrayOfDictionary.append("ياسطي");
        arrayOfDictionary.append("لقب اي سواق ميكروباص مش عارفين أسمه");
        arrayOfDictionary.append("جمل و مصطلحات معروفة");
        arrayOfDictionary.append("2 من 5 او 3  من 10 ");
        arrayOfDictionary.append("تذكرتين من خمسة جنيه، تلات تذاكر من عشرة جنيه");
        arrayOfDictionary.append("علي جنب ياسطي-- علي أيدك هنا");
        arrayOfDictionary.append("تتقال لما حد يكون عايز ينزل من الميكروباص");
        arrayOfDictionary.append("علي مهلك يا أمي");
        arrayOfDictionary.append("بتتقال لما ست كبيرة تكون نازلة براحة من الميكروباص");
        arrayOfDictionary.append("الباب معاك يا باشمهندس");
        arrayOfDictionary.append("طلب من السواق للشخص النازل من الميكروباص انه يقفل الباب");
        arrayOfDictionary.append("الأجرة كام ياسطي؟");
        arrayOfDictionary.append("سؤال اي شخص مبتدأ عن أجرة الميكروباص");
        arrayOfDictionary.append("الباقي ورا ياسطي");
        arrayOfDictionary.append("طلب لتوصيل الباقي للكراسي ورا من السواق للراكب");
        arrayOfDictionary.append("الأخر هنا يا جدعان");
        arrayOfDictionary.append("طريقة شيك من السواق انه يقول للركاب وصلنا أخر الخط أتفضلوا أنزلوا");
        arrayOfDictionary.append("الأجرة مع بعد يا حضارات الأول");
        arrayOfDictionary.append("طلب السواق البخيل من الركاب للم الأجرة من بعض قبل ما يتحرك");
        arrayOfDictionary.append("فاضي ورا، خوشي يا مدام");
        arrayOfDictionary.append("طريقة لتوضيح الكراسي الفاضية في أخر الميكروباص");
        arrayOfDictionary.append("خش رابع ورا");
        arrayOfDictionary.append("رابع معناها اخر كرسي ورا في الميكروباص");
        arrayOfDictionary.append("حمدالله علي السلامة");
        arrayOfDictionary.append("لما يكون سواق شيك بيطلب الأجرة من الركاب");
        arrayOfDictionary.append("خف نفسك يا باشمهندس");
        arrayOfDictionary.append("طلب السواق المستعجل من النازل من الميكروباص انه يتحرك أسرع من كدة");
        arrayOfDictionary.append("لسه أول فردة معاك يا باشا");
        arrayOfDictionary.append("فردة معناها أول طالعة بالميكروباص النهاردة ولسه السواق مش معاه فكة");
        arrayOfDictionary.append("لما العربية تحمل يا أستاذ");
        arrayOfDictionary.append("ما الركاب تسأل السواق هيتحرك امتي و هو يرد أنه هيتحرك لما العربية تتملي كلها");
        arrayOfDictionary.append("متحطش رجلك في ظهر الكرسي");
        arrayOfDictionary.append("دي قاعدة من قواعد أي سواق ميكروباص مصري أصيل");
        arrayOfDictionary.append("ممنوع التدخين يا حضارات");
        arrayOfDictionary.append("قاعدة أخري لمنع التدخين في الميكروباص بس دي نادرا لما بتحصل");
        arrayOfDictionary.append("نوسع للنازل");
        arrayOfDictionary.append("طلب لتوسيع مساحة كافية للشخص النازل من الميكروباص");
        arrayOfDictionary.append("قدام محجوز يا باشا");
        arrayOfDictionary.append("جملة شهيرة للسواق، يا اما بيكون حاجز الكرسي الجنبه لأي بنت حلوة تيجي يا اما بيكون حد حاجزه فعلا");
        arrayOfDictionary.append("سكة كدة يا برنس");
        arrayOfDictionary.append("بتتقال لما يكون حد مزنوق في الميكروباص و عايز باقي الركاب توسع له");
        arrayOfDictionary.append("تشيلوا الكراسي الفاضية و نطلع");
        arrayOfDictionary.append("لما الميكروباص ميكونش كامل لسه بس السواق مستعجل وعايز يتحرك فيطلب من الركاب يدفعوا أجرة باقي الكراسي الفاضية");
    }
    func listEnglish(){
        arrayOfDictionary.append("Keywords for Any Microbus Ride");
        arrayOfDictionary.append("Allaab");
        arrayOfDictionary.append("The seat beside the door, which is folded up and down whenever, someone is getting in or out of the microbus.");
        arrayOfDictionary.append("Abla");
        arrayOfDictionary.append("A nickname for any female");
        arrayOfDictionary.append("Bashmohandes");
        arrayOfDictionary.append("It is a nickname for any male, but it originally means engineer.");
        arrayOfDictionary.append("El Baky");
        arrayOfDictionary.append("The change/ money.");
        arrayOfDictionary.append("El Ogra");
        arrayOfDictionary.append("The Fare paid for a ride");
        arrayOfDictionary.append("Mawqaf");
        arrayOfDictionary.append("The stop where a person can get a microbus from");
        arrayOfDictionary.append("Osta");
        arrayOfDictionary.append("A nickname for any microbus driver, and it is always used instead of knowing the drivers’ name");
        arrayOfDictionary.append("Phrases");
        arrayOfDictionary.append("“2 men 5” “3 men 10”");
        arrayOfDictionary.append("As in 2 tickets from 5 pounds, and 3 tickets from 10 pounds");
        arrayOfDictionary.append("“Ala ganb ya osta - Ala Edak hena ya osta”");
        arrayOfDictionary.append("Passengers say this when they are asking the driver to stop to let them out of the microbus.");
        arrayOfDictionary.append("“Ala mehlek ya omy”");
        arrayOfDictionary.append("Mehlek means take your time, It is usually said when an old woman is getting in or out of the microbus.");
        arrayOfDictionary.append("“El bab maa’k ya Bashmohandes”");
        arrayOfDictionary.append("The driver asking people to close the door of the microbus.");
        arrayOfDictionary.append("“El ogra kam ya osta?”");
        arrayOfDictionary.append("Every passenger should ask this question to know how much the fare is.");
        arrayOfDictionary.append("“El baky wara ya osta”");
        arrayOfDictionary.append("It is said When a passenger ask the driver for the change.");
        arrayOfDictionary.append("“El akher hena ya gedaan”");
        arrayOfDictionary.append("Akher means the end and the driver says this when he arrives to the end of the route and wants the passengers to get out.");
        arrayOfDictionary.append("“El ogra ma baad ya hadarat el awal”");
        arrayOfDictionary.append("The driver asks the passengers to start collecting the fare together.");
        arrayOfDictionary.append("“Fady wara, khoshy ya madam”");
        arrayOfDictionary.append("When someone is getting in the microbus and driver tells him that there is an empty seat.");
        arrayOfDictionary.append("“Khosh rabea’ wara””");
        arrayOfDictionary.append("To the farthest seat in the back, inside. Or it also means that there is an empty place in the back.");
        arrayOfDictionary.append("“Hamdallah Al salama”");
        arrayOfDictionary.append("A decent way, the driver uses to ask for the fare.");
        arrayOfDictionary.append("“Khef Nafsak Ya Bashmohandes”");
        arrayOfDictionary.append("It means move quicker, so the driver says it to whoever is getting in or out of the microbus to move faster.");
        arrayOfDictionary.append("“Lesa awel farda maa’k ya basha”");
        arrayOfDictionary.append("This means that it is the first ride of the day and the driver doesn’t have change yet.");
        arrayOfDictionary.append("“Lama el arabya tehamel ya ostaz”");
        arrayOfDictionary.append("When the passengers ask the driver when they will move, and the driver answers that they will move when the microbus is full.");
        arrayOfDictionary.append("“Mathotesh reglak f dahr el korsy”");
        arrayOfDictionary.append("This is one of the main rules of any microbus driver, to not put any leg on the back of the seat.");
        arrayOfDictionary.append("“Mamnoa el tadkhen ya ostaz”");
        arrayOfDictionary.append("No Smoking, When the driver is putting his rules and asks the passengers to not smoke.");
        arrayOfDictionary.append("“Newasaa’ lel nazel”");
        arrayOfDictionary.append("It means give a space for those who are coming");
        arrayOfDictionary.append("“Odam mahgouz ya basha”");
        arrayOfDictionary.append("It means that the seat beside the driver is booked. And it is either the driver wants a lady to sit in the front or it is literally booked.");
        arrayOfDictionary.append("“Seka keda Ya brens”");
        arrayOfDictionary.append("Seka means space, so it is always said when someone is getting in or out of the microbus and needs people to free a space for him.");
        arrayOfDictionary.append("“Teshelo el karasy el fadya w netlaa’?”");
        arrayOfDictionary.append("When the microbus is not full yet and the driver wants to move, so he suggests the passengers to pay for the empty seats, so he can move.");
    }

    override func viewDidLoad() {
        super.viewDidLoad()

         let attr = NSDictionary(object: UIFont(name: "Kharabeesh Font", size: 14)!, forKey: NSAttributedStringKey.font as NSCopying)
         self.mohamed2.setTitleTextAttributes(attr as? [AnyHashable : Any], for: .normal)
         let userDef = UserDefaults.standard
         if(userDef.string(forKey: "Language") == "A")
         {
             musictitle?.text = "أغاني";
             dictionarytitle?.text = "ثقافة لغة المكروباص";
             mohamed2.setTitle( "قاموس الميكروباص", forSegmentAt: 0)
             mohamed2.setTitle("أغاني", forSegmentAt: 1)
             mohamed2.setTitle("ألعاب", forSegmentAt: 2)
             
             listArabic()
         } else {
             musictitle?.text = "Listen to the Music and Live the Mood.";
             dictionarytitle?.text = "Microbus Dictionary...Learn A Language.";
             listEnglish()
         }
         
        arrayOfMusic.append("مهرجان خمسة فرفشة");
        arrayOfMusic.append("مهرجان دلع البنات");
        arrayOfMusic.append("مهرجان مش هاروح");
        arrayOfMusic.append("مهرجان اه لو لعبت يا زهر");
        arrayOfMusic.append("مهرجان حلاوة روح");
        arrayOfMusic.append("مهرجان الحسن و الحسين");
        arrayOfMusic.append("مهرجان اديك في السقف تمحر");
        arrayOfMusic.append("مهرجان العلبة الذهبية");
        arrayOfMusic.append("مهرجان الجنس الناعم");
        arrayOfMusic.append("مهرجان الوسادة الخالية");
        arrayOfMusic.append("مهرجان دماغي طقت مني");
        arrayOfMusic.append("مهرجان عبده موتة");
        arrayOfMusic.append("مهرجان علي الساحة");

        guard let path = Bundle.main.path(forResource: "mahragan1", ofType: "mp3") else {return}

             try? player = AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
             try? player.prepareToPlay()

         // Do any additional setup after loading the view.
         
         let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(swiped))
         swipeRight.direction = UISwipeGestureRecognizerDirection.right
         self.view.addGestureRecognizer(swipeRight)
         
         let swipeLeft = UISwipeGestureRecognizer(target: self, action: #selector(swiped))
         swipeLeft.direction = UISwipeGestureRecognizerDirection.left
         self.view.addGestureRecognizer(swipeLeft)
         
         dictionarytitle.isHidden = true;
         dictionarytable.isHidden = true;
         iconsdictionary.isHidden = true;
         musiclist.isHidden = true;
         iconsmusic.isHidden = true;
         musictitle.isHidden = true;
         play.isHidden = true;
         pause.isHidden = true;
        // commingSoon.isHidden = true
         bigGamesIcon.isHidden = true
        
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
