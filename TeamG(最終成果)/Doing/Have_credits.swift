//
//  Have_credits.swift
//  test
//
//  Created by takuma motohara on 2018/11/28.
//  Copyright © 2018 takuto. All rights reserved.
//

import UIKit

class Have_credits: UIViewController ,UITextFieldDelegate{
    @IBOutlet weak var ScrollView: UIScrollView!
    @IBOutlet var T1h:UITextField! //健康運動
    @IBOutlet var T2h:UITextField! //人文
    @IBOutlet var T3h:UITextField! //社会
    @IBOutlet var T4h:UITextField! //自然
    @IBOutlet var T5h:UITextField! //総合
    @IBOutlet var T6h:UITextField! //キャリア関係
    @IBOutlet var T7h:UITextField! //琉大・地域
    @IBOutlet var T8h:UITextField! //情報関係
    @IBOutlet var T9h:UITextField! //外国語
    @IBOutlet var T10h:UITextField! //専門基礎
    @IBOutlet var T11h:UITextField! //専門
    @IBOutlet var T13h:UITextField! //教職

    
    
    var testText:String = "0"
    var testText2:String = "0"
    var testText3:String = "0"
    var testText4:String = "0"
    var testText5:String = "0"
    var testText6:String = "0"
    var testText7:String = "0"
    var testText8:String = "0"
    var testText9:String = "0"
    var testText10:String = "0"
    var testText11:String = "0"
    var testText13:String = "0"
    
    
    //UserDefaultsのインスタンス
    let userDefaults = UserDefaults.standard
    let userDefaults2 = UserDefaults.standard
    let userDefaults3 = UserDefaults.standard
    let userDefaults4 = UserDefaults.standard
    let userDefaults5 = UserDefaults.standard
    let userDefaults6 = UserDefaults.standard
    let userDefaults7 = UserDefaults.standard
    let userDefaults8 = UserDefaults.standard
    let userDefaults9 = UserDefaults.standard
    let userDefaults10 = UserDefaults.standard
    let userDefaults11 = UserDefaults.standard
    let userDefaults13 = UserDefaults.standard

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //キーボードタイプを決定
        T1h.keyboardType = UIKeyboardType.decimalPad
        T2h.keyboardType = UIKeyboardType.decimalPad
        T3h.keyboardType = UIKeyboardType.decimalPad
        T4h.keyboardType = UIKeyboardType.decimalPad
        T5h.keyboardType = UIKeyboardType.decimalPad
        T6h.keyboardType = UIKeyboardType.decimalPad
        T7h.keyboardType = UIKeyboardType.decimalPad
        T8h.keyboardType = UIKeyboardType.decimalPad
        T9h.keyboardType = UIKeyboardType.decimalPad
        T10h.keyboardType = UIKeyboardType.decimalPad
        T11h.keyboardType = UIKeyboardType.decimalPad
        T13h.keyboardType = UIKeyboardType.decimalPad
        
        //スクロールの反動を消す
        ScrollView.bounces = false
        
        // T1h~T11h の情報を受け取るための delegate を設定
        T1h.delegate = self
        T2h.delegate = self
        T3h.delegate = self
        T4h.delegate = self
        T5h.delegate = self
        T6h.delegate = self
        T7h.delegate = self
        T8h.delegate = self
        T9h.delegate = self
        T10h.delegate = self
        T11h.delegate = self
        T13h.delegate = self
        
        // デフォルト値
        userDefaults.register(defaults: ["DataStore": "0"])
        userDefaults2.register(defaults: ["DataStore2": "0"])
        userDefaults3.register(defaults: ["DataStore3": "0"])
        userDefaults4.register(defaults: ["DataStore4": "0"])
        userDefaults5.register(defaults: ["DataStore5": "0"])
        userDefaults6.register(defaults: ["DataStore6": "0"])
        userDefaults7.register(defaults: ["DataStore7": "0"])
        userDefaults8.register(defaults: ["DataStore8": "0"])
        userDefaults9.register(defaults: ["DataStore9": "0"])
        userDefaults10.register(defaults: ["DataStore10": "0"])
        userDefaults11.register(defaults: ["DataStore11": "0"])
        userDefaults13.register(defaults: ["DataStore13": "0"])
        
