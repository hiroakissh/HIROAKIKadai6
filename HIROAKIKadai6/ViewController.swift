//
//  ViewController.swift
//  HIROAKIKadai6
//
//  Created by HiroakiSaito on 2021/11/11.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet private weak var themesLabel: UILabel!
    @IBOutlet private weak var numberSlider: UISlider!

    override func viewDidLoad() {
        super.viewDidLoad()
        themesLabel.text = String(arc4random_uniform(100))
    }

    @IBAction private func validationButton(_ sender: Any) {
        
    }
}
