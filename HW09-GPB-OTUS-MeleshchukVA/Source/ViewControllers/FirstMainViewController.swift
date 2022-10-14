//
//  FirstMainViewController.swift
//  HW09-GPB-OTUS-MeleshchukVA
//
//  Created by Владимир Мелещук on 10.10.2022.
//

import UIKit

final class FirstMainViewController: UIViewController {
    
    // MARK: - Properties
    
    let firstButton = RoundButton(color: UIColor.systemRed.cgColor, systemName: "1.circle.fill")
    let secondButton = RoundButton(color: UIColor.systemOrange.cgColor, systemName: "2.circle.fill")
    let horizontalStackView = HorizontalStackView(frame: .zero)
    let firstButtonBaseView = BaseView(frame: .zero)
    let secondButtonBaseView = BaseView(frame: .zero)
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupView()
        setupSubviews()
        setupConstraints()
    }
}


private extension FirstMainViewController {
    
    // MARK: - Private methods

    func setupView() {
        view.backgroundColor = UIColor.white
        navigationItem.title = "First Main Screen"
        navigationController?.navigationBar.prefersLargeTitles = true
        
        configureFirstButton()
        configureSecondButton()
    }
    
    func setupSubviews() {
        view.addSubview(horizontalStackView)
        
        horizontalStackView.addArrangedSubview(firstButtonBaseView)
        horizontalStackView.addArrangedSubview(secondButtonBaseView)
        
        firstButtonBaseView.addSubview(firstButton)
        secondButtonBaseView.addSubview(secondButton)
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            horizontalStackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            horizontalStackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            horizontalStackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            horizontalStackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            
            firstButton.centerXAnchor.constraint(equalTo: firstButtonBaseView.centerXAnchor),
            firstButton.centerYAnchor.constraint(equalTo: firstButtonBaseView.centerYAnchor),
            firstButton.widthAnchor.constraint(equalToConstant: 100),
            firstButton.heightAnchor.constraint(equalToConstant: 100),
            
            secondButton.centerXAnchor.constraint(equalTo: secondButtonBaseView.centerXAnchor),
            secondButton.centerYAnchor.constraint(equalTo: secondButtonBaseView.centerYAnchor),
            secondButton.widthAnchor.constraint(equalToConstant: 100),
            secondButton.heightAnchor.constraint(equalToConstant: 100),
        ])
    }
    
    func configureFirstButton() {
        firstButton.addTarget(self, action: #selector(pushFirstSubViewController), for: .touchUpInside)
    }
    
    func configureSecondButton() {
        secondButton.addTarget(self, action: #selector(pushSecondSubViewController), for: .touchUpInside)
    }
    
    // MARK: - Private actions
    
    @objc func pushFirstSubViewController() {
        let firstSubViewController = SubViewController(color: .systemRed, titleText: "First Subscreen")
        navigationController?.pushViewController(firstSubViewController, animated: true)
        print("1️⃣ Push First Subsreeen of First Main Screen")
    }
    
    @objc func pushSecondSubViewController() {
        let secondSubViewController = SubViewController(color: .systemOrange, titleText: "Second Subscreen")
        navigationController?.pushViewController(secondSubViewController, animated: true)
        print("2️⃣ Push Second Subsreeen of First Main Screen")
    }
}
