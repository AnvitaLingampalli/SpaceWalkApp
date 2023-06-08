//
//  ViewController.swift
//  SpaceWalkApp
//
//  Created by Anvita Lingampalli on 2/5/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let weight = Double(weightLabel.text!)

        let des = segue.destination as! SecondViewController
        if(segue.identifier == "toView2"){
            des.fromFirst = weight
        }

    }
    
    @IBAction func fromSecond (segue:UIStoryboardSegue){
        var fromSecond = "returned from view 2"
        print ("returned from view 2")
        
        if let sourceViewController = segue.source
            as? SecondViewController {
            let dataRecieved =
            sourceViewController.data
            //print (dataRecieved)
        }
        
        
    }
    
    @IBAction func fromThird (segue:UIStoryboardSegue){
        var fromSecond = "returned from view 3"
        print ("returned from view 3")
        
        if let sourceViewController = segue.source
            as? ThirdViewController {
            let dataRecieved =
            sourceViewController.datajupiter
            //print (dataRecieved)
        }
        
        
    }

    @IBOutlet weak var weightLabel: UITextField!
}

