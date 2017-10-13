//
//  ScoreView.swift
//  C4QLesson2
//
//  Created by Patrick O'Leary on 10/12/17.
//  Copyright © 2017 Patrick O'Leary. All rights reserved.
//

import UIKit

class ScoreView: UIView {
    
    var currentTeam: CurrentTeam = .orioles
    weak var delegate: ScoreViewDelegate?
    
    enum CurrentTeam {
        case orioles, yankees
    }
    
    @IBOutlet var contentView: UIView!
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    func commonInit() {
        Bundle.main.loadNibNamed("ScoreView", owner: self, options: nil)
        
        addSubview(contentView)
        contentView.translatesAutoresizingMaskIntoConstraints = false
        contentView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        contentView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        contentView.heightAnchor.constraint(equalTo: heightAnchor).isActive = true
        contentView.widthAnchor.constraint(equalTo: widthAnchor).isActive = true
    }
    
    
    @IBAction func segmentChange(_ sender: UISegmentedControl) {
        currentTeam = sender.selectedSegmentIndex == 0 ? .orioles : .yankees
    }
    
    @IBAction func runTapped(_ sender: Any) {
        if currentTeam == .orioles {
            delegate?.oriolesRun()
        } else {
            delegate?.yankeesRun()
        }
    }
   
    @IBAction func hitTapped(_ sender: Any) {
        if currentTeam == .orioles {
            delegate?.oriolesHit()
        } else {
            delegate?.yankeesHit()
        }
    }
    @IBAction func errorTapped(_ sender: Any) {
        if currentTeam == .orioles {
            delegate?.oriolesError()
        } else {
            delegate?.yankeesError()
        }
    }
}

protocol ScoreViewDelegate: class {
    func oriolesRun()
    func yankeesRun()
    func oriolesHit()
    func yankeesHit()
    func oriolesError()
    func yankeesError()
}
