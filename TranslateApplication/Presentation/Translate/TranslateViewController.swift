//
//  TranslateView.swift
//  TranslateApplication
//
//  Created by 이준혁 on 2023/01/06.
//

import UIKit
import SnapKit

final class TranslateViewController: UIViewController {
    
    private var sourceLanguage: Language = .ko
    
    private lazy var sourceLanguageButton: UIButton = {
        let button = UIButton()
        button.setTitle("Korean".localized(), for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 20.0, weight: .bold)
        button.setTitleColor(.label, for: .normal)
        return button
    }()
    
    private lazy var targetLanguageButton: UIButton = {
        let button = UIButton()
        button.setTitle("English".localized(), for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 20.0, weight: .bold)
        button.setTitleColor(.label, for: .normal)
        return button
    }()
    
    private lazy var changeLanguageButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(systemName: "arrow.left.arrow.right"), for: .normal)
        button.tintColor = .label
        return button
    }()
    
    private lazy var buttonStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [
            self.sourceLanguageButton,
            self.changeLanguageButton,
            self.targetLanguageButton
        ])
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        return stackView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Translate".localized()
        
        self.setupLayout()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
    }
}

private extension TranslateViewController {
    func setupLayout() {
        [
            buttonStackView
        ].forEach { view.addSubview($0) }
        
        buttonStackView.snp.makeConstraints {
            $0.top.equalTo(view.safeAreaLayoutGuide).offset(defaultSpacing)
            $0.leading.equalToSuperview().offset(defaultSpacing)
            $0.trailing.equalToSuperview().offset(-defaultSpacing)
            $0.centerX.equalToSuperview()
            
            
            
//            [
//                sourceLanguageButton,
//                targetLanguageButton
//            ].forEach { $0.snp.makeConstraints {
//                let defaultButtonWidth = 50.0
//                let defaultButtonHeight = 34.0
//                $0.width.equalTo(defaultButtonWidth)
//                $0.height.equalTo(defaultButtonHeight)
//                }
//            }
                
            
        }
    }
}
