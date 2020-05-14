//
//  Tips.swift
//  Teet
//
//  Created by Malak Sadek on 11/17/17.
//  Copyright © 2017 Malak Sadek. All rights reserved.
//

import UIKit

class Tips: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    @IBOutlet weak var tableCellLabel: UILabel!
    @IBOutlet weak var tipsNeeded: UILabel!
    
    @IBAction func settingsButton3Pressed(_ sender: Any) {
        performSegue(withIdentifier: "tipsToSettings", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "tipsToSettings") {
            if let SettingsViewController = segue.destination as? SettingsViewController {
                    SettingsViewController.src = "tips"
            }
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayOfInfo.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let userDef = UserDefaults.standard
        var fontName = String()
        
        if(userDef.string(forKey: "Language") == "A"){
            let fontName = "DIN Next LT W23"
            let cell = tableView.dequeueReusableCell(withIdentifier: "cella", for: indexPath) as! TipsArabicCellTableViewCell // create cell like tableviewcell
           
            cell.myLabel.text = arrayOfInfo[indexPath.row]
            switch(indexPath.row){
                
            case 0:
                cell.myLabel.font = UIFont(name:fontName, size:30)
                break;
            case 8:
                cell.myLabel.font = UIFont(name:fontName, size:30)
                break;
            case 14:
                cell.myLabel.font = UIFont(name:fontName, size:30)
                break;
            case 26:
                cell.myLabel.font = UIFont(name:fontName, size:30)
                break;
            default:
                 cell.myLabel.font = UIFont(name:fontName, size:16)
                break;
            }
            
            cell.myLabel.textAlignment = NSTextAlignment.right
            
            cell.myImage.image = arrayOfImages[indexPath.row] // assign image
            
            
            cell.contentView.layer.removeAllAnimations()
            
            return cell
        }else {
            fontName = "AvantGardeMdITC"
                let cell = tableView.dequeueReusableCell(withIdentifier: "celle", for: indexPath) as! TableViewCell // create cell like tableviewcell
    
            
            cell.myText.text = arrayOfInfo[indexPath.row] // assign label
            
            cell.myImage.image = arrayOfImages[indexPath.row] // assign image
            
            switch(indexPath.row){
                
            case 0:
                cell.myText.font = UIFont(name:fontName, size:24)
                break;
            case 8:
                cell.myText.font = UIFont(name:fontName, size:24)
                break;
            case 14:
                cell.myText.font = UIFont(name:fontName, size:24)
                break;
            case 26:
                cell.myText.font = UIFont(name:fontName, size:24)
                break;
            default:
                cell.myText.font = UIFont(name:fontName, size:14.5)
                break;
            }
            
            
            cell.contentView.layer.removeAllAnimations()
            
            return cell
        }
    
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 105;
    }

    
    var arrayOfInfo:[String] = []
    var arrayOfImages:[UIImage] = []
    
    func listEnglish(){
        arrayOfInfo.append("Before the Ride:")
        arrayOfInfo.append("It is possible for anyone to pay the whole fare of all seats to have the microbus for himself and his friends only.")
        arrayOfInfo.append("Make sure you are standing on the correct side of the road while doing the hand signs, as they differ from where you actually stand on the road.")
        arrayOfInfo.append("Some routes have the same hand signs, so make sure that you are on the right route once you get into the microbus.")
        arrayOfInfo.append("If you couldn’t find the perfect seat, you can always wait for the next empty microbus and choose the seat that suits you.")
        arrayOfInfo.append("If you really want to sit in a perfect seat, you need to get in the microbus first.")
        arrayOfInfo.append("You can ask bystanders or other drivers where the route is heading.")
        arrayOfInfo.append("The driver sometimes has an assistant. It is usually called Tabaa’, and his role is to collect the fare from people and to shout out the place they are heading to.")
        arrayOfInfo.append("Safety Tips:")
        arrayOfInfo.append("It is always better to wear an outfit that is suitable for you being sitting in a condensed place like a microbus.")
        arrayOfInfo.append("If you are a female, it is always better to sit beside the window or another girl.")
        arrayOfInfo.append("Don’t panic if people started friendly conversations with you, it’s okay; just don’t make it too long :D")
        arrayOfInfo.append("Try to avoid conflicts, just be passive and don’t interfere in arguments around you.")
        arrayOfInfo.append("Lower your voice while talking in the phone in a microbus, or all the passengers will end up knowing your personal stuff.")
        arrayOfInfo.append("During the Ride:")
        arrayOfInfo.append("The microbus Driver is the boss here, it’s better to follow his rules or you will be kicked out of the microbus.")
        arrayOfInfo.append("Drivers usually don’t leave a space between their microbus and the car in front of them; so don’t panic because you will always feel as if they are going to bump into it.")
        arrayOfInfo.append("Drivers don’t really use any flashers to move right or left, they use their hands out of the window instead, and sometimes they let people sitting beside them to use their hands too.")
        arrayOfInfo.append("Always ask for the change, sometimes the driver forgets to give it back to passengers.")
        arrayOfInfo.append("Try to alert the driver ahead before the stop you want to get to, otherwise he won’t have enough time to stop.")
        arrayOfInfo.append("Pay a head without being asked, to avoid conflicts.")
        arrayOfInfo.append("Try not to sit in the seat beside the door; otherwise you will be responsible for opening and closing the microbus door through out the whole journey.")
        arrayOfInfo.append("Avoid collecting the fare of the whole microbus; you will struggle being a mathematician the whole ride.")
        arrayOfInfo.append("Avoid the back seats; you will suffer a lot from the pumps in streets.")
        arrayOfInfo.append("Microbus = Sharing, so you can always give the money to the person in front of you and they will make it reach the driver.")
        arrayOfInfo.append("It is not always easy to get the driver’s attention; so shout “ala ganb law samht” or “el ogra kam ya raiys!” and you will seem like a pro.")
        arrayOfInfo.append("General Tips for the Ride:")
        arrayOfInfo.append("If a person were able to memorize all the hand signs well, then any microbus ride would be a piece of cake for him.")
        arrayOfInfo.append("You don’t usually have the choice of choosing the best seat, but you can always choose an alternative.")
        arrayOfInfo.append("Try to avoid rush hours, starting from 2pm to 5 pm.")
        arrayOfInfo.append("You can take the microbus from its specified stop or from normal streets.")
    }
    
    
    func listArabic(){
        
        tipsNeeded?.text = "معلومات و نصائح محتاجها"
        
        arrayOfInfo.append("قبل الرحلة:")
        arrayOfInfo.append(".تقدر تدفع أجرة الميكروباص كاملة و تاخد الميكروباص لك و لصحابك بس")
        arrayOfInfo.append("أكد أنك واقف على الناحية الصح من الطريق و انت بتشاور للميكروباص عشان بتفرق.")
        arrayOfInfo.append("بعض الطرق، علامات اليد بتاعتها واحدة، فأتأكد أول ما تركب الميكروباص انك في الطريق الصح")
        arrayOfInfo.append(" ملاقتش الكرسي اليناسبك تقدر تستنى للميكروباص الفاضي البعده و تختار الكرسي براحتك.")
        arrayOfInfo.append("لو فعلا عايز تختار كرسي حلو، اركب بدري.")
        arrayOfInfo.append("اس الوقفة في الموقف و باقي السواقين هم أحسن ناس تقول لك الخطوط والطرق للميكروباص")
        arrayOfInfo.append("حاجة مش هتلاقيها الا في ثقافة الميكروباص و هي شخصية التباع، و هو يعتبر مساعد للسواق بينده علي خط الميكروباص و بيلم الأجرة")
            
            
        arrayOfInfo.append("معلومات للسلامة و الراحة:")
        arrayOfInfo.append("اللبس المناسب للميكروباص، يستحسن يكون حاجة تناسب زنقة الميكروباص و يكون مقفول.")
        arrayOfInfo.append("لو بنت الأحسن تقعد جنب بنات أو جنب الشباك للراحة.")
        arrayOfInfo.append("عادي ان شخص يفتح معاك مناقشة، المهم قصر في الكلام.")
        arrayOfInfo.append("بعد عن اي نقاشات و خناقات حواليك، ملكش دعوة.")
        arrayOfInfo.append("عادة الميكروباص انه ضيق و أي كلمة بتتقال تتسمع من الميكروباص كله فوطي صوتك بدل ما الميكروباص كله يعرف حياتك")
        
        arrayOfInfo.append("جوه الميكروباص/ الرحلة:")
        arrayOfInfo.append("سواق الميكروباص هو الكل في الكل، فأسمع كلامه وإلا مصيرك هيكون بره الميكروباص.")
        arrayOfInfo.append("عادة السواقين، ان مش بيسيبوا مساحة بينهم و بين العربية القدامهم، فمتقلقش لو حسيت انك هتخبط")
        arrayOfInfo.append("دة السواقين، أن يستخدموا أيديهم برة الشباك بدل إشارات العربية، و ساعات أيدين الجنبهم كمان")
        arrayOfInfo.append("دايما أسأل عن الباقي، ساعات السواق بينسي يرجعه للركاب")
        arrayOfInfo.append("نبه السواق قبل ما تنزل بشوية عشان يلحق يقف.")
        arrayOfInfo.append("دفع الأجرة بدري من نفسك.")
        arrayOfInfo.append("عد عن الكرسي الجنب الباب و إلا هتفضل تفتح و تقفل في الباب طول الرحلة.")
        arrayOfInfo.append("في قوانين أي رحلة، في شخص دايما بيلبس لم الأجرة، حاول متكونش الشخص ده عشان هتعاني في الحسابات")
        arrayOfInfo.append("لكراسي الورا بتلبس كل المطبات، فأبعد عنها")
        arrayOfInfo.append("ميكروباص= مشاركة، فعادي تدي الأجرة للقدامك وهو يوصلها للسواق")
        arrayOfInfo.append("أول مرة تركب، ”علي جنب ياسطي“ و ”الأجرة كام“ هيمشوا حال لك وكأنك محترف")
        arrayOfInfo.append("نصائح عامة:")
        arrayOfInfo.append("حفظ علامات الإشارة باليدين، هيخلي أي ركوبة ميكروباص أسهل")
        arrayOfInfo.append("مش دايما عندنا الأختيار للكرسي المناسب، بس دايما ممكن نلاقي البديل")
        arrayOfInfo.append(" ساعات الزحمة من 2 ل 5 العصر، فياريت تبعد عنه")
        arrayOfInfo.append("مكن تركب الميكروباص من الموقف المخصص أو توقفه من الشارع عادي")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let userDef = UserDefaults.standard
        if(userDef.string(forKey: "Language") == "A"){
            listArabic()
            arrayOfImages.append(#imageLiteral(resourceName: "empty.png"));
            arrayOfImages.append(#imageLiteral(resourceName: "tip1-Arabic"));
            arrayOfImages.append(#imageLiteral(resourceName: "tip2-arabic"));
            arrayOfImages.append(#imageLiteral(resourceName: "tip3-Arabic"));
            arrayOfImages.append(#imageLiteral(resourceName: "tip4-Arabic"));
            arrayOfImages.append(#imageLiteral(resourceName: "tip5-Arabic"));
            arrayOfImages.append(#imageLiteral(resourceName: "tip6-Arabic"));
            arrayOfImages.append(#imageLiteral(resourceName: "tip7"));
            arrayOfImages.append(#imageLiteral(resourceName: "empty.png"));
            arrayOfImages.append(#imageLiteral(resourceName: "tip8-Arabic"));
            arrayOfImages.append(#imageLiteral(resourceName: "tip9-Arabic"));
            arrayOfImages.append(#imageLiteral(resourceName: "tip10-Arabic"));
            arrayOfImages.append(#imageLiteral(resourceName: "tip11-Arabic"));
            arrayOfImages.append(#imageLiteral(resourceName: "tip12-Arabic"));
            arrayOfImages.append(#imageLiteral(resourceName: "empty.png"));
            arrayOfImages.append(#imageLiteral(resourceName: "tip13-Arabic"));
            arrayOfImages.append(#imageLiteral(resourceName: "tip14-Arabic"));
            arrayOfImages.append(#imageLiteral(resourceName: "tip15-Arabic"));
            arrayOfImages.append(#imageLiteral(resourceName: "tip16-Arabic"));
            arrayOfImages.append(#imageLiteral(resourceName: "tip17-Arabic"));
            arrayOfImages.append(#imageLiteral(resourceName: "tip18-Arabic"));
            arrayOfImages.append(#imageLiteral(resourceName: "tip19"));
            arrayOfImages.append(#imageLiteral(resourceName: "tip20-Arabic"));
            arrayOfImages.append(#imageLiteral(resourceName: "tip21-Arabic"));
            arrayOfImages.append(#imageLiteral(resourceName: "tip22-Arabic"));
            arrayOfImages.append(#imageLiteral(resourceName: "tip23-Arabic"));
            arrayOfImages.append(#imageLiteral(resourceName: "empty.png"));
            arrayOfImages.append(#imageLiteral(resourceName: "tip24-Arabic"));
            arrayOfImages.append(#imageLiteral(resourceName: "tip25-Arabic"));
            arrayOfImages.append(#imageLiteral(resourceName: "tip26-Arabic"));
            arrayOfImages.append(#imageLiteral(resourceName: "tip27-Arabic"));
            
        }else {
            listEnglish()
            arrayOfImages.append(#imageLiteral(resourceName: "empty.png"));
            arrayOfImages.append(#imageLiteral(resourceName: "tip1.png"));
            arrayOfImages.append(#imageLiteral(resourceName: "tip2.png"));
            arrayOfImages.append(#imageLiteral(resourceName: "tip3.png"));
            arrayOfImages.append(#imageLiteral(resourceName: "tip4.png"));
            arrayOfImages.append(#imageLiteral(resourceName: "tip5.png"));
            arrayOfImages.append(#imageLiteral(resourceName: "tip6"));
            arrayOfImages.append(#imageLiteral(resourceName: "tip7"));
            arrayOfImages.append(#imageLiteral(resourceName: "empty.png"));
            arrayOfImages.append(#imageLiteral(resourceName: "tip8"));
            arrayOfImages.append(#imageLiteral(resourceName: "tip9"));
            arrayOfImages.append(#imageLiteral(resourceName: "tip10"));
            arrayOfImages.append(#imageLiteral(resourceName: "tip11"));
            arrayOfImages.append(#imageLiteral(resourceName: "tip12"));
            arrayOfImages.append(#imageLiteral(resourceName: "empty.png"));
            arrayOfImages.append(#imageLiteral(resourceName: "tip13"));
            arrayOfImages.append(#imageLiteral(resourceName: "tip14"));
            arrayOfImages.append(#imageLiteral(resourceName: "tip15"));
            arrayOfImages.append(#imageLiteral(resourceName: "tip16"));
            arrayOfImages.append(#imageLiteral(resourceName: "tip17"));
            arrayOfImages.append(#imageLiteral(resourceName: "tip18-"));
            arrayOfImages.append(#imageLiteral(resourceName: "tip19"));
            arrayOfImages.append(#imageLiteral(resourceName: "tip20"));
            arrayOfImages.append(#imageLiteral(resourceName: "tip21"));
            arrayOfImages.append(#imageLiteral(resourceName: "tip22"));
            arrayOfImages.append(#imageLiteral(resourceName: "tip23"));
            arrayOfImages.append(#imageLiteral(resourceName: "empty.png"));
            arrayOfImages.append(#imageLiteral(resourceName: "tip24"));
            arrayOfImages.append(#imageLiteral(resourceName: "tip25"));
            arrayOfImages.append(#imageLiteral(resourceName: "tip26"));
            arrayOfImages.append(#imageLiteral(resourceName: "tip27"));
        }
        
      
        
       
        //arrayOfImages.append(#imageLiteral(resourceName: "treasurehuntlogo"))
        // Do any additional setup after loading the view.
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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
