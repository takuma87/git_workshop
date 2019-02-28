//
//  ViewController.swift
//  test
//
//  Created by takuto on 2018/11/21.
//  Copyright © 2018 takuto. All rights reserved.
//

import UIKit
func + (lhs: NSDecimalNumber, rhs: NSDecimalNumber) -> NSDecimalNumber {
    return lhs.adding(rhs)
}
class GraduationMain: UIViewController {
    
    @IBOutlet weak var ScrollView: UIScrollView!
    
    @IBOutlet weak var S1: UILabel! //単位取得状況分子
    @IBOutlet weak var S2: UILabel! //単位取得状況分母
    
    @IBOutlet weak var A1: UILabel! //健康
    @IBOutlet weak var A2: UILabel! //人文
    @IBOutlet weak var A3: UILabel! //社会
    @IBOutlet weak var A4: UILabel! //自然
    @IBOutlet weak var A5: UILabel! //総合
    @IBOutlet weak var A6: UILabel! //キャリア
    @IBOutlet weak var A7: UILabel! //琉大特色
    @IBOutlet weak var A8: UILabel! //情報
    @IBOutlet weak var A9: UILabel! //外国語
    @IBOutlet weak var A10: UILabel! //専門基礎
    @IBOutlet weak var A11: UILabel! //専門
    @IBOutlet weak var A12: UILabel! //共通合計
    @IBOutlet weak var A13: UILabel! //教職
    
    //履修した単位
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
    
