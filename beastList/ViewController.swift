//
//  ViewController.swift
//  beastList
//
//  Created by administrator on 04/10/2021.
//

import UIKit
var task = [String]()

class ViewController: UIViewController  {
  
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        
        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var TextField: UITextField!
    @IBAction func  pressad(_ sender: UIButton){
        if TextField.text!.isEmpty{
            task.insert("", at: 0)
            tableView.insertRows(at:[IndexPath(row: 0 ,section: 0)], with: .right)
        }else if let text = TextField.text {
            task.append(TextField.text!)
            tableView.reloadData()
        }
    }
@IBOutlet weak var tableView: UITableView!
}


extension ViewController: UITableViewDataSource {
   func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return  task.count
   }
   func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let  celll = tableView.dequeueReusableCell(withIdentifier: "cellA", for: indexPath)
    celll.textLabel?.text = task[indexPath.row]
    return celll
   }
}


