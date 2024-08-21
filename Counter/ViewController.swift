//
//  ViewController.swift
//  Counter
//
//  Created by Михаил Атоян on 21.08.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet private weak var counterLabel: UILabel!
    @IBOutlet private weak var plusButton: UIButton!
    @IBOutlet private weak var minusButton: UIButton!
    @IBOutlet private weak var resetButton: UIButton!
    @IBOutlet private weak var logTextView: UITextView!
    
    private var counter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        counterLabel.text = "0"
        logTextView.isEditable = false
    }

    @IBAction private func plusButtonDidTap(_ sender: Any) {
        counter += 1
        counterLabel.text = "\(counter)"
        
        logTextView.text += "\n\(getCurrentDate()): значение изменено на +1"
    }
    
    @IBAction private func minusButtonDidTap(_ sender: Any) {
        if counter > 0 {
            counter -= 1
            counterLabel.text = "\(counter)"
            
            logTextView.text += "\n\(getCurrentDate()): значение изменено на -1"
        }
        else {
            logTextView.text += "\n\(getCurrentDate()): попытка уменьшить значение счётчика ниже 0"
        }
    }
    @IBAction private func resetButtonDidTap(_ sender: Any) {
        counter = 0
        counterLabel.text = "0"
        
        logTextView.text += "\n\(getCurrentDate()): значение сброшено"
    }
    
    private func getCurrentDate() -> String {
        let getCurrentDate = Date()
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd.MM.yy HH:mm:ss"
        return dateFormatter.string(from: getCurrentDate)
    }
}

