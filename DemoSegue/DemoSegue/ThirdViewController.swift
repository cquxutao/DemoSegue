//
//  ThirdViewController.swift
//  DemoSegue
//
//  Created by 徐涛 on 06/07/2017.
//  Copyright © 2017 徐涛. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.white
        
        let button1 = UIButton(type:.custom)
        button1.frame = CGRect(x:0,y:20,width:UIScreen.main.bounds.width,height:30)
        button1.setTitle("TVC Button 1 return HVC", for: .normal)
        button1.setTitleColor(UIColor.green, for: .normal)
        button1.tag = 100000
        button1.addTarget(self, action: #selector(button1Clicked(sender:)), for: .touchUpInside)
        self.view.addSubview(button1)

        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    //Back
    func button1Clicked(sender:UIButton?){
        let tags = sender?.tag
        switch tags! {
        case 100000:
            self.dismiss(animated: true, completion: nil)
            break
        default:
            print("Error!")
            break
        }
        
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
