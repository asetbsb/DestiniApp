//
//  UIButton.swift
//  DestiniApp
//
//  Created by Asset on 10/18/24.
//

import Foundation
import UIKit

extension UIButton {
    func applyDesign() {
        self.backgroundColor = UIColor(rgb: 0x536493)
        self.layer.cornerRadius = 12
        self.translatesAutoresizingMaskIntoConstraints = false
    }
    func titleForNormal(title: String) {
        self.setTitle(title, for: .normal)
    }
}
