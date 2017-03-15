//
//  ViewController.swift
//  alertcontroller
//
//  Created by su on 2017/3/14.
//  Copyright © 2017年 su. All rights reserved.
//

import UIKit

class login: UIViewController {
    
    @IBOutlet weak var id: UITextField!
    
    @IBOutlet weak var passwd: UITextField!
    

    
    
    @IBAction func login(_ sender: Any) {
        let 帳號 = id.text
        let 密碼 = passwd.text
        if 帳號 == "" || 密碼 == "" {
            let loginalert = UIAlertController(title: "錯誤", message: "欄位不得為空", preferredStyle:.alert)
            //用UIAlertController創造跳出的訊息
            
            let okAction = UIAlertAction(title: "確認", style: .default, handler: nil)
            //用UIAlertAction創造訊息下方的按鈕
            
             loginalert.addAction(okAction)
            //用addAction這個func 把確認鈕加到loginalert上
            
            present(loginalert,animated: true, completion: nil)
            //用present 將訊息呈現出來
        } else {
            
        }
        
    }
    @IBAction func cancel_login(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

