//
//  ViewController.swift
//  monosyllabic
//
//  Created by madi on 4/6/20.
//  Copyright © 2020 madi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var button: UIButton!
    //line 1, five one-syllable words
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var label4: UILabel!
    @IBOutlet weak var label5: UILabel!
    
    //line 2, seven one-syllable words
    @IBOutlet weak var label6: UILabel!
    @IBOutlet weak var label7: UILabel!
    @IBOutlet weak var label8: UILabel!
    @IBOutlet weak var label9: UILabel!
    @IBOutlet weak var label10: UILabel!
    @IBOutlet weak var label11: UILabel!
    @IBOutlet weak var label12: UILabel!
    
    //line 3, five one-syllable words
    @IBOutlet weak var label13: UILabel!
    @IBOutlet weak var label14: UILabel!
    @IBOutlet weak var label15: UILabel!
    @IBOutlet weak var label16: UILabel!
    @IBOutlet weak var label17: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func makePoem(_ sender: Any) {
        
        //initialize empty array
        var arrayOfWords = [String]()
        
        //load array from txt file
        if let wordDictURL = Bundle.main.url(forResource: "onesyllable", withExtension: "txt") {
            if let wordDict = try? String(contentsOf: wordDictURL) {
                arrayOfWords = wordDict.components(separatedBy: "\n")
            }
        }

        if arrayOfWords.isEmpty {
            arrayOfWords = ["dream", "just", "like", "was", "it"]
        }
        
        let labels = [label1,  label2, label3, label4,  label5, label6, label7, label8, label9, label10,  label11, label12, label13, label14, label15, label16, label17]
        for label in labels {
            label!.alpha = 1
            label!.textColor = UIColor.white
            label!.text = arrayOfWords.randomElement()
        }
        
        
    }
    
}

