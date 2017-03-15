//
//  ViewController.swift
//  alertcontroller
//
//  Created by su on 2017/3/15.
//  Copyright © 2017年 su. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func showlogin(_ sender: Any) {
        //方法一 開始
        let loginpage = self.storyboard?.instantiateViewController(withIdentifier: "loginpage")
        self.present(loginpage!, animated: true, completion: nil)

        
        let didload_alertAction = UIAlertAction(title: "確認", style: .default, handler: nil)
        let didload_alert = UIAlertController(title: nil, message: "此操作需具管理權限，請先登入", preferredStyle: .alert)
            didload_alert.addAction(didload_alertAction)
            
            loginpage!.present(didload_alert, animated: true, completion: nil)
        //方法一 結束
    }
    
    /* 方法二 開始
     
     let didload_alertAction = UIAlertAction(title: "確認", style: .default) { (UIAlertAction) in
     let loginpage = self.storyboard?.instantiateViewController(withIdentifier: "loginpage")
     self.present(loginpage!, animated: true, completion: nil)
     
     }
     let didload_alert = UIAlertController(title: nil, message: "此操作需具管理權限，請先登入", preferredStyle: .alert)
     didload_alert.addAction(didload_alertAction)
     
     self.present(didload_alert, animated: true, completion: nil)
     
     方法二 結束  */
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
