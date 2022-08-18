//
//  LanguageIndivViewController.swift
//  connectGEN
//
//  Created by scholar on 8/18/22.
//

import UIKit

class ChecklistItem2 {
    let title: String
    var isChecked: Bool = false
    
    init(title: String){
        self.title = title
    }
}

class LanguageIndivViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
        let items: [ChecklistItem2] = [
        "English",
        "Chinese",
        "Spanish",
        "French",
        "Japanese",
        "Italian",
        "Hindi",
        "German",
        "Arabic",
        "Portuguese",
        "Korean",
        "Russian"
        ].compactMap({
            ChecklistItem2(title: $0)
        })
        
        private let tableView: UITableView = {
            let table = UITableView()
            table.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
            
            return table
        }()

        override func viewDidLoad() {
            super.viewDidLoad()
            view.addSubview(tableView)
            tableView.delegate = self
            tableView.dataSource = self

            // Do any additional setup after loading the view.
        }
        
        override func viewDidLayoutSubviews() {
            super.viewDidLayoutSubviews()
            tableView.frame = view.bounds
        }
        
        //Table
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return items.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let item = items[indexPath.row]
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
            cell.textLabel?.text = item.title
            
            cell.accessoryType = item.isChecked ? .checkmark : .none
            return cell
        }
        
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            tableView.deselectRow(at: indexPath, animated: true)
            let item = items[indexPath.row]
            item.isChecked = !item.isChecked
            tableView.reloadRows(at: [indexPath], with: .automatic)
            
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


