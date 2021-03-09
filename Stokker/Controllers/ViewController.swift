//
//  ViewController.swift
//  Stokker
//
//  Created by Michael Sonnino on 04/03/2021.
//

import UIKit


class MainViewController: UIViewController {
        
    @IBOutlet weak var sentimentLabel: UILabel!
    @IBOutlet weak var textField: UITextField!
    
    let sentimentClassifier = SentimentClassifierManager()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        sentimentClassifier.delegate = self

    }

    @IBAction func searchPressed(_ sender: UIButton) {
        if let userText = textField.text {
            sentimentClassifier.fetchSentiment(for: userText)
        }
        
    }
    
}

extension MainViewController: SentimentClassifierManagerDelegate {
    func didFinishCalculatingSentimentScore(score: Int) {
        print(score)
    }
    
    
}

