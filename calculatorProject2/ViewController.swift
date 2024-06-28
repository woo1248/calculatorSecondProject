//
//  ViewController.swift
//  calculatorProject2
//
//  Created by t2023-m0119 on 6/24/24.
//
//
//import UIKit
//import SnapKit
//
//class ViewController: UIViewController {
//
//    let label = UILabel()
//
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//      configureUI()
//}
//
// private func configureUI() {
//        view.backgroundColor = .black
//        
//        label.textColor = . white
//        label.text = "12345"
//        label.textAlignment = .right
//        label.font = .boldSystemFont(ofSize: 60)
//        
//        self.view.addSubview(label)
//             label.snp.makeConstraints { make in
//                 make.leading.equalToSuperview().offset(30)
//                 make.trailing.equalToSuperview().offset(-30)
//                 make.top.equalToSuperview().offset(200)
//                 make.height.equalTo(100)
//             }
//        
//        
//        
//        let buttonTitles = [
//            ["1", "2", "3", "4"],
//            ["5", "6", "7", "8"],
//            ["9", "0", "+", "-"],
//            ["*", "/", "=", "AC"]
//        ]
//        
//        let operatorButtons: Set<String> = ["+", "-", "*", "/", "=", "AC"]
//        
//        let verticalStackView = makeVerticalStackView()
//
//        
//        [label, verticalStackView]
//            .forEach {view.addSubview($0)}
//        
//        label.snp.makeConstraints {
//            $0.leading.trailing.equalToSuperview().offset(30)
//            $0.top.equalToSuperview().offset(200)
//            $0.height.equalTo(100)
//        }
//        
//        verticalStackView.snp.makeConstraints{
//            $0.width.equalTo(350)
//            $0.top.equalTo(label.snp.bottom).offset(60)
//            $0.centerX.centerY.equalToSuperview()
//        }
//        
//        self.view.addSubview(verticalStackView)
//                verticalStackView.snp.makeConstraints { make in
//                    make.width.equalTo(350)
//                    make.top.equalTo(label.snp.bottom).offset(60)
//                    make.centerX.equalToSuperview()
//                }
//
//        
//        for row in buttonTitles {
//            let buttons = row.map { tilte -> UIButton in
//                let color: UIColor = operatorButtons.contains(title) ? .orange : UIColor(red: 58/255, green: 58/255, blue: 58/255, alpha: 1.0)
//                return makeButton(title: title, Action: #selector(buttonTapped(_:)), backgroundColor: color)
//            }
//            let horizontalStackView = makeHorizontalStackView(buttons)
//            verticalStackView.addArrangedSubview(horizontalStackView)
//        }
//    }
//
//            private func makeHorizontalStackView(_ views: [UIView]) -> UIStackView {
//                let stackView = UIStackView(arrangedSubviews: views)
//                    stackView.axis = .horizontal
//                    stackView.spacing = 10
//                    stackView.distribution = .fillEqually
//                    return stackView
//                  }
//        
//            private func makeVerticalStackView() -> UIStackView {
//                let stackView = UIStackView()
//                    stackView.axis = .vertical
//                    stackView.spacing = 10
//                    stackView.distribution = .fillEqually
//                    return stackView
//                  }
//        
//           func makeButton(title: String, Action: Selector, backgroundColor: UIColor) -> UIButton {
//                let button = UIButton()
//                button.setTitle(title, for:.normal)
//                button.titleLabel?.font = .boldSystemFont(ofSize: 30)
//                button.backgroundColor = backgroundColor
//                button.layer.cornerRadius = 40
//                button.addTarget(self, action: Action, for: .touchUpInside)
//                return button
//            }
//        
//            @objc func buttonTapped(_ sender:UIButton) {
//            }
//        }

    
//        let button7 = UIButton()
//        let button8 = UIButton()
//        let button9 = UIButton()
//        let buttonPlus = UIButton()
//        let horizontalStackView1 = makeHorizontalStackView([button7, button8, button9, buttonPlus])
//
//        let button4 = UIButton()
//        let button5 = UIButton()
//        let button6 = UIButton()
//        let buttonMinus = UIButton()
//        let horizontalStackView2 = makeHorizontalStackView([button4, button5, button6, buttonMinus])
//
//        let button1 = UIButton()
//        let button2 = UIButton()
//        let button3 = UIButton()
//        let buttonMutiply = UIButton()
//        let horizontalStackView3 = makeHorizontalStackView([button1, button2, button3, buttonMutiply])
//
//        let buttonAc = UIButton()
//        let button0 = UIButton()
//        let buttonEqual = UIButton()
//        let buttondDivide = UIButton()
//        let horizontalStackView4 = makeHorizontalStackView([buttonAc, button0, buttonEqual, buttondDivide])
//
//        let verticalStackview = makeVerticalStackView([horizontalStackView1, horizontalStackView2, horizontalStackView3, horizontalStackView4])




