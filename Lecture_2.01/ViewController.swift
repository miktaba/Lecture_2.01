//
//  ViewController.swift
//  Lecture_2.01
//
//  Created by Mikhail Tabakaev on 2/1/24.
//

import UIKit

final class ViewController: UIViewController {

    // private let cornerRadius: CGFloat = 10
    // если прописываем доп. логику
    
    @IBOutlet var greetingLabel: UILabel!
    @IBOutlet var greetingButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        greetingLabel.isHidden.toggle()
        greetingButton.layer.cornerRadius = 10 // = cornerRadius
        
    }

    @IBAction func greetingButtonDidTapped(_ sender: UIButton) {
        greetingLabel.isHidden.toggle()
        sender.setTitle(
            greetingLabel.isHidden ? "Show Greeting" : "Hide Greeting",
            for: .normal
        )
// Заменил тернарным оператором
//        if greetingLabel.isHidden {
//            sender.setTitle("Show Greeting", for: .normal)
//        } else {
//            sender.setTitle("Hide Greetings", for: .normal)
//        }
    }
    
}

