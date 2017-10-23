//
//  ViewController.swift
//  EA_STORE
//
//  Created by Estique on 10/21/17.
//  Copyright © 2017 Estique. All rights reserved.
//

import UIKit
import Moltin

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
   
    var items = ["One", "Two", "Three", "Four", "Five"]

    @IBOutlet var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        Moltin.sharedInstance().setPublicId("4kVFVU1jaih3FYehPsnVbS22CWVgT7AdbJyOLIUEKC")
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = UITableViewCell.init(style: UITableViewCellStyle.default, reuseIdentifier: "Cell")
//            cell.textLabel?.text = items[indexPath.row]
        
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! MainTableViewCell
        cell.nameLabel.text = items[indexPath.row]
    
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(items[indexPath.row])
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let destination = storyboard.instantiateViewController(withIdentifier: "DetailsViewController") as! DetailsViewController
        self.navigationController?.pushViewController(destination, animated: true)
        
    
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "details" {
            let detailsViewController = segue.destination as! DetailsViewController
            
            let indexpath = tableView.indexPathForSelectedRow
            
            detailsViewController.myString = items[(indexpath?.row)!]
            
        }
    }


}

