//
//  ViewController.swift
//  MyDestini
//
//  Created by Ольга Егорова on 08.06.2022.
//

import UIKit

var storyBrain = StoryBrain ()

class ViewController: UIViewController {
    
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    
    var storyBrain = StoryBrain ()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateUI()
        
    }

    @IBAction func buttonPressed(_ sender: UIButton) {
            storyBrain.NextStoryNumber(choice: sender.currentTitle!)
            updateUI()
      
    }
    
    func updateUI() {
        textLabel.text = storyBrain.getTitleText()
        button1.setTitle(storyBrain.getChoice1Text(), for: .normal)
        button2.setTitle(storyBrain.getChoice2Text(), for: .normal)
        button1.setTitleColor(.white, for: .normal)
        button2.setTitleColor(.white, for: .normal)
        
    }
    
}

