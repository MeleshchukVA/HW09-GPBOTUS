//
//  SubViewController.swift
//  HW09-GPB-OTUS-MeleshchukVA
//
//  Created by Владимир Мелещук on 13.10.2022.
//

import UIKit

final class SubViewController: UIViewController {
    
    // MARK: - Properties
    
    var color: UIColor?
    var titleText: String?
    
    // MARK: - Init
    
    init(color: UIColor, titleText: String) {
        super.init(nibName: nil, bundle: nil)
        self.color = color
        self.titleText = titleText
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
    }
}

private extension SubViewController {
    
    // MARK: - Private methods
    
    func setupView() {
        view.backgroundColor = color
        title = titleText
    }
}
