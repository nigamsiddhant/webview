//
//  ViewController2.swift
//  webviews
//
//  Created by GadgetZone on 10/15/18.
//  Copyright © 2018 GadgetZone. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {
    @IBOutlet weak var lbl1: UILabel!
    var get_string = String()
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        lbl1.text = get_string
        // lets run it
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
