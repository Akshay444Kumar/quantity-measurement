//
//  TemperatureViewController.swift
//  Unit Converter
//
//  Created by YE002 on 29/06/23.
//

import UIKit

class TemperatureViewController: UIViewController {

    
    @IBOutlet var fromSegment: UISegmentedControl!
    @IBOutlet var toSegment: UISegmentedControl!
    
    
    @IBOutlet var inputTextField: UITextField!
    @IBOutlet var outputTextLabel: UILabel!
    
    var fromSegmentIndex = 0
    var toSegmentIndex = 0
    
    
    @IBAction func fromSegmentAction(_ sender: UISegmentedControl) {
        
        switch fromSegment.selectedSegmentIndex {
        case 0:
            fromSegmentIndex = 0
        case 1:
            fromSegmentIndex = 1
        default:
            break
        }
    }
    
    
    @IBAction func toSegmentAction(_ sender: UISegmentedControl) {
        
        switch toSegment.selectedSegmentIndex {
            case 0:
                toSegmentIndex = 0
            case 1:
                toSegmentIndex = 1
            default:
                break
        }
    }
    
    func calculate(from fromSegmentIndex: Int, to toSegmentIndex: Int, TextField input: Double) {
        
        var result: Double = 0
        
        if fromSegmentIndex != toSegmentIndex {
            if toSegmentIndex == 0 {
                result = (input - 32) * 5/9

            } else {
                result = (input * 9/5) + 32
            }
        }
        
        outputTextLabel.text = "\(result)"
    }
    
    @IBAction func calculateButtonPressed(_ sender: UIButton) {
        
        if inputTextField.text == "" {
            outputTextLabel.text = "Enter Value!"
        } else {
            calculate(from: fromSegment.selectedSegmentIndex, to: toSegment.selectedSegmentIndex, TextField: Double(inputTextField.text!)!)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    


}
