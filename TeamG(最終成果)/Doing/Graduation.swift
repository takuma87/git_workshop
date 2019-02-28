//
//  Graduation.swift
//  test
//
//  Created by takuma motohara on 2018/12/02.
//  Copyright © 2018 takuto. All rights reserved.
//

import UIKit



class Graduation: UIViewController ,UITextFieldDelegate{
    
    @IBOutlet weak var ScrollView: UIScrollView!
    @IBOutlet var T1g: UITextField! //運動
    @IBOutlet var T2g: UITextField! //人文
    @IBOutlet var T3g: UITextField! //社会
    @IBOutlet var T4g: UITextField! //自然
    @IBOutlet var T5g: UITextField! //総合
    @IBOutlet var T6g: UITextField! //キャリア
    @IBOutlet var T7g: UITextField! //琉大特色
    @IBOutlet var T8g: UITextField! //情報
    @IBOutlet var T9g: UITextField! //外国語
    @IBOutlet var T10g: UITextField! //専門基礎
    @IBOutlet var T11g: UITextField! //専門科目
    @IBOutlet weak var T12g: UITextField! //共通合計
    @IBOutlet weak var T13g: UITextField! //教職科目
    @IBOutlet weak var T14g: UITextField! //卒業単位合計
    
    
    var Text:String = "0"
    var Text2:String = "0"
    var Text3:String = "0"
    var Text4:String = "0"
    var Text5:String = "0"
    var Text6:String = "0"
    var Text7:String = "0"
    var Text8:String = "0"
    var Text9:String = "0"
    var Text10:String = "0"
    var Text11:String = "0"
    var Text12:String = "0"
    var Text13:String = "0"
    var Text14:String = "0"
    
    //UserDefaultsのインスタンス
    let userDefaults_g = UserDefaults.standard
    let userDefaults2_g = UserDefaults.standard
    let userDefaults3_g = UserDefaults.standard
    let userDefaults4_g = UserDefaults.standard
    let userDefaults5_g = UserDefaults.standard
    let userDefaults6_g = UserDefaults.standard
    let userDefaults7_g = UserDefaults.standard
    let userDefaults8_g = UserDefaults.standard
    let userDefaults9_g = UserDefaults.standard
    let userDefaults10_g = UserDefaults.standard
    let userDefaults11_g = UserDefaults.standard
    let userDefaults12_g = UserDefaults.standard
    let userDefaults13_g = UserDefaults.standard
    let userDefaults14_g = UserDefaults.standard


    override func viewDidLoad() {
        super.viewDidLoad()
    
        //スクロールの反動を消す
        ScrollView.bounces = false
        
        //キーボードタイプ決定
        T1g.keyboardType = UIKeyboardType.decimalPad
        T2g.keyboardType = UIKeyboardType.decimalPad
        T3g.keyboardType = UIKeyboardType.decimalPad
        T4g.keyboardType = UIKeyboardType.decimalPad
        T5g.keyboardType = UIKeyboardType.decimalPad
        T6g.keyboardType = UIKeyboardType.decimalPad
        T7g.keyboardType = UIKeyboardType.decimalPad
        T8g.keyboardType = UIKeyboardType.decimalPad
        T9g.keyboardType = UIKeyboardType.decimalPad
        T10g.keyboardType = UIKeyboardType.decimalPad
        T11g.keyboardType = UIKeyboardType.decimalPad
        T12g.keyboardType = UIKeyboardType.decimalPad
        T13g.keyboardType = UIKeyboardType.decimalPad
        T14g.keyboardType = UIKeyboardType.decimalPad
        
        T1g.delegate = self
        T2g.delegate = self
        T3g.delegate = self
        T4g.delegate = self
        T5g.delegate = self
        T6g.delegate = self
        T7g.delegate = self
        T8g.delegate = self
        T9g.delegate = self
        T10g.delegate = self
        T11g.delegate = self
        T12g.delegate = self
        T13g.delegate = self
        T14g.delegate = self
        
        userDefaults_g.register(defaults: ["DataStore_g": "0"])
        userDefaults2_g.register(defaults: ["DataStore2_g": "0"])
        userDefaults3_g.register(defaults: ["DataStore3_g": "0"])
        userDefaults4_g.register(defaults: ["DataStore4_g": "0"])
        userDefaults5_g.register(defaults: ["DataStore5_g": "0"])
        userDefaults6_g.register(defaults: ["DataStore6_g": "0"])
        userDefaults7_g.register(defaults: ["DataStore7_g": "0"])
        userDefaults8_g.register(defaults: ["DataStore8_g": "0"])
        userDefaults9_g.register(defaults: ["DataStore9_g": "0"])
        userDefaults10_g.register(defaults: ["DataStore10_g": "0"])
        userDefaults11_g.register(defaults: ["DataStore11_g": "0"])
        userDefaults12_g.register(defaults: ["DataStore12_g": "0"])
        userDefaults13_g.register(defaults: ["DataStore13_g": "0"])
        userDefaults14_g.register(defaults: ["DataStore14_g": "0"])


        T1g.text = readData_g()
        T2g.text = readData2_g()
        T3g.text = readData3_g()
        T4g.text = readData4_g()
        T5g.text = readData5_g()
        T6g.text = readData6_g()
        T7g.text = readData7_g()
        T8g.text = readData8_g()
        T9g.text = readData9_g()
        T10g.text = readData10_g()
        T11g.text = readData11_g()
        T12g.text = readData12_g()
        T13g.text = readData13_g()
        T14g.text = readData14_g()
        
        makeKeybord()

    }
    
