//
//  ViewController.swift
//  C4QLesson2
//
//  Created by Patrick O'Leary on 10/12/17.
//  Copyright © 2017 Patrick O'Leary. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var oriolesRuns: UILabel!
    @IBOutlet var oriolesHits: UILabel!
    @IBOutlet var oriolesErrors: UILabel!
    
    
    @IBOutlet var yankeesRuns: UILabel!
    @IBOutlet var yankeesHits: UILabel!
    @IBOutlet var yankeesErrors: UILabel!
    
    @IBOutlet var scoreView: ScoreView!
    
    var oriolesScore = TeamScore()
    var yankeesScore = TeamScore()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }



}

