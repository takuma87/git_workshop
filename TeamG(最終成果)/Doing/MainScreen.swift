//
//  MainScreen.swift
//  Doing
//
//  Created by takuma motohara on 2018/12/13.
//

import UIKit

class MainScreen: UIViewController {

    @IBOutlet weak var button1: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // ボタンの装飾
        let rgba = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1.0) // ボタン背景色設定
        button1.backgroundColor = rgba                                               // 背景色
        button1.layer.borderWidth = 0.5                                            // 枠線の幅
        button1.layer.borderColor = UIColor(red: 0/255, green: 122/255, blue: 255/255, alpha: 1.0).cgColor                            // 枠線の色
        button1.layer.cornerRadius = 20.0                                             // 角丸のサイズ
        button1.setTitleColor(UIColor(red: 0/255, green: 122/255, blue: 255/255, alpha: 1.0), for: UIControl.State.normal)
        self.button1.layer.shadowOpacity = 0.3
        self.button1.layer.shadowRadius = 5
        self.button1.layer.shadowColor = UIColor.black.cgColor
        self.button1.layer.shadowOffset = CGSize(width: 4, height: 4)
        
        
        
        button2.backgroundColor = rgba                                               // 背景色
        button2.layer.borderWidth = 0.5                                             // 枠線の幅
        button2.layer.borderColor = UIColor(red: 0/255, green: 122/255, blue: 255/255, alpha: 1.0).cgColor                            // 枠線の色
        button2.layer.cornerRadius = 20.0                                             // 角丸のサイズ
        button2.setTitleColor(UIColor(red: 0/255, green: 122/255, blue: 255/255, alpha: 1.0), for: UIControl.State.normal)
        
        self.button2.layer.shadowOpacity = 0.3
        self.button2.layer.shadowRadius = 5
        self.button2.layer.shadowColor = UIColor.black.cgColor
        self.button2.layer.shadowOffset = CGSize(width: 4, height: 4)
        
        
        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var button2: UIButton!
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
