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
    private var validationNumber: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        themesNumber = Int.random(in: 1..<101)
        themesLabel.text = String(themesNumber)
    }

    @IBAction private func validationButton(_ sender: Any) {
        validationNumber = Int(numberSlider.value)
        if validationNumber == themesNumber {
            presentAlert(message: "あたり！")
        } else {
            presentAlert(message: "はずれ！")
        }
    }
    private func presentAlert(message: String) {
        let alert = UIAlertController(
            title: "結果",
            message: "\(message)\nあなたの値：\(validationNumber)",
            preferredStyle: .alert)

        let okAction = UIAlertAction(
            title: "再挑戦",
            style: .default,
            handler: { _ in self.viewDidLoad()})

        alert.addAction(okAction)
        present(alert, animated: true, completion: nil)
    }
}