    func makeKeybord(){
        // 仮のサイズでツールバー生成
        let kbToolBar = UIToolbar(frame: CGRect(x: 0, y: 0, width: 320, height: 40))
        kbToolBar.barStyle = UIBarStyle.default  // スタイルを設定
        
        kbToolBar.sizeToFit()  // 画面幅に合わせてサイズを変更
        
        // スペーサー
        let spacer = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.flexibleSpace, target: self, action: nil)
        
        // 閉じるボタン
        let commitButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.done, target: self, action: #selector(Graduation.commitButtonTapped))
        
        kbToolBar.items = [spacer, commitButton]
        T1g.inputAccessoryView = kbToolBar
        T2g.inputAccessoryView = kbToolBar
        T3g.inputAccessoryView = kbToolBar
        T4g.inputAccessoryView = kbToolBar
        T5g.inputAccessoryView = kbToolBar
        T6g.inputAccessoryView = kbToolBar
        T7g.inputAccessoryView = kbToolBar
        T8g.inputAccessoryView = kbToolBar
        T9g.inputAccessoryView = kbToolBar
        T10g.inputAccessoryView = kbToolBar
        T11g.inputAccessoryView = kbToolBar
        T12g.inputAccessoryView = kbToolBar
        T13g.inputAccessoryView = kbToolBar
    }
    
    @objc func commitButtonTapped (){
        
        Text = T1g.text!
        //TextFieldに入力されたものが、Int型もあるいはFloat型なら、そのまま保存。
        //それ以外(例えば空白や.など)なら、0を保存する。
        if let numeric = Int(Text) {
            T1g.text = Text
        } else if let num = Float(Text){
            T1g.text = Text
        } else if(Text.isEmpty){
            T1g.text = "0"
            Text = "0"
        } else{
            T1g.text = "0"
            Text = "0"
        }
        saveData(str: Text)
        
        
        Text2 = T2g.text!
        if let numeric = Int(Text2) {
            T2g.text = Text2
        } else if let num = Float(Text2){
            T2g.text = Text2
        } else if(Text2.isEmpty){
            T2g.text = "0"
            Text2 = "0"
        } else{
            T2g.text = "0"
            Text2 = "0"
        }
        
        saveData2(str: Text2)
        
        
        Text3 = T3g.text!
        if let numeric = Int(Text3) {
            T3g.text = Text3
        } else if let num = Float(Text3){
            T3g.text = Text3
        } else if(Text3.isEmpty){
            T3g.text = "0"
            Text3 = "0"
        } else{
            T3g.text = "0"
            Text3 = "0"
        }
        
        saveData3(str: Text3)
        
        
        Text4 = T4g.text!
        if let numeric = Int(Text4) {
            T4g.text = Text4
        } else if let num = Float(Text4){
            T4g.text = Text4
        } else if(Text4.isEmpty){
            T4g.text = "0"
            Text4 = "0"
        } else{
            T4g.text = "0"
            Text4 = "0"
        }
        
        saveData4(str: Text4)
        
        
        Text5 = T5g.text!
        if let numeric = Int(Text5) {
            T5g.text = Text5
        } else if let num = Float(Text5){
            T5g.text = Text5
        } else if(Text5.isEmpty){
            T5g.text = "0"
            Text5 = "0"
        } else{
            T5g.text = "0"
            Text5 = "0"
        }
        
        saveData5(str: Text5)
        
        
        Text6 = T6g.text!
        if let numeric = Int(Text6) {
            T6g.text = Text6
        } else if let num = Float(Text6){
            T6g.text = Text6
        } else if(Text6.isEmpty){
            T6g.text = "0"
            Text6 = "0"
        } else{
            T6g.text = "0"
            Text6 = "0"
        }
        
        saveData6(str: Text6)
        
        
        Text7 = T7g.text!
        if let numeric = Int(Text7) {
            T7g.text = Text7
        } else if let num = Float(Text7){
            T7g.text = Text7
        } else if(Text7.isEmpty){
            T7g.text = "0"
            Text7 = "0"
        } else{
            T7g.text = "0"
            Text7 = "0"
        }
        
        saveData7(str: Text7)
        
        
        Text8 = T8g.text!
        if let numeric = Int(Text8) {
            T8g.text = Text8
        } else if let num = Float(Text8){
            T8g.text = Text8
        } else if(Text8.isEmpty){
            T8g.text = "0"
            Text8 = "0"
        } else{
            T8g.text = "0"
            Text8 = "0"
        }
        
        saveData8(str: Text8)
        
        
        Text9 = T9g.text!
        if let numeric = Int(Text9) {
            T9g.text = Text9
        } else if let num = Float(Text9){
            T9g.text = Text9
        } else if(Text9.isEmpty){
            T9g.text = "0"
            Text9 = "0"
        } else{
            T9g.text = "0"
            Text9 = "0"
        }
        
        saveData9(str: Text9)
        
        
        Text10 = T10g.text!
        if let numeric = Int(Text10) {
            T10g.text = Text10
        } else if let num = Float(Text10){
            T10g.text = Text10
        } else if(Text10.isEmpty){
            T10g.text = "0"
            Text10 = "0"
        } else{
            T10g.text = "0"
            Text10 = "0"
        }
        
        saveData10(str: Text10)
        
        
        Text11 = T11g.text!
        if let numeric = Int(Text11) {
            T11g.text = Text11
        } else if let num = Float(Text11){
            T11g.text = Text11
        } else if(Text11.isEmpty){
            T11g.text = "0"
            Text11 = "0"
        } else{
            T11g.text = "0"
            Text11 = "0"
        }
        
        saveData11(str: Text11)
        
        
        Text12 = T12g.text!
        if let numeric = Int(Text12) {
            T12g.text = Text12
        } else if let num = Float(Text12){
            T12g.text = Text12
        } else if(Text12.isEmpty){
            T12g.text = "0"
            Text12 = "0"
        } else{
            T12g.text = "0"
            Text12 = "0"
        }
        
        saveData12(str: Text12)
        
        
        Text13 = T13g.text!
        if let numeric = Int(Text13) {
            T13g.text = Text13
        } else if let num = Float(Text13){
            T13g.text = Text13
        } else if(Text13.isEmpty){
            T13g.text = "0"
            Text13 = "0"
        } else{
            T13g.text = "0"
            Text13 = "0"
        }
        
        saveData13(str: Text13)
        
        
        Text14 = T14g.text!
        if let numeric = Int(Text14) {
            T14g.text = Text14
        } else if let num = Float(Text14){
            T14g.text = Text14
        } else if(Text14.isEmpty){
            T14g.text = "0"
            Text14 = "0"
        } else{
            T14g.text = "0"
            Text14 = "0"
        }
        
        saveData14(str: Text14)
    
        self.view.endEditing(true)
    }
    
        func textFieldShouldReturn(_ TextField: UITextField) -> Bool{
            
            Text = T1g.text!
            T1g.text = Text
            // キーボードを閉じる
            T1g.resignFirstResponder()
            saveData(str: Text)
            
            Text2 = T2g.text!
            T2g.text = Text2
            T2g.resignFirstResponder()
            saveData2(str: Text2)
            
            Text3 = T3g.text!
            T3g.text = Text3
            T3g.resignFirstResponder()
            saveData3(str: Text3)
            
            Text4 = T4g.text!
            T4g.text = Text4
            T4g.resignFirstResponder()
            saveData4(str: Text4)
            
            Text5 = T5g.text!
            T5g.text = Text5
            T5g.resignFirstResponder()
            saveData5(str: Text5)
            
            Text6 = T6g.text!
            T6g.text = Text6
            T6g.resignFirstResponder()
            saveData6(str: Text6)
            
            Text7 = T7g.text!
            T7g.text = Text7
            T7g.resignFirstResponder()
            saveData7(str: Text7)
            
            Text8 = T8g.text!
            T8g.text = Text8
            T8g.resignFirstResponder()
            saveData8(str: Text8)
            
            Text9 = T9g.text!
            T9g.text = Text9
            T9g.resignFirstResponder()
            saveData9(str: Text9)
            
            Text10 = T10g.text!
            T10g.text = Text10
            T10g.resignFirstResponder()
            saveData10(str: Text10)
            
            Text11 = T11g.text!
            T11g.text = Text11
            T11g.resignFirstResponder()
            saveData11(str: Text11)
            
            Text12 = T12g.text!
            T12g.text = Text12
            T12g.resignFirstResponder()
            saveData12(str: Text12)
            
            Text13 = T13g.text!
            T13g.text = Text13
            T13g.resignFirstResponder()
            saveData13(str: Text13)
            
            Text14 = T14g.text!
            T14g.text = Text14
            T14g.resignFirstResponder()
            saveData14(str: Text14)
            
            return true
        }

        //それぞれのDataStoreにデータを保存
        func saveData(str: String){
            // Keyを指定して保存
            userDefaults_g.set(str, forKey: "DataStore_g")
            userDefaults_g.synchronize()
        }
        
        func saveData2(str: String){
            userDefaults2_g.set(str, forKey: "DataStore2_g")
            userDefaults2_g.synchronize()
        }
        func saveData3(str: String){
            userDefaults3_g.set(str, forKey: "DataStore3_g")
            userDefaults3_g.synchronize()
        }
        
        func saveData4(str: String){
            userDefaults4_g.set(str, forKey: "DataStore4_g")
            userDefaults4_g.synchronize()
        }
        func saveData5(str: String){
            userDefaults5_g.set(str, forKey: "DataStore5_g")
            userDefaults5_g.synchronize()
        }
        func saveData6(str: String){
            userDefaults6_g.set(str, forKey: "DataStore6_g")
            userDefaults6_g.synchronize()
        }
        func saveData7(str: String){
            userDefaults7_g.set(str, forKey: "DataStore7_g")
            userDefaults7_g.synchronize()
        }
        func saveData8(str: String){
            userDefaults8_g.set(str, forKey: "DataStore8_g")
            userDefaults8_g.synchronize()
        }
        func saveData9(str: String){
            userDefaults9_g.set(str, forKey: "DataStore9_g")
            userDefaults9_g.synchronize()
        }
        func saveData10(str: String){
            userDefaults10_g.set(str, forKey: "DataStore10_g")
            userDefaults10_g.synchronize()
        }
        func saveData11(str: String){
            userDefaults11_g.set(str, forKey: "DataStore11_g")
            userDefaults11_g.synchronize()
        }
    
        func saveData12(str: String){
            userDefaults12_g.set(str, forKey: "DataStore12_g")
            userDefaults12_g.synchronize()
        }
    
        func saveData13(str: String){
            userDefaults13_g.set(str, forKey: "DataStore13_g")
            userDefaults13_g.synchronize()
        }
    
        func saveData14(str: String){
            userDefaults14_g.set(str, forKey: "DataStore14_g")
            userDefaults14_g.synchronize()
        }

        //それぞれのDataStoreからデータを読み込む
        func readData_g() -> String {
            // Keyを指定して読み込み
            let str: String = userDefaults_g.object(forKey: "DataStore_g") as! String
            return str
        }
        
        func readData2_g() -> String {
            // Keyを指定して読み込み
            let str: String = userDefaults2_g.object(forKey: "DataStore2_g") as! String
            return str
        }
        func readData3_g() -> String {
            // Keyを指定して読み込み
            let str: String = userDefaults3_g.object(forKey: "DataStore3_g") as! String
            return str
        }
        func readData4_g() -> String {
            // Keyを指定して読み込み
            let str: String = userDefaults4_g.object(forKey: "DataStore4_g") as! String
            return str
        }
        func readData5_g() -> String {
            // Keyを指定して読み込み
            let str: String = userDefaults5_g.object(forKey: "DataStore5_g") as! String
            return str
        }
        func readData6_g() -> String {
            // Keyを指定して読み込み
            let str: String = userDefaults6_g.object(forKey: "DataStore6_g") as! String
            return str
        }
        func readData7_g() -> String {
            // Keyを指定して読み込み
            let str: String = userDefaults7_g.object(forKey: "DataStore7_g") as! String
            return str
        }
        func readData8_g() -> String {
            // Keyを指定して読み込み
            let str: String = userDefaults8_g.object(forKey: "DataStore8_g") as! String
            return str
        }
        func readData9_g() -> String {
            // Keyを指定して読み込み
            let str: String = userDefaults9_g.object(forKey: "DataStore9_g") as! String
            return str
        }
        func readData10_g() -> String {
            // Keyを指定して読み込み
            let str: String = userDefaults10_g.object(forKey: "DataStore10_g") as! String
            return str
        }
        func readData11_g() -> String {
            // Keyを指定して読み込み
            let str: String = userDefaults11_g.object(forKey: "DataStore11_g") as! String
            return str
        }
    
        func readData12_g() -> String {
            // Keyを指定して読み込み
            let str: String = userDefaults12_g.object(forKey: "DataStore12_g") as! String
            return str
        }
    
        func readData13_g() -> String {
            // Keyを指定して読み込み
            let str: String = userDefaults13_g.object(forKey: "DataStore13_g") as! String
            return str
        }
    
        func readData14_g() -> String {
            // Keyを指定して読み込み
            let str: String = userDefaults14_g.object(forKey: "DataStore14_g") as! String
            return str
        }
        
        override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
            // Dispose of any resources that can be recreated.
        }

    //"保存"を押した時の動作
    @IBAction func SaveBotton_g(_ sender: Any) {
        
        Text = T1g.text!
        //TextFieldに入力されたものが、Int型もあるいはFloat型なら、そのまま保存。
        //それ以外(例えば空白や.など)なら、0を保存する。
        if let numeric = Int(Text) {
            T1g.text = Text
        } else if let num = Float(Text){
            T1g.text = Text
        } else if(Text.isEmpty){
            T1g.text = "0"
            Text = "0"
        } else{
            T1g.text = "0"
            Text = "0"
        }
        // キーボードを閉じる
        T1g.resignFirstResponder()
        saveData(str: Text)
        
        
        Text2 = T2g.text!
        if let numeric = Int(Text2) {
            T2g.text = Text2
        } else if let num = Float(Text2){
            T2g.text = Text2
        } else if(Text2.isEmpty){
            T2g.text = "0"
            Text2 = "0"
        } else{
            T2g.text = "0"
            Text2 = "0"
        }
        T2g.resignFirstResponder()
        saveData2(str: Text2)
        
        
        Text3 = T3g.text!
        if let numeric = Int(Text3) {
            T3g.text = Text3
        } else if let num = Float(Text3){
            T3g.text = Text3
        } else if(Text3.isEmpty){
            T3g.text = "0"
            Text3 = "0"
        } else{
            T3g.text = "0"
            Text3 = "0"
        }
        T3g.resignFirstResponder()
        saveData3(str: Text3)
        
        
        Text4 = T4g.text!
        if let numeric = Int(Text4) {
            T4g.text = Text4
        } else if let num = Float(Text4){
            T4g.text = Text4
        } else if(Text4.isEmpty){
            T4g.text = "0"
            Text4 = "0"
        } else{
            T4g.text = "0"
            Text4 = "0"
        }
        T4g.resignFirstResponder()
        saveData4(str: Text4)
        
        
        Text5 = T5g.text!
        if let numeric = Int(Text5) {
            T5g.text = Text5
        } else if let num = Float(Text5){
            T5g.text = Text5
        } else if(Text5.isEmpty){
            T5g.text = "0"
            Text5 = "0"
        } else{
            T5g.text = "0"
            Text5 = "0"
        }
        T5g.resignFirstResponder()
        saveData5(str: Text5)
        
        
        Text6 = T6g.text!
        if let numeric = Int(Text6) {
            T6g.text = Text6
        } else if let num = Float(Text6){
            T6g.text = Text6
        } else if(Text6.isEmpty){
            T6g.text = "0"
            Text6 = "0"
        } else{
            T6g.text = "0"
            Text6 = "0"
        }
        T6g.resignFirstResponder()
        saveData6(str: Text6)
        
        
        Text7 = T7g.text!
        if let numeric = Int(Text7) {
            T7g.text = Text7
        } else if let num = Float(Text7){
            T7g.text = Text7
        } else if(Text7.isEmpty){
            T7g.text = "0"
            Text7 = "0"
        } else{
            T7g.text = "0"
            Text7 = "0"
        }
        T7g.resignFirstResponder()
        saveData7(str: Text7)
        
        
        Text8 = T8g.text!
        if let numeric = Int(Text8) {
            T8g.text = Text8
        } else if let num = Float(Text8){
            T8g.text = Text8
        } else if(Text8.isEmpty){
            T8g.text = "0"
            Text8 = "0"
        } else{
            T8g.text = "0"
            Text8 = "0"
        }
        T8g.resignFirstResponder()
        saveData8(str: Text8)
        
        
        Text9 = T9g.text!
        if let numeric = Int(Text9) {
            T9g.text = Text9
        } else if let num = Float(Text9){
            T9g.text = Text9
        } else if(Text9.isEmpty){
            T9g.text = "0"
            Text9 = "0"
        } else{
            T9g.text = "0"
            Text9 = "0"
        }
        T9g.resignFirstResponder()
        saveData9(str: Text9)
        
        
        Text10 = T10g.text!
        if let numeric = Int(Text10) {
            T10g.text = Text10
        } else if let num = Float(Text10){
            T10g.text = Text10
        } else if(Text10.isEmpty){
            T10g.text = "0"
            Text10 = "0"
        } else{
            T10g.text = "0"
            Text10 = "0"
        }
        T10g.resignFirstResponder()
        saveData10(str: Text10)
        
        
        Text11 = T11g.text!
        if let numeric = Int(Text11) {
            T11g.text = Text11
        } else if let num = Float(Text11){
            T11g.text = Text11
        } else if(Text11.isEmpty){
            T11g.text = "0"
            Text11 = "0"
        } else{
            T11g.text = "0"
            Text11 = "0"
        }
        T11g.resignFirstResponder()
        saveData11(str: Text11)
        
        
        Text12 = T12g.text!
        if let numeric = Int(Text12) {
            T12g.text = Text12
        } else if let num = Float(Text12){
            T12g.text = Text12
        } else if(Text12.isEmpty){
            T12g.text = "0"
            Text12 = "0"
        } else{
            T12g.text = "0"
            Text12 = "0"
        }
        T12g.resignFirstResponder()
        saveData12(str: Text12)
        
        
        Text13 = T13g.text!
        if let numeric = Int(Text13) {
            T13g.text = Text13
        } else if let num = Float(Text13){
            T13g.text = Text13
        } else if(Text13.isEmpty){
            T13g.text = "0"
            Text13 = "0"
        } else{
            T13g.text = "0"
            Text13 = "0"
        }
        T13g.resignFirstResponder()
        saveData13(str: Text13)
        
        
        Text14 = T14g.text!
        if let numeric = Int(Text14) {
            T14g.text = Text14
        } else if let num = Float(Text14){
            T14g.text = Text14
        } else if(Text14.isEmpty){
            T14g.text = "0"
            Text14 = "0"
        } else{
            T14g.text = "0"
            Text14 = "0"
        }
        T14g.resignFirstResponder()
        saveData14(str: Text14)
    }
    
    
    @IBAction func GraduationB(_ sender: Any){
        let url = NSURL(string: "http://rais.std.u-ryukyu.ac.jp/dc/")
        if UIApplication.shared.canOpenURL(url! as URL){
            UIApplication.shared.openURL(url! as URL)
            // Do any additional setup after loading the view.
        }
    }
    // Do any additional setup after loading the view.
    }



    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


