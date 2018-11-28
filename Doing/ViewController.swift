//
//  ViewController.swift
//  Doing
//
//  Created by 島田　裕幹 on 2018/11/28.
//

import UIKit

//classの継承を追加
class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    //UITableView,numberOfRowsInSectionの追加(表示するcell数を決める)
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //戻り値の設定(表示するcell数)
        return Todokobetsunonakami.count
    }
    //UITableView,cellForRowATの追加(表示するcellの中身を決める)
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //変数を作る
        let TodoCell : UITableViewCell = tableView.dequeueReusableCell(withIdentifier:"TodoCell",for: indexPath)
        //変数の中身を作る
        TodoCell.textLabel!.text = Todokobetsunonakami[indexPath.row]
        //戻り値の設定(表示する中身)
        return TodoCell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        if UserDefaults.standard.object(forKey:"TodoList") != nil{
        // Do any additional setup after loading the view, typically from a nib.
            Todokobetsunonakami = UserDefaults.standard.object(forKey:"TodoList") as! [String]
        }
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath){
        if editingStyle == .delete{
            Todokobetsunonakami.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    
    func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
        let deleteButton: UITableViewRowAction = UITableViewRowAction(style: .normal, title:"削除"){ (action, index) -> Void in
            Todokobetsunonakami.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
        deleteButton.backgroundColor = UIColor.red
        return [deleteButton]
    }
 
    /*
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCell.EditingStyle, forRowAtIndexPathindexPath: NSIndexPath){
        Todokobetsunonakami[IndexPath.section].sectionObject.removeAtIndex(IndexPath.row)
        tableView.deleteRowsAtIndexPaths([IndexPath], withRowAnimation: UITableView.RowAnimation.Fade)
    }
 */
}


