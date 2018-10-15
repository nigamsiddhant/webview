//
//  ViewController.swift
//  webviews
//
//  Created by GadgetZone on 10/15/18.
//  Copyright © 2018 GadgetZone. All rights reserved.
//

import UIKit
import WebKit
class ViewController: UIViewController,WKNavigationDelegate {
    let pass_string = "hello siddhant"
    @IBOutlet weak var activity: UIActivityIndicatorView!
    @IBOutlet weak var webviews: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        webviews.navigationDelegate = self
        
        let myurl = URL(string: "https://www.apple.com")
        let myres = URLRequest(url: myurl!)
        webviews.load(myres)
        
        // its working :3
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func webView(_ webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!) {
        activity.startAnimating()
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        activity.stopAnimating()
        
        // lets run and see that it works or not
        // now lets see how to parse value from one view controller to another in ios 12
    }

    @IBAction func go(_ sender: Any) {
        // lets built it once
        let sb = UIStoryboard.init(name: "Main", bundle: nil)
        let vc : ViewController2 = sb.instantiateViewController(withIdentifier: "ViewController2") as! ViewController2
        vc.get_string = pass_string
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
}

