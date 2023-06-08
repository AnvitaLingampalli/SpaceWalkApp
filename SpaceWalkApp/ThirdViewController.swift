//
//  ThirdViewController.swift
//  SpaceWalkApp
//
//  Created by Anvita Lingampalli on 2/5/23.
//

import UIKit

class ThirdViewController: UIViewController {

    var fromSecond:Double?
    var datajupiter:Double?
    var moonDataFromSecond:Double?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        datajupiter = (fromSecond!/9.81)*24.79
        jupiterLabel.text = "Your weight on Jupiter is \(datajupiter ?? 0)"
        earthLabel.text = "Your weight on Earth is \(fromSecond ?? 0)"
        moonLabel.text = "Your weight on Moon is \(moonDataFromSecond ?? 0)"

        // Do any additional setup after loading the view.
    }
    
    
    @IBOutlet weak var earthLabel: UILabel!
    
    @IBOutlet weak var moonLabel: UILabel!
    
    @IBOutlet weak var jupiterLabel: UILabel!
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
