//
//  FirstViewController.swift
//  DemoSegue
//
//  Created by 徐涛 on 06/07/2017.
//  Copyright © 2017 徐涛. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var Button1: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //Back
    @IBAction func button1Clicked(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
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
