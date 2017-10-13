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
        scoreView.delegate = self
    }
}

extension ViewController: ScoreViewDelegate {
    func yankeesRun() {
        yankeesScore.run()
        yankeesRuns.text = String(yankeesScore.runs)
    }
    
    func oriolesRun() {
        oriolesScore.run()
        oriolesRuns.text = String(oriolesScore.runs)
    }
    
    func yankeesHit() {
        yankeesScore.hit()
        yankeesHits.text = String(yankeesScore.hits)
    }
    
    func oriolesHit() {
        oriolesScore.hit()
        oriolesHits.text = String(oriolesScore.hits)
    }
    
    func yankeesError() {
        yankeesScore.error()
        yankeesErrors.text = String(yankeesScore.errors)
    }
    
    func oriolesError() {
        oriolesScore.error()
        oriolesErrors.text = String(oriolesScore.errors)
    }
}

