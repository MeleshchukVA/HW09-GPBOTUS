//
//  HorizontalStackView.swift
//  HW09-GPB-OTUS-MeleshchukVA
//
//  Created by Владимир Мелещук on 13.10.2022.
//

import UIKit

final class HorizontalStackView: UIStackView {

    // MARK: - Init
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Private methods
    
    private func configure() {
        axis = .horizontal
        spacing = 10
        distribution = .fillEqually
        translatesAutoresizingMaskIntoConstraints = false
    }
}
