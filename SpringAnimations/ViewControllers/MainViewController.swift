//
//  MainViewController.swift
//  SpringAnimations
//
//  Created by Dmitrii Galatskii on 14.06.2023.
//

import UIKit
import SpringAnimation

final class MainViewController: UIViewController {
    
    //MARK: - IBOutlets
    @IBOutlet var blackView: SpringView!
    @IBOutlet var descriptionLabel: SpringLabel!
    @IBOutlet var presetLabel: SpringLabel!
    
    @IBOutlet var runButton: UIButton!
    
    //MARK: - Private Properties
    private let generatedAnimations = Animation.getAnimations()
    private var currentIndex = 0
    
    //MARK: - View Life Cycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        view.setGradientBackground()
        
        setAnimationParameters()
        setDescriptionForLabel()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        adjustFontForButton()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setViewParameters()
    }
    
    //MARK: - IBActions
    @IBAction func runButtonTapped(_ sender: UIButton) {
        setAnimationForLabel()
        
        if currentIndex < generatedAnimations.endIndex {
            setAnimationParameters()
            currentIndex += 1
            setDescriptionForLabel()
            setTitleForButton(sender: sender)
        } else {
            currentIndex = 0
            setAnimationParameters()
            currentIndex += 1
            setDescriptionForLabel()
            setTitleForButton(sender: sender)
        }
        
        blackView.animate()
        presetLabel.animate()
        descriptionLabel.animate()
    }
    
    //MARK: - Private Methods
    private func setAnimationParameters() {
        blackView.animation = generatedAnimations[currentIndex].preset
        blackView.curve = generatedAnimations[currentIndex].curve
        blackView.force = generatedAnimations[currentIndex].force
        blackView.duration = generatedAnimations[currentIndex].duration
        blackView.delay = generatedAnimations[currentIndex].delay
    }
    
    private func setDescriptionForLabel() {
        descriptionLabel.text = """
\(blackView.animation)
\(blackView.curve)
\(string(from: blackView.force))
\(string(from: blackView.duration))
\(string(from: blackView.delay))
"""
    }
    
    private func setAnimationForLabel() {
        descriptionLabel.animation = "zoomIn"
        presetLabel.animation = descriptionLabel.animation
    }
    
    private func setTitleForButton(sender: UIButton) {
        if currentIndex < generatedAnimations.endIndex {
            sender.setTitle("Run: \(generatedAnimations[currentIndex].preset)",
                            for: .normal)
        } else {
            sender.setTitle("Run: \(generatedAnimations[0].preset)",
                            for: .normal)
        }
    }
    
    private func string(from number: Double) -> String {
        String(format: "%.2f", number)
    }
}

extension MainViewController {
    private func setViewParameters() {
        blackView.layer.shadowOpacity = 1
        blackView.layer.shadowRadius = 30
        blackView.layer.shadowColor = UIColor.systemIndigo.cgColor
        blackView.layer.cornerRadius = blackView.frame.width / 2
    }
    
    private func adjustFontForButton() {
        runButton.titleLabel?.font = UIFont.systemFont(ofSize: 20,
                                                       weight: .medium)
    }
}