    //卒業した単位
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
    let userDefaults14_g = UserDefaults.standard //卒業単位合計
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
    }
    override func viewWillAppear(_ animated: Bool) {
        
        ScrollView.bounces = false
        /// ローカルストレージ(UserDefaults)から値を取得
        //履修した単位たち
        guard let t1h = userDefaults.object(forKey: "DataStore") else {
            return
        }
        
        guard let t2h = userDefaults2.object(forKey: "DataStore2") else {
            return
        }
        
        guard let t3h = userDefaults3.object(forKey: "DataStore3") else {
            return
        }
        
        guard let t4h = userDefaults4.object(forKey: "DataStore4") else {
            return
        }
        
        guard let t5h = userDefaults5.object(forKey: "DataStore5") else {
            return
        }
        
        guard let t6h = userDefaults6.object(forKey: "DataStore6") else {
            return
        }
        
        guard let t7h = userDefaults7.object(forKey: "DataStore7") else {
            return
        }
        
        guard let t8h = userDefaults8.object(forKey: "DataStore8") else {
            return
        }
        
        guard let t9h = userDefaults9.object(forKey: "DataStore9") else {
            return
        }
        
        guard let t10h = userDefaults10.object(forKey: "DataStore10") else {
            return
        }
        
        guard let t11h = userDefaults11.object(forKey: "DataStore11") else {
            return
        }
        
        guard let t13h = userDefaults13.object(forKey: "DataStore13") else {
            return
        }
        
        
        //卒業した単位たち
        guard let t1g = userDefaults_g.object(forKey: "DataStore_g") else {
            return
        }
        
        guard let t2g = userDefaults2_g.object(forKey: "DataStore2_g") else {
            return
        }
        
        guard let t3g = userDefaults3_g.object(forKey: "DataStore3_g") else {
            return
        }
        
        guard let t4g = userDefaults4_g.object(forKey: "DataStore4_g") else {
            return
        }
        
        guard let t5g = userDefaults5_g.object(forKey: "DataStore5_g") else {
            return
        }
        
        guard let t6g = userDefaults6_g.object(forKey: "DataStore6_g") else {
            return
        }
        
        guard let t7g = userDefaults7_g.object(forKey: "DataStore7_g") else {
            return
        }
        
        guard let t8g = userDefaults8_g.object(forKey: "DataStore8_g") else {
            return
        }
        
        guard let t9g = userDefaults9_g.object(forKey: "DataStore9_g") else {
            return
        }
        
        guard let t10g = userDefaults10_g.object(forKey: "DataStore10_g") else {
            return
        }
        
        guard let t11g = userDefaults11_g.object(forKey: "DataStore11_g") else {
            return
        }
        
        guard let t12g = userDefaults12_g.object(forKey: "DataStore12_g") else {
            return
        }
        
        guard let t13g = userDefaults13_g.object(forKey: "DataStore13_g") else {
            return
        }
        
        guard let t14g = userDefaults14_g.object(forKey: "DataStore14_g") else {
            return
        }
        
        let nt1h = NSDecimalNumber(string: t1h as! String) //NSDecimalNumber型に変換
        let nt1g = NSDecimalNumber(string: t1g as! String)
        let at1 = nt1g.subtracting(nt1h) //nt1g-nt1h(引き算)
        //残り単位がマイナスの値にならぬように条件分岐
        if (at1.intValue<=0){
            A1.text = "0"
        }else{
            A1.text = "\(at1.stringValue)" //string型にキャストし、a1に代入
        }
        
        
        let nt2h = NSDecimalNumber(string: t2h as! String)
        let nt2g = NSDecimalNumber(string: t2g as! String)
        let at2 = nt2g.subtracting(nt2h)
        if (at2.intValue<=0){
            A2.text = "0"
        }else{
            A2.text = "\(at2.stringValue)" //string型にキャストし、a1に代入
        }
        
        let nt3h = NSDecimalNumber(string: t3h as! String)
        let nt3g = NSDecimalNumber(string: t3g as! String)
        let at3 = nt3g.subtracting(nt3h)
        if (at3.intValue<=0){
            A3.text = "0"
        }else{
            A3.text = "\(at3.stringValue)" //string型にキャストし、a1に代入
        }
        
        let nt4h = NSDecimalNumber(string: t4h as! String)
        let nt4g = NSDecimalNumber(string: t4g as! String)
        let at4 = nt4g.subtracting(nt4h)
        if (at4.intValue<=0){
            A4.text = "0"
        }else{
            A4.text = "\(at4.stringValue)" //string型にキャストし、a1に代入
        }
        
        let nt5h = NSDecimalNumber(string: t5h as! String)
        let nt5g = NSDecimalNumber(string: t5g as! String)
        let at5 = nt5g.subtracting(nt5h)
        if (at5.intValue<=0){
            A5.text = "0"
        }else{
            A5.text = "\(at5.stringValue)" //string型にキャストし、a1に代入
        }
        
        let nt6h = NSDecimalNumber(string: t6h as! String)
        let nt6g = NSDecimalNumber(string: t6g as! String)
        let at6 = nt6g.subtracting(nt6h)
        if (at6.intValue<=0){
            A6.text = "0"
        }else{
            A6.text = "\(at6.stringValue)" //string型にキャストし、a1に代入
        }
        
        let nt7h = NSDecimalNumber(string: t7h as! String)
        let nt7g = NSDecimalNumber(string: t7g as! String)
        let at7 = nt7g.subtracting(nt7h)
        if (at7.intValue<=0){
            A7.text = "0"
        }else{
            A7.text = "\(at7.stringValue)" //string型にキャストし、a1に代入
        }
        
        let nt8h = NSDecimalNumber(string: t8h as! String)
        let nt8g = NSDecimalNumber(string: t8g as! String)
        let at8 = nt8g.subtracting(nt8h)
        if (at8.intValue<=0){
            A8.text = "0"
        }else{
            A8.text = "\(at8.stringValue)" //string型にキャストし、a1に代入
        }
        
        let nt9h = NSDecimalNumber(string: t9h as! String)
        let nt9g = NSDecimalNumber(string: t9g as! String)
        let at9 = nt9g.subtracting(nt9h)
        if (at9.intValue<=0){
            A9.text = "0"
        }else{
            A9.text = "\(at9.stringValue)" //string型にキャストし、a1に代入
        }
        
        let nt10h = NSDecimalNumber(string: t10h as! String)
        let nt10g = NSDecimalNumber(string: t10g as! String)
        let at10 = nt10g.subtracting(nt10h)
        if (at10.intValue<=0){
            A10.text = "0"
        }else{
            A10.text = "\(at10.stringValue)" //string型にキャストし、a1に代入
        }
        
        let nt11h = NSDecimalNumber(string: t11h as! String)
        let nt11g = NSDecimalNumber(string: t11g as! String)
        let at11 = nt11g.subtracting(nt11h)
        if (at11.intValue<=0){
            A11.text = "0"
        }else{
            A11.text = "\(at11.stringValue)" //string型にキャストし、a1に代入
        }
        
        let t12h = nt1h + nt2h + nt3h + nt4h + nt5h + nt6h + nt7h + nt8h + nt9h
        let nt12g = NSDecimalNumber(string: t12g as! String)
        let at12 = nt12g.subtracting(t12h)
        if (at12.intValue<=0){
            A12.text = "0"
        }else{
            A12.text = "\(at12.stringValue)" //string型にキャストし、a1に代入
        }
        
        let nt13h = NSDecimalNumber(string: t13h as! String)
        let nt13g = NSDecimalNumber(string: t13g as! String)
        let at13 = nt13g.subtracting(nt13h)
        if (at13.intValue<=0){
            A13.text = "0"
        }else{
            A13.text = "\(at13.stringValue)" //string型にキャストし、a1に代入
        }
        
        //"単位取得状況"計算
        let ns2 = NSDecimalNumber(string: t14g as! String)
        S2.text = "\(ns2.stringValue)"
        let ns1_1 = nt12g.subtracting(at12)
        let ns1 = ns1_1 + nt10h + nt11h
        S1.text = "\(ns1.stringValue)"
        
        
        
        
        
        /// 遷移元ビューコントローラにアクセスして値をセット
        // Th1.text = (presentingViewController as? ViewController)?.textField.text
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