//        button7.setTitle("7", for: .normal)
//        button7.setTitleColor(.white, for: .normal)
//        button7.titleLabel?.font = .boldSystemFont(ofSize: 30)
//        button7.backgroundColor = UIColor(red: 58/255, green: 58/255, blue: 58/255, alpha: 1.0)
//        button7.layer.cornerRadius = 40
//
//        button8.setTitle("8", for: .normal)
//        button8.setTitleColor(.white, for: .normal)
//        button8.titleLabel?.font = .boldSystemFont(ofSize: 30)
//        button8.backgroundColor = UIColor(red: 58/255, green: 58/255, blue: 58/255, alpha: 1.0)
//        button8.layer.cornerRadius = 40
//
//        button9.setTitle("9", for: .normal)
//        button9.setTitleColor(.white, for: .normal)
//        button9.titleLabel?.font = .boldSystemFont(ofSize: 30)
//        button9.backgroundColor = UIColor(red: 58/255, green: 58/255, blue: 58/255, alpha: 1.0)
//        button9.layer.cornerRadius = 40
//
//        buttonPlus.setTitle("+", for: .normal)
//        buttonPlus.setTitleColor(.white, for: .normal)
//        buttonPlus.titleLabel?.font = .boldSystemFont(ofSize: 30)
//        buttonPlus.backgroundColor = .orange
//        buttonPlus.layer.cornerRadius = 40
//
//
//
//        button4.setTitle("4", for: .normal)
//        button4.setTitleColor(.white, for: .normal)
//        button4.titleLabel?.font = .boldSystemFont(ofSize: 30)
//        button4.backgroundColor = UIColor(red: 58/255, green: 58/255, blue: 58/255, alpha: 1.0)
//        button4.layer.cornerRadius = 40
//
//        button5.setTitle("5", for: .normal)
//        button5.setTitleColor(.white, for: .normal)
//        button5.titleLabel?.font = .boldSystemFont(ofSize: 30)
//        button5.backgroundColor = UIColor(red: 58/255, green: 58/255, blue: 58/255, alpha: 1.0)
//        button5.layer.cornerRadius = 40
//
//        button6.setTitle("6", for: .normal)
//        button6.setTitleColor(.white, for: .normal)
//        button6.titleLabel?.font = .boldSystemFont(ofSize: 30)
//        button6.backgroundColor = UIColor(red: 58/255, green: 58/255, blue: 58/255, alpha: 1.0)
//        button6.layer.cornerRadius = 40
//
//        buttonMinus.setTitle("-", for: .normal)
//        buttonMinus.setTitleColor(.white, for: .normal)
//        buttonMinus.titleLabel?.font = .boldSystemFont(ofSize: 30)
//        buttonMinus.backgroundColor = .orange
//        buttonMinus.layer.cornerRadius = 40
//
//
//        button1.setTitle("1", for: .normal)
//        button1.setTitleColor(.white, for: .normal)
//        button1.titleLabel?.font = .boldSystemFont(ofSize: 30)
//        button1.backgroundColor = UIColor(red: 58/255, green: 58/255, blue: 58/255, alpha: 1.0)
//        button1.layer.cornerRadius = 40
//
//        button2.setTitle("2", for: .normal)
//        button2.setTitleColor(.white, for: .normal)
//        button2.titleLabel?.font = .boldSystemFont(ofSize: 30)
//        button2.backgroundColor = UIColor(red: 58/255, green: 58/255, blue: 58/255, alpha: 1.0)
//        button2.layer.cornerRadius = 40
//
//        button3.setTitle("3", for: .normal)
//        button3.setTitleColor(.white, for: .normal)
//        button3.titleLabel?.font = .boldSystemFont(ofSize: 30)
//        button3.backgroundColor = UIColor(red: 58/255, green: 58/255, blue: 58/255, alpha: 1.0)
//        button3.layer.cornerRadius = 40
//
//        buttonMutiply.setTitle("*", for: .normal)
//        buttonMutiply.setTitleColor(.white, for: .normal)
//        buttonMutiply.titleLabel?.font = .boldSystemFont(ofSize: 30)
//        buttonMutiply.backgroundColor = .orange
//        buttonMutiply.layer.cornerRadius = 40
//
//
//        buttonAc.setTitle("AC", for: .normal)
//        buttonAc.setTitleColor(.white, for: .normal)
//        buttonAc.titleLabel?.font = .boldSystemFont(ofSize: 30)
//        buttonAc.backgroundColor = .orange
//        buttonAc.layer.cornerRadius = 40
//
//        button0.setTitle("0", for: .normal)
//        button0.setTitleColor(.white, for: .normal)
//        button0.titleLabel?.font = .boldSystemFont(ofSize: 30)
//        button0.backgroundColor = UIColor(red: 58/255, green: 58/255, blue: 58/255, alpha: 1.0)
//        button0.layer.cornerRadius = 40
//
//        buttonEqual.setTitle("=", for: .normal)
//        buttonEqual.setTitleColor(.white, for: .normal)
//        buttonEqual.titleLabel?.font = .boldSystemFont(ofSize: 30)
//        buttonEqual.backgroundColor = .orange
//        buttonEqual.layer.cornerRadius = 40
//
//        buttondDivide.setTitle("/", for: .normal)
//        buttondDivide.setTitleColor(.white, for: .normal)
//        buttondDivide.titleLabel?.font = .boldSystemFont(ofSize: 30)
//        buttondDivide.backgroundColor = .orange
//        buttondDivide.layer.cornerRadius = 40
//


