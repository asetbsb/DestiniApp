//
//  ViewController.swift
//  DestiniApp
//
//  Created by Asset on 10/18/24.
//

import UIKit

final class MainVC: UIViewController {
    
    private var storyBrain = StoryBrain()
    
    // MARK: -Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    //MARK: -Helper functions
    
    private func setupUI() {
        view.backgroundColor = UIColor(rgb: 0x88C273)
        addSubviews()
        setupConstraints()
        buttonTargets()
        updateUI()
    }
    
    private func addSubviews() {
        view.addSubview(StoryTitle)
        view.addSubview(firstButton)
        view.addSubview(secondButton)
    }
    
    private func setupConstraints() {
        let height = UIScreen.main.bounds.height
        
        NSLayoutConstraint.activate([
            StoryTitle.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            StoryTitle.topAnchor.constraint(equalTo: view.topAnchor, constant: height * 0.3),
            StoryTitle.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            StoryTitle.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            
            secondButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            secondButton.bottomAnchor.constraint(
                equalTo: view.safeAreaLayoutGuide.bottomAnchor,
                constant: -20
            ),
            secondButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.7),
            secondButton.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.075),
            
            firstButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            firstButton.bottomAnchor.constraint(equalTo: secondButton.topAnchor, constant: -30),
            firstButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.7),
            firstButton.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.075)
        ])
    }
    
    //MARK: -Functionality
    
    private func buttonTargets() {
        firstButton.addTarget(self, action: #selector(buttonPressed(_:)), for: .touchUpInside)
        secondButton.addTarget(self, action: #selector(buttonPressed(_:)), for: .touchUpInside)
    }
    
    @objc private func buttonPressed(_ button: UIButton) {
        storyBrain.nextStory(userChoice: button.currentTitle!)
        updateUI()
    }
    private func updateUI() {
        StoryTitle.text = storyBrain.getStoryTitle()
        firstButton.titleForNormal(title: storyBrain.getChoice1())
        secondButton.titleForNormal(title: storyBrain.getChoice2())
    }

}

