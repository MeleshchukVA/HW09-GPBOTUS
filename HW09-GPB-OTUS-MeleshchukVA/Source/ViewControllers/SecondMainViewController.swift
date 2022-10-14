//
//  SecondMainViewController.swift
//  HW09-GPB-OTUS-MeleshchukVA
//
//  Created by Владимир Мелещук on 10.10.2022.
//

import UIKit

final class SecondMainViewController: UIViewController {
    
    // MARK: - Properties
    
    let thirdButton = RoundButton(color: UIColor.systemYellow.cgColor, systemName: "3.circle.fill")
    let fourthButton = RoundButton(color: UIColor.systemGreen.cgColor, systemName: "4.circle.fill")
    let horizontalStackView = HorizontalStackView(frame: .zero)
    let thirdButtonBaseView = BaseView(frame: .zero)
    let fourthButtonBaseView = BaseView(frame: .zero)

    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
        setupSubviews()
        setupConstraints()
    }
}

// MARK: - Private methods

private extension SecondMainViewController {
    
    func setupView() {
        view.backgroundColor = UIColor.black
        navigationItem.title = "Second Main Screen"
        navigationController?.navigationBar.barStyle = .black
        navigationController?.navigationBar.tintColor = .white
        navigationController?.navigationBar.prefersLargeTitles = true
        
        configureThirdButton()
        configureFourthButton()
    }
    
    func setupSubviews() {
        view.addSubview(horizontalStackView)
        
        horizontalStackView.addArrangedSubview(thirdButtonBaseView)
        horizontalStackView.addArrangedSubview(fourthButtonBaseView)
        
        thirdButtonBaseView.addSubview(thirdButton)
        fourthButtonBaseView.addSubview(fourthButton)
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            horizontalStackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            horizontalStackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            horizontalStackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            horizontalStackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            
            thirdButton.centerXAnchor.constraint(equalTo: thirdButtonBaseView.centerXAnchor),
            thirdButton.centerYAnchor.constraint(equalTo: thirdButtonBaseView.centerYAnchor),
            thirdButton.widthAnchor.constraint(equalToConstant: 100),
            thirdButton.heightAnchor.constraint(equalToConstant: 100),
            
            fourthButton.centerXAnchor.constraint(equalTo: fourthButtonBaseView.centerXAnchor),
            fourthButton.centerYAnchor.constraint(equalTo: fourthButtonBaseView.centerYAnchor),
            fourthButton.widthAnchor.constraint(equalToConstant: 100),
            fourthButton.heightAnchor.constraint(equalToConstant: 100),
        ])
    }
    
    func configureThirdButton() {
        thirdButton.addTarget(self, action: #selector(pushThirdSubViewController), for: .touchUpInside)
    }
    
    func configureFourthButton() {
        fourthButton.addTarget(self, action: #selector(pushFourthSubViewController), for: .touchUpInside)
    }
    
    // MARK: - Private actions
    
    @objc func pushThirdSubViewController() {
        let thirdSubViewController = SubViewController(color: .systemYellow, titleText: "Third Subscreen")
        navigationController?.pushViewController(thirdSubViewController, animated: true)
        print("3️⃣ Push Third Subsreeen of Second Main Screen")
    }
    
    @objc func pushFourthSubViewController() {
        let fourthSubViewController = SubViewController(color: .systemGreen, titleText: "Fourth Subscreen")
        navigationController?.pushViewController(fourthSubViewController, animated: true)
        print("4️⃣ Push Fourth Subsreeen of Second Main Screen")
    }
}
