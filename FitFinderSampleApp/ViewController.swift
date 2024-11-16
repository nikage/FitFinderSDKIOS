import UIKit
import FitFinderSDK

class ViewController: UIViewController {
    let heightTextField = UITextField()
    let weightTextField = UITextField()
    let resultLabel = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }

    func setupUI() {
        view.backgroundColor = .white

        heightTextField.placeholder = "Height (cm)"
        weightTextField.placeholder = "Weight (kg)"
        heightTextField.borderStyle = .roundedRect
        weightTextField.borderStyle = .roundedRect
        let button = UIButton(type: .system)
        button.setTitle("Get Size Recommendation", for: .normal)
        button.addTarget(self, action: #selector(calculateSize), for: .touchUpInside)

        resultLabel.text = ""

        let stackView = UIStackView(arrangedSubviews: [heightTextField, weightTextField, button, resultLabel])
        stackView.axis = .vertical
        stackView.spacing = 20
        stackView.translatesAutoresizingMaskIntoConstraints = false

        view.addSubview(stackView)
        NSLayoutConstraint.activate([
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
        ])
    }

    @objc func calculateSize() {
        guard
            let heightText = heightTextField.text,
            let weightText = weightTextField.text,
            let height = Double(heightText),
            let weight = Double(weightText)
        else {
            resultLabel.text = "Invalid input."
            return
        }

        let recommendedSize = FitFinder.recommendSize(height: height, weight: weight)
        resultLabel.text = "Your Recommended Size: \(recommendedSize)"
    }
}
