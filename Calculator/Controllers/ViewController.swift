import UIKit

class ViewController: UIViewController {
    private var numberUserWithWorks = ""
    
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
    
    //MARK: - lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        addCornerRadius()
    }
    
    //MARK: - methods
    @IBAction func clearLabelTextButtonTapped(_ sender: UIButton) {
        clearResultLabel()
    }
    
    
    @IBAction func plusOrMinusButtonTapped(_ sender: UIButton) {
    }
    
    
    @IBAction func procentButtonTapped(_ sender: UIButton) {
    }
    
    @IBAction func divisionButtonTapped(_ sender: UIButton) {
    }
    
    
    @IBAction func sevenButtonTapped(_ sender: UIButton) {
        addNumbers(sender.titleLabel?.text)
    }
    
    @IBAction func eightButtonTapped(_ sender: UIButton) {
        addNumbers(sender.titleLabel?.text)
    }
    
    
    @IBAction func nineButtonTapped(_ sender: UIButton) {
        addNumbers(sender.titleLabel?.text)
    }
    
    
    @IBAction func multiplicationButtonTapped(_ sender: UIButton) {
    }
    
    @IBAction func fourButtonTapped(_ sender: UIButton) {
        addNumbers(sender.titleLabel?.text)
    }
    
    
    @IBAction func fiveButtonTapped(_ sender: UIButton) {
        addNumbers(sender.titleLabel?.text)
    }
    
    @IBAction func sixButtonTapped(_ sender: UIButton) {
        addNumbers(sender.titleLabel?.text)
    }
    
    @IBAction func minusButtonTapped(_ sender: UIButton) {
        
    }
    
    @IBAction func oneButtonTapped(_ sender: UIButton) {
        addNumbers(sender.titleLabel?.text)
    }
    
    @IBAction func twoButtonTapped(_ sender: UIButton) {
        addNumbers(sender.titleLabel?.text)
    }
    
    @IBAction func threeButtonTapped(_ sender: UIButton) {
    }
    
    @IBAction func plusButtonTapped(_ sender: UIButton) {
        
    }
    
    @IBAction func zeroButtonTapped(_ sender: UIButton) {
        addNumbers(sender.titleLabel?.text)
    }
    
    @IBAction func commaButtonTapped(_ sender: UIButton) {
    }
    
    @IBAction func equalButtonTapped(_ sender: UIButton) {
    }
    
    private func addCornerRadius() {
        clearLabelTextButton.layer.cornerRadius = calculateAndAddCornerRadius(with: clearLabelTextButton.frame.width)
        plusOrMinusButton.layer.cornerRadius = calculateAndAddCornerRadius(with: plusButton.frame.width)
        procentButton.layer.cornerRadius = calculateAndAddCornerRadius(with: procentButton.frame.width)
        divisionButton.layer.cornerRadius = calculateAndAddCornerRadius(with: divisionButton.frame.width)
        sevenButton.layer.cornerRadius = calculateAndAddCornerRadius(with: sevenButton.frame.width)
        eightButton.layer.cornerRadius = calculateAndAddCornerRadius(with: eightButton.frame.width)
        nineButton.layer.cornerRadius = calculateAndAddCornerRadius(with: nineButton.frame.width)
        multiplicationButton.layer.cornerRadius = calculateAndAddCornerRadius(with: multiplicationButton.frame.width)
        fourButton.layer.cornerRadius = calculateAndAddCornerRadius(with: fourButton.frame.width)
        fiveButton.layer.cornerRadius = calculateAndAddCornerRadius(with: fiveButton.frame.width)
        sixButton.layer.cornerRadius = calculateAndAddCornerRadius(with: sixButton.frame.width)
        minusButton.layer.cornerRadius = calculateAndAddCornerRadius(with: minusButton.frame.width)
        oneButton.layer.cornerRadius = calculateAndAddCornerRadius(with: oneButton.frame.width)
        twoButton.layer.cornerRadius = calculateAndAddCornerRadius(with: twoButton.frame.width)
        threeButton.layer.cornerRadius = calculateAndAddCornerRadius(with: threeButton.frame.width)
        plusButton.layer.cornerRadius = calculateAndAddCornerRadius(with: plusButton.frame.width)
        zeroButton.layer.cornerRadius = calculateAndAddCornerRadius(with: zeroButton.frame.width / 2)
        commaButton.layer.cornerRadius = calculateAndAddCornerRadius(with: commaButton.frame.width)
        equalButton.layer.cornerRadius = calculateAndAddCornerRadius(with: equalButton.frame.width)
    }
    
    private func addNumbers(_ title: String?) {
        guard let title = title else { return }
        
        numberUserWithWorks = numberUserWithWorks + title
        
        resultLabel.text = numberUserWithWorks
    }
    
    private func clearResultLabel() {
        numberUserWithWorks = ""
        resultLabel.text = "0"
    }
}
