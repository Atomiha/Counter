//
//  ViewController.swift
//  Counter
//
//  Created by Михаил Атоян on 21.08.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var counterLabel: UILabel!
    @IBOutlet weak var plusButton: UIButton!
    @IBOutlet weak var minusButton: UIButton!
    @IBOutlet weak var resetButton: UIButton!
    @IBOutlet weak var logTextView: UITextView!
    
    var counter = 0
    

    //print(dateFormatter.string(from: getDate))
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        counterLabel.text = "0"
        logTextView.isEditable = false
    }

    @IBAction func plusButtonDidTap(_ sender: Any) {
        counter += 1
        counterLabel.text = "\(counter)"
        
        logTextView.text += "\n\(getCurrentDate()): значение изменено на +1"
    }
    
    @IBAction func minusButtonDidTap(_ sender: Any) {
        if counter > 0 {
            counter -= 1
            counterLabel.text = "\(counter)"
            
            logTextView.text += "\n\(getCurrentDate()): значение изменено на -1"
        }
        else {
            logTextView.text += "\n\(getCurrentDate()): попытка уменьшить значение счётчика ниже 0"
        }
    }
    @IBAction func resetButtonDidTap(_ sender: Any) {
        counter = 0
        counterLabel.text = "0"
        
        logTextView.text += "\n\(getCurrentDate()): значение сброшено"
    }
    
    func getCurrentDate() -> String {
        let getCurrentDate = Date()
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd.MM.yy HH:mm:ss"
        return dateFormatter.string(from: getCurrentDate)
    }
}

