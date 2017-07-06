//
//  ViewController.swift
//  DemoSegue
//
//  Created by 徐涛 on 06/07/2017.
//  Copyright © 2017 徐涛. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Button1: UIButton!
    @IBOutlet weak var Button2: UIButton!
    @IBOutlet weak var Button3: UIButton!
    @IBOutlet weak var Button4: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    //Case 1. SB-->SB，中间没有Segue
    //首先获取SB，其次获取跳转的指定Controller，最后执行show()
    @IBAction func button1Clicked(_ sender: Any) {
        print("Button1 Clicked!")
        let SB = UIStoryboard(name:"Main",bundle:nil)
        let FVC = SB.instantiateViewController(withIdentifier: String(describing: FirstViewController.self)) as! FirstViewController
        self.show(FVC, sender: nil)
    }
    //Case 2. SB-->SB，中间有Segue
    //指定Segue，执行performSegue()
    @IBAction func button2Clicked(_ sender: Any) {
        print("Button2 Clicked!")
        self.performSegue(withIdentifier: "SecondViewControllerSegue", sender: nil)
        
    }
    //Case 3. SB-->纯代码实现的ThirdViewController
    //获取跳转的指定Controller，执行show()
    @IBAction func button3Clicked(_ sender: Any) {
        print("Button3 Clicked!")
        let TVC = ThirdViewController()
        self.show(TVC, sender: nil)
    }
    //Case 4. SB-->SB，中间没有Segue
    //首先获取SB，其次获取跳转的指定Controller，最后执行show()
    //Case 4与Case 1的区别体现在：Case 4利用了navigationController，采用push和pop方式
    @IBAction func button4Clicked(_ sender: Any) {
        print("Button4 Clicked!")
        let SB = UIStoryboard(name:"Main",bundle:nil)
        let FourthVC = SB.instantiateViewController(withIdentifier: String(describing: FourthViewController.self)) as! FourthViewController
        //self.navigationController!.pushViewController(FourthVC, animated: true)
        //self.show(FourthVC, sender: nil)
        //coding here
    }
    
    
    
}