//        horizontalStackView1.snp.makeConstraints {
//            $0.height.equalTo(80)
//            $0.top.equalTo(label.snp.bottom).offset(20)
//            $0.leading.equalToSuperview().offset(30)
//            $0.trailing.equalToSuperview().offset(-30)
//        }
//
//        horizontalStackView2.snp.makeConstraints {
//            $0.height.equalTo(80)
//            $0.top.equalTo(horizontalStackView1.snp.bottom).offset(5)
//            $0.leading.equalToSuperview().offset(30)
//            $0.trailing.equalToSuperview().offset(-30)
//        }
//
//        horizontalStackView3.snp.makeConstraints {
//            $0.height.equalTo(80)
//            $0.top.equalTo(horizontalStackView2.snp.bottom).offset(5)
//            $0.leading.equalToSuperview().offset(30)
//            $0.trailing.equalToSuperview().offset(-30)
//        }
//
//        horizontalStackView4.snp.makeConstraints {
//            $0.height.equalTo(80)
//            $0.top.equalTo(horizontalStackView3.snp.bottom).offset(5)
//            $0.leading.equalToSuperview().offset(30)
//            $0.trailing.equalToSuperview().offset(-30)
//        }
//
//        verticalStackview.snp.makeConstraints{
//            $0.width.equalTo(350)
//            $0.top.equalTo(label.snp.bottom).offset(60)
//            $0.centerX.centerY.equalToSuperview()
//        }
//    }
//

import UIKit
import SnapKit

class ViewController: UIViewController {