        T1h.text = readData()
        T2h.text = readData2()
        T3h.text = readData3()
        T4h.text = readData4()
        T5h.text = readData5()
        T6h.text = readData6()
        T7h.text = readData7()
        T8h.text = readData8()
        T9h.text = readData9()
        T10h.text = readData10()
        T11h.text = readData11()
        T13h.text = readData13()

        makeKeybord()
        // Do any additional setup after loading the view.
    }
    
    func makeKeybord(){
        // 仮のサイズでツールバー生成
        let kbToolBar = UIToolbar(frame: CGRect(x: 0, y: 0, width: 320, height: 40))
        kbToolBar.barStyle = UIBarStyle.default  // スタイルを設定
        
        kbToolBar.sizeToFit()  // 画面幅に合わせてサイズを変更
        
        // スペーサー
        let spacer = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.flexibleSpace, target: self, action: nil)
        
        // 閉じるボタン
        let commitButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.done, target: self, action: #selector(Have_credits.commitButtonTapped))
        
        kbToolBar.items = [spacer, commitButton]
        T1h.inputAccessoryView = kbToolBar
        T2h.inputAccessoryView = kbToolBar
        T3h.inputAccessoryView = kbToolBar
        T4h.inputAccessoryView = kbToolBar
        T5h.inputAccessoryView = kbToolBar
        T6h.inputAccessoryView = kbToolBar
        T7h.inputAccessoryView = kbToolBar
        T8h.inputAccessoryView = kbToolBar
        T9h.inputAccessoryView = kbToolBar
        T10h.inputAccessoryView = kbToolBar
        T11h.inputAccessoryView = kbToolBar
        T13h.inputAccessoryView = kbToolBar
    }
    
    @objc func commitButtonTapped (){
        
        testText = T1h.text!
        //TextFieldに入力されたものが、Int型もあるいはFloat型なら、そのまま保存。
        //それ以外(例えば空白や.など)なら、0を保存する。
        if let numeric = Int(testText) {
            T1h.text = testText
        } else if let num = Float(testText){
            T1h.text = testText
        } else if(testText.isEmpty){
            T1h.text = "0"
            testText = "0"
        } else{
            T1h.text = "0"
            testText = "0"
        }
        
        saveData(str: testText)
        
        
        testText2 = T2h.text!
        if let numeric = Int(testText2) {
            T2h.text = testText2
        } else if let num = Float(testText2){
            T2h.text = testText2
        } else if(testText2.isEmpty){
            T2h.text = "0"
            testText2 = "0"
        } else{
            T2h.text = "0"
            testText2 = "0"
        }
        
        saveData2(str: testText2)
        
        
        testText3 = T3h.text!
        if let numeric = Int(testText3) {
            T3h.text = testText3
        } else if let num = Float(testText3){
            T3h.text = testText3
        } else if(testText3.isEmpty){
            T3h.text = "0"
            testText3 = "0"
        } else{
            T3h.text = "0"
            testText3 = "0"
        }
        
        saveData3(str: testText3)
        
        
        testText4 = T4h.text!
        if let numeric = Int(testText4) {
            T4h.text = testText4
        } else if let num = Float(testText4){
            T4h.text = testText4
        } else if(testText4.isEmpty){
            T4h.text = "0"
            testText4 = "0"
        } else{
            T4h.text = "0"
            testText4 = "0"
        }
        
        saveData4(str: testText4)
        
        
        testText5 = T5h.text!
        if let numeric = Int(testText5) {
            T5h.text = testText5
        } else if let num = Float(testText5){
            T5h.text = testText5
        } else if(testText5.isEmpty){
            T5h.text = "0"
            testText5 = "0"
        } else{
            T5h.text = "0"
            testText5 = "0"
        }
        
        saveData5(str: testText5)
        
        
        testText6 = T6h.text!
        if let numeric = Int(testText6) {
            T6h.text = testText6
        } else if let num = Float(testText6){
            T6h.text = testText6
        } else if(testText6.isEmpty){
            T6h.text = "0"
            testText6 = "0"
        } else{
            T6h.text = "0"
            testText6 = "0"
        }
        
        saveData6(str: testText6)
        
        
        testText7 = T7h.text!
        if let numeric = Int(testText7) {
            T7h.text = testText7
        } else if let num = Float(testText7){
            T7h.text = testText7
        } else if(testText7.isEmpty){
            T7h.text = "0"
            testText7 = "0"
        } else{
            T7h.text = "0"
            testText7 = "0"
        }
        
        saveData7(str: testText7)
        
        
        testText8 = T8h.text!
        if let numeric = Int(testText8) {
            T8h.text = testText8
        } else if let num = Float(testText8){
            T8h.text = testText8
        } else if(testText8.isEmpty){
            T8h.text = "0"
            testText8 = "0"
        } else{
            T8h.text = "0"
            testText8 = "0"
        }
        
        saveData8(str: testText8)
        
        
        testText9 = T9h.text!
        if let numeric = Int(testText9) {
            T9h.text = testText9
        } else if let num = Float(testText9){
            T9h.text = testText9
        } else if(testText9.isEmpty){
            T9h.text = "0"
            testText9 = "0"
        } else{
            T9h.text = "0"
            testText9 = "0"
        }
        
        saveData9(str: testText9)
        
        
        testText10 = T10h.text!
        if let numeric = Int(testText10) {
            T10h.text = testText10
        } else if let num = Float(testText10){
            T10h.text = testText10
        } else if(testText10.isEmpty){
            T10h.text = "0"
            testText10 = "0"
        } else{
            T10h.text = "0"
            testText10 = "0"
        }
        
        saveData10(str: testText10)
        
        
        testText11 = T11h.text!
        if let numeric = Int(testText11) {
            T11h.text = testText11
        } else if let num = Float(testText11){
            T11h.text = testText11
        } else if(testText11.isEmpty){
            T11h.text = "0"
            testText11 = "0"
        } else{
            T11h.text = "0"
            testText11 = "0"
        }
        
        saveData11(str: testText11)
        
        
        testText13 = T13h.text!
        if let numeric = Int(testText13) {
            T13h.text = testText13
        } else if let num = Float(testText13){
            T13h.text = testText13
        } else if(testText13.isEmpty){
            T13h.text = "0"
            testText13 = "0"
        } else{
            T13h.text = "0"
            testText13 = "0"
        }
        
        saveData13(str: testText13)
    
        self.view.endEditing(true)
    }
    //enterをクリックした時に呼び出される
    func textFieldShouldReturn(_ TextField: UITextField) -> Bool{
        
        testText = T1h.text!
        T1h.text = testText
        // キーボードを閉じる
        T1h.resignFirstResponder()
        saveData(str: testText)
        
        testText2 = T2h.text!
        T2h.text = testText2
        T2h.resignFirstResponder()
        saveData2(str: testText2)

        testText3 = T3h.text!
        T3h.text = testText3
        T3h.resignFirstResponder()
        saveData3(str: testText3)

        testText4 = T4h.text!
        T4h.text = testText4
        T4h.resignFirstResponder()
        saveData4(str: testText4)

        testText5 = T5h.text!
        T5h.text = testText5
        T5h.resignFirstResponder()
        saveData5(str: testText5)

        testText6 = T6h.text!
        T6h.text = testText6
        T6h.resignFirstResponder()
        saveData6(str: testText6)

        testText7 = T7h.text!
        T7h.text = testText7
        T7h.resignFirstResponder()
        saveData7(str: testText7)

        testText8 = T8h.text!
        T8h.text = testText8
        T8h.resignFirstResponder()
        saveData8(str: testText8)

        testText9 = T9h.text!
        T9h.text = testText9
        T9h.resignFirstResponder()
        saveData9(str: testText9)

        testText10 = T10h.text!
        T10h.text = testText10
        T10h.resignFirstResponder()
        saveData10(str: testText10)

        testText11 = T11h.text!
        T11h.text = testText11
        T11h.resignFirstResponder()
        saveData11(str: testText11)
        
        testText13 = T13h.text!
        T13h.text = testText13
        T13h.resignFirstResponder()
        saveData13(str: testText13)
        
        return true
    }
    
    //それぞれのDataStoreにデータを保存
    func saveData(str: String){
        // Keyを指定して保存
        userDefaults.set(str, forKey: "DataStore")
        userDefaults.synchronize()
    }
    
    func saveData2(str: String){
        userDefaults2.set(str, forKey: "DataStore2")
        userDefaults2.synchronize()
    }
    func saveData3(str: String){
        userDefaults3.set(str, forKey: "DataStore3")
        userDefaults3.synchronize()
    }
    
    func saveData4(str: String){
        userDefaults4.set(str, forKey: "DataStore4")
        userDefaults4.synchronize()
    }
    func saveData5(str: String){
        userDefaults5.set(str, forKey: "DataStore5")
        userDefaults5.synchronize()
    }
    func saveData6(str: String){
        userDefaults6.set(str, forKey: "DataStore6")
        userDefaults6.synchronize()
    }
    func saveData7(str: String){
        userDefaults7.set(str, forKey: "DataStore7")
        userDefaults7.synchronize()
    }
    func saveData8(str: String){
        userDefaults8.set(str, forKey: "DataStore8")
        userDefaults8.synchronize()
    }
    func saveData9(str: String){
        userDefaults9.set(str, forKey: "DataStore9")
        userDefaults9.synchronize()
    }
    func saveData10(str: String){
        userDefaults10.set(str, forKey: "DataStore10")
        userDefaults10.synchronize()
    }
    func saveData11(str: String){
        userDefaults11.set(str, forKey: "DataStore11")
        userDefaults11.synchronize()
    }
    func saveData13(str: String){
        userDefaults13.set(str, forKey: "DataStore13")
        userDefaults13.synchronize()
    }
    
    
    
    //それぞれのDataStoreからデータを読み込む
    func readData() -> String {
        // Keyを指定して読み込み
        let str: String = userDefaults.object(forKey: "DataStore") as! String
        return str
    }
    
    func readData2() -> String {
        // Keyを指定して読み込み
        let str: String = userDefaults2.object(forKey: "DataStore2") as! String
        return str
    }
    func readData3() -> String {
        // Keyを指定して読み込み
        let str: String = userDefaults3.object(forKey: "DataStore3") as! String
        return str
    }
    func readData4() -> String {
        // Keyを指定して読み込み
        let str: String = userDefaults4.object(forKey: "DataStore4") as! String
        return str
    }
    func readData5() -> String {
        // Keyを指定して読み込み
        let str: String = userDefaults5.object(forKey: "DataStore5") as! String
        return str
    }
    func readData6() -> String {
        // Keyを指定して読み込み
        let str: String = userDefaults6.object(forKey: "DataStore6") as! String
        return str
    }
    func readData7() -> String {
        // Keyを指定して読み込み
        let str: String = userDefaults7.object(forKey: "DataStore7") as! String
        return str
    }
    func readData8() -> String {
        // Keyを指定して読み込み
        let str: String = userDefaults8.object(forKey: "DataStore8") as! String
        return str
    }
    func readData9() -> String {
    // Keyを指定して読み込み
    let str: String = userDefaults9.object(forKey: "DataStore9") as! String
    return str
    }
    func readData10() -> String {
        // Keyを指定して読み込み
        let str: String = userDefaults10.object(forKey: "DataStore10") as! String
        return str
    }
    func readData11() -> String {
        // Keyを指定して読み込み
        let str: String = userDefaults11.object(forKey: "DataStore11") as! String
        return str
    }
    func readData13() -> String {
        // Keyを指定して読み込み
        let str: String = userDefaults13.object(forKey: "DataStore13") as! String
        return str
    }
    
    @IBAction func SaveBotton(_ sender: Any) {
        
        
        testText = T1h.text!
        //TextFieldに入力されたものが、Int型もあるいはFloat型なら、そのまま保存。
        //それ以外(例えば空白や.など)なら、0を保存する。
        if let numeric = Int(testText) {
            T1h.text = testText
        } else if let num = Float(testText){
            T1h.text = testText
        } else if(testText.isEmpty){
            T1h.text = "0"
            testText = "0"
        } else{
            T1h.text = "0"
            testText = "0"
        }
        // キーボードを閉じる
        T1h.resignFirstResponder()
        saveData(str: testText)
        
        
        testText2 = T2h.text!
        if let numeric = Int(testText2) {
            T2h.text = testText2
        } else if let num = Float(testText2){
            T2h.text = testText2
        } else if(testText2.isEmpty){
            T2h.text = "0"
            testText2 = "0"
        } else{
            T2h.text = "0"
            testText2 = "0"
        }
        T2h.resignFirstResponder()
        saveData2(str: testText2)
        
        
        testText3 = T3h.text!
        if let numeric = Int(testText3) {
            T3h.text = testText3
        } else if let num = Float(testText3){
            T3h.text = testText3
        } else if(testText3.isEmpty){
            T3h.text = "0"
            testText3 = "0"
        } else{
            T3h.text = "0"
            testText3 = "0"
        }
        T3h.resignFirstResponder()
        saveData3(str: testText3)
        
        
        testText4 = T4h.text!
        if let numeric = Int(testText4) {
            T4h.text = testText4
        } else if let num = Float(testText4){
            T4h.text = testText4
        } else if(testText4.isEmpty){
            T4h.text = "0"
            testText4 = "0"
        } else{
            T4h.text = "0"
            testText4 = "0"
        }
        T4h.resignFirstResponder()
        saveData4(str: testText4)
        
        
        testText5 = T5h.text!
        if let numeric = Int(testText5) {
            T5h.text = testText5
        } else if let num = Float(testText5){
            T5h.text = testText5
        } else if(testText5.isEmpty){
            T5h.text = "0"
            testText5 = "0"
        } else{
            T5h.text = "0"
            testText5 = "0"
        }
        T5h.resignFirstResponder()
        saveData5(str: testText5)
        
        
        testText6 = T6h.text!
        if let numeric = Int(testText6) {
            T6h.text = testText6
        } else if let num = Float(testText6){
            T6h.text = testText6
        } else if(testText6.isEmpty){
            T6h.text = "0"
            testText6 = "0"
        } else{
            T6h.text = "0"
            testText6 = "0"
        }
        T6h.resignFirstResponder()
        saveData6(str: testText6)
        
        
        testText7 = T7h.text!
        if let numeric = Int(testText7) {
            T7h.text = testText7
        } else if let num = Float(testText7){
            T7h.text = testText7
        } else if(testText7.isEmpty){
            T7h.text = "0"
            testText7 = "0"
        } else{
            T7h.text = "0"
            testText7 = "0"
        }
        T7h.resignFirstResponder()
        saveData7(str: testText7)
        
        
        testText8 = T8h.text!
        if let numeric = Int(testText8) {
            T8h.text = testText8
        } else if let num = Float(testText8){
            T8h.text = testText8
        } else if(testText8.isEmpty){
            T8h.text = "0"
            testText8 = "0"
        } else{
            T8h.text = "0"
            testText8 = "0"
        }
        T8h.resignFirstResponder()
        saveData8(str: testText8)
        
        
        testText9 = T9h.text!
        if let numeric = Int(testText9) {
            T9h.text = testText9
        } else if let num = Float(testText9){
            T9h.text = testText9
        } else if(testText9.isEmpty){
            T9h.text = "0"
            testText9 = "0"
        } else{
            T9h.text = "0"
            testText9 = "0"
        }
        T9h.resignFirstResponder()
        saveData9(str: testText9)
        
        
        testText10 = T10h.text!
        if let numeric = Int(testText10) {
            T10h.text = testText10
        } else if let num = Float(testText10){
            T10h.text = testText10
        } else if(testText10.isEmpty){
            T10h.text = "0"
            testText10 = "0"
        } else{
            T10h.text = "0"
            testText10 = "0"
        }
        T10h.resignFirstResponder()
        saveData10(str: testText10)
        
        
        testText11 = T11h.text!
        if let numeric = Int(testText11) {
            T11h.text = testText11
        } else if let num = Float(testText11){
            T11h.text = testText11
        } else if(testText11.isEmpty){
            T11h.text = "0"
            testText11 = "0"
        } else{
            T11h.text = "0"
            testText11 = "0"
        }
        T11h.resignFirstResponder()
        saveData11(str: testText11)
        
        
        testText13 = T13h.text!
        if let numeric = Int(testText13) {
            T13h.text = testText13
        } else if let num = Float(testText13){
            T13h.text = testText13
        } else if(testText13.isEmpty){
            T13h.text = "0"
            testText13 = "0"
        } else{
            T13h.text = "0"
            testText13 = "0"
        }
        T13h.resignFirstResponder()
        saveData13(str: testText13)
        
    }
    
    
    @IBAction func HaveB(_ sender: Any) {
        let url = NSURL(string: "https://tiglon.jim.u-ryukyu.ac.jp/Portal/")
        if UIApplication.shared.canOpenURL(url! as URL){
            UIApplication.shared.openURL(url! as URL)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
}
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


