//
//  AddController.swift
//  Doing
//
//  Created by 島田　裕幹 on 2018/11/28.
//

import UIKit

//変数の設置
var Todokobetsunonakami = [String]()

class AddController: UIViewController {
    
    //テキストフィールドの設定
    @IBOutlet weak var TodoTextField: UITextField!
    
    //追加ボタンの設定
    @IBAction func TodoAddButton(_ sender: Any) {
        //変数に入力内容を入れる
        Todokobetsunonakami.append(TodoTextField.text!)
        //追加ボタンを押したらフィールドを空にする
        TodoTextField.text = ""
        //変数の中身をUDに追加
        UserDefaults.standard.set(Todokobetsunonakami, forKey:"TodoList")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