    // UILabel 선언
    var displayLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // UILabel 설정
        displayLabel = UILabel()
        displayLabel.backgroundColor = .black
        displayLabel.textColor = .white
        displayLabel.text = "0"  // 기본 텍스트 "0"
        displayLabel.textAlignment = .right
        displayLabel.font = .boldSystemFont(ofSize: 60)
        self.view.addSubview(displayLabel)
        
        displayLabel.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(30)
            make.trailing.equalToSuperview().offset(-30)
            make.top.equalToSuperview().offset(200)
            make.height.equalTo(100)
        }
        
        // 버튼 타이틀 설정
        let buttonTitles = [
            ["1", "2", "3", "4"],
            ["5", "6", "7", "8"],
            ["9", "0", "+", "-"],
            ["*", "/", "=", "AC"]
        ]
        
        let operatorButtons: Set<String> = ["+", "-", "*", "/", "=", "AC"]
        
        // Vertical StackView 설정
        let verticalStackView = makeVerticalStackView()
        self.view.addSubview(verticalStackView)
        
        verticalStackView.snp.makeConstraints { make in
            make.width.equalTo(350)
            make.top.equalTo(displayLabel.snp.bottom).offset(60)
            make.centerX.equalToSuperview()
        }
        
        // Horizontal StackView들을 Vertical StackView에 추가
        for row in buttonTitles {
            let buttons = row.map { title -> UIButton in
                let color: UIColor = operatorButtons.contains(title) ? .orange : UIColor(red: 58/255, green: 58/255, blue: 58/255, alpha: 1.0)
                return makeButton(title: title, action: #selector(buttonTapped(_:)), backgroundColor: color)
            }
            let horizontalStackView = makeHorizontalStackView(buttons)
            verticalStackView.addArrangedSubview(horizontalStackView)
            
            // horizontalStackView 높이 설정
            horizontalStackView.snp.makeConstraints { make in
                make.height.equalTo(80)
            }
        }
    }

    // Horizontal StackView 생성 함수
    func makeHorizontalStackView(_ views: [UIView]) -> UIStackView {
        let stackView = UIStackView(arrangedSubviews: views)
        stackView.axis = .horizontal
        stackView.spacing = 10
        stackView.distribution = .fillEqually
        return stackView
    }

    // Vertical StackView 생성 함수
    func makeVerticalStackView() -> UIStackView {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = 10
        stackView.distribution = .fillEqually
        return stackView
    }

    // UIButton 생성 함수
    func makeButton(title: String, action: Selector, backgroundColor: UIColor) -> UIButton {
        let button = UIButton()
        button.setTitle(title, for: .normal)
        button.titleLabel?.font = .boldSystemFont(ofSize: 30)
        button.backgroundColor = backgroundColor
        button.layer.cornerRadius = 40
        button.addTarget(self, action: action, for: .touchUpInside)
        return button
    }

    // UIButton 액션 함수
    @objc func buttonTapped(_ sender: UIButton) {
        guard let title = sender.currentTitle else { return }
        
        // AC 버튼을 눌렀을 때 모든 값을 지우고 "0"으로 초기화
        if title == "AC" {
            displayLabel.text = "0"
            return
        }
        
        // = 버튼을 눌렀을 때 수식을 계산하고 결과를 표시
        if title == "=" {
            if let expression = displayLabel.text, let result = calculate(expression: expression) {
                displayLabel.text = "\(result)"
            }
            return
        }
        
        // 기존 텍스트가 "0"이면 제거
        if displayLabel.text == "0" {
            displayLabel.text = ""
        }
        
        // 새로운 텍스트 설정
        displayLabel.text?.append(title)
        
        // 숫자가 "0"으로 시작하지 않도록 함
        if let text = displayLabel.text, text.hasPrefix("0"), text.count > 1, !text.contains("+") && !text.contains("-") && !text.contains("*") && !text.contains("/") {
            displayLabel.text = String(text.dropFirst())
        }
    }

    // 수식을 계산해주는 메서드
    func calculate(expression: String) -> Int? {
        let expression = NSExpression(format: expression)
        if let result = expression.expressionValue(with: nil, context: nil) as? Int {
            return result
        } else {
            return nil
        }
    }
}
