import UIKit

class ViewController: UIViewController {
    private var firstValue: Double = 0
    private var secondValue: Double = 0
    private var savedOperationTag = 0
    private var isWritting = false
    
    //MARK: - properties
    @IBOutlet weak var clearLabelTextButton: UIButton!
    @IBOutlet weak var plusOrMinusButton: UIButton!
    @IBOutlet weak var procentButton: UIButton!
    @IBOutlet weak var divisionButton: UIButton!
    @IBOutlet weak var sevenButton: UIButton!
    @IBOutlet weak var eightButton: UIButton!
    @IBOutlet weak var nineButton: UIButton!
    @IBOutlet weak var multiplicationButton: UIButton!
    @IBOutlet weak var fourButton: UIButton!
    @IBOutlet weak var fiveButton: UIButton!
    @IBOutlet weak var sixButton: UIButton!
    @IBOutlet weak var minusButton: UIButton!
    @IBOutlet weak var oneButton: UIButton!
    @IBOutlet weak var twoButton: UIButton!
    @IBOutlet weak var threeButton: UIButton!
    @IBOutlet weak var plusButton: UIButton!
    @IBOutlet weak var zeroButton: UIButton!
    @IBOutlet weak var commaButton: UIButton!
    @IBOutlet weak var equalButton: UIButton!
    @IBOutlet weak var resultLabel: UILabel!
  
    //MARK: - methods
    @IBAction func calculateMethods(_ sender: UIButton) {
        if sender.tag != 10 && sender.tag != 17 {
            
            savedOperationTag = sender.tag
            if let result = resultLabel.text,
               let resultAsDouble = Double(result) {
                firstValue = resultAsDouble
            }
        }
        
        if sender.tag == 17 {
            guard let result = resultLabel.text,
                  let resultAsDouble = Double(result) else { return }
            
            secondValue = resultAsDouble
            
            switch savedOperationTag {
            case 13:
                resultLabel.text = "\(firstValue / secondValue)"
                
            case 14:
                resultLabel.text = "\(firstValue * secondValue)"
                
            case 15:
                resultLabel.text = "\(firstValue - secondValue)"
                
            case 16:
                resultLabel.text = "\(firstValue + secondValue)"
                
            default:
                break
                
            }
        }
        
        isWritting = true
    }
    
    @IBAction func numberTapped(_ sender: UIButton) {
        switch isWritting {
        case true:
            resultLabel.text = String(sender.tag)
            isWritting = false
            
        case false:
            guard let result = resultLabel.text else { return }
            resultLabel.text = result + String(sender.tag)
        }
    }
    
    
    @IBAction func clearLabelTextButtonTapped(_ sender: UIButton) {
        clearResultLabel()
    }
    
    @IBAction func plusOrMinusButtonTapped(_ sender: UIButton) {
    }
    
    
    @IBAction func procentButtonTapped(_ sender: UIButton) {
    }
    
    
    @IBAction func zeroButtonTapped(_ sender: UIButton) {
        if resultLabel.text != "0" {
            if let text = resultLabel.text {
                resultLabel.text = "\(text)\(0)"
            }
        }
    }
    
    @IBAction func commaButtonTapped(_ sender: UIButton) {
    }
   
    private func clearResultLabel() {
        resultLabel.text = "0"
    }
}
