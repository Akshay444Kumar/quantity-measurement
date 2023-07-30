//
//  ViewController.swift
//  Unit Converter
//
//  Created by YE002 on 29/06/23.
//

import UIKit

class LengthViewController: UIViewController {

    
    @IBOutlet var fromSegment: UISegmentedControl!
    
    @IBOutlet var toSegment: UISegmentedControl!
    
    @IBOutlet var inputTextField: UITextField!
    
    @IBOutlet var outputLabel: UILabel!
    
    var fromSegmentIndex = 0
    var toSegmentIndex = 0
    
    @IBAction func fromSegmentAction(_ sender: UISegmentedControl) {
        
        switch fromSegment.selectedSegmentIndex {
        case 0:
            fromSegmentIndex = 0
        default:
            fromSegmentIndex = 1
        }
    }
    
    @IBAction func toSegmentAction(_ sender: UISegmentedControl) {
        
        switch toSegment.selectedSegmentIndex {
        case 0:
            toSegmentIndex = 0
        default:
            toSegmentIndex = 1
        }
    }
    
    func calculate(From fromSegmentIndex: Int, To toSegmentIndex: Int, InputTextField input: Double) {
        
        var result: Double?
        
        if fromSegmentIndex != toSegmentIndex {
            if toSegmentIndex == 0 {
                result = input * 0.3048
            }
            else if toSegmentIndex == 1 {
                result = input * 3.28084
            }
        }
        
        guard let result = result else {return}
        
        outputLabel.text = "\(result)"
    }
    
    
    
    
    
    
    
    @IBAction func calculateButtonPressed(_ sender: UIButton) {
        
        if inputTextField.text == "" {
            outputLabel.text = "Enter Value!"
        }
        else {
            
            guard let enteredValue = Double(inputTextField.text!) else { return}
            
            calculate(From: fromSegment.selectedSegmentIndex, To: toSegment.selectedSegmentIndex, InputTextField: enteredValue)
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }


}

