//
//  SecondViewController.swift
//  SpaceWalkApp
//
//  Created by Anvita Lingampalli on 2/5/23.
//

import UIKit

class SecondViewController: UIViewController {

    var fromFirst:Double?
    var data:Double?
    override func viewDidLoad() {
        super.viewDidLoad()
        data = (fromFirst!/9.81)*1.622
        EarthLabel.text = "Your weight on Earth is \(fromFirst ?? 0)"
        MoonLabel.text = "Your weight on Moon is \(data ?? 0)"
        resultLabel.text = "I feel much lighter"
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        let des1 = segue.destination as! ThirdViewController
        if(segue.identifier == "toView3"){
            des1.fromSecond = fromFirst
            des1.moonDataFromSecond = data
        }

    }
    
    @IBAction func fromThird(segue:UIStoryboardSegue){
        var fromSecond = "returned from view 3"
        print ("returned from view 3")
        
        if let sourceViewController = segue.source
            as? SecondViewController {
            let dataRecieved =
            sourceViewController.data
            print (dataRecieved)
        }
        
        
    }
    
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBOutlet weak var EarthLabel: UILabel!
    
    @IBOutlet weak var MoonLabel: UILabel!
    
    /*
     // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
