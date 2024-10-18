//
//  UIElements.swift
//  DestiniApp
//
//  Created by Asset on 10/18/24.
//

import Foundation
import UIKit

var StoryTitle: UILabel = {
    let label = UILabel()
    label.numberOfLines = 0
    label.textAlignment = .center
    label.textColor = UIColor(rgb: 0xFFF1DB)
    label.font = .systemFont(ofSize: 20, weight: .bold)

    label.translatesAutoresizingMaskIntoConstraints = false
    return label
}()

var firstButton: UIButton = {
    let button = UIButton()
    button.applyDesign()
    return button
}()

var secondButton: UIButton = {
    let button = UIButton()
    button.applyDesign()
    return button
}()
