//
//  DetailsViewController.swift
//  EA_STORE
//
//  Created by Estique on 10/22/17.
//  Copyright © 2017 Estique. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {
    
    var myString: String = ""

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func btnBack(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }

    
    override func viewDidAppear(_ animated: Bool) {
          print("Details view controller item: \(myString)")
    }
}
