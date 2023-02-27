//
//  MainViewController.swift
//  RGBSlider
//
//  Created by Kirill Kniga on 25.02.2023.
//

import UIKit

protocol SettingsViewControllerDelegate: AnyObject {
    func setNewBackgroundColor(_ color: UIColor)
}

final class MainViewController: UIViewController {
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let settingsVC = segue.destination as? SettingsViewController else { return }
        settingsVC.delegate = self
        settingsVC.color = view.backgroundColor
    }
}

extension MainViewController: SettingsViewControllerDelegate {
    func setNewBackgroundColor(_ color: UIColor) {
        view.backgroundColor = color
    }
}
