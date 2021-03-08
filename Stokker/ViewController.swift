//
//  ViewController.swift
//  Stokker
//
//  Created by Michael Sonnino on 04/03/2021.
//

import UIKit
import SwifteriOS

class ViewController: UIViewController {
        
    var swifter = Swifter(consumerKey: "dummy_key" , consumerSecret: "dummy_secret")
    let secrets = Secrets()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        swifter = Swifter(consumerKey: secrets.apiKey , consumerSecret: secrets.apiSecret)
        print(secrets.apiKey, secrets.apiSecret)
    }


}

