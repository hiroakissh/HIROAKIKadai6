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

    private var themesNumber: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        themesNumber = Int(arc4random_uniform(100))
        themesLabel.text = String(themesNumber)
    }

    @IBAction private func validationButton(_ sender: Any) {
        let validationNumber = Int(numberSlider.value)
        if validationNumber == themesNumber {

        } else {

        }
    }
    private func presentAlert(message: String) {
        let alert = UIAlertController(
            title: "",
            message: message,
            preferredStyle: .alert)

        let okAction = UIAlertAction(
            title: "",
            style: .default)

        alert.addAction(okAction)

        present(alert, animated: true, completion: nil)
    }
}
