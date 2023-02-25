//
//  MainViewController.swift
//  RGBSlider
//
//  Created by Kirill Kniga on 25.02.2023.
//

import UIKit

protocol SettingsViewControllerDelegate: AnyObject {
    func setNewBackgroundColor(for color: UIColor)
}

final class MainViewController: UIViewController {
    
    var color: UIColor!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let settingsVC = segue.destination as? SettingsViewController else { return }
        settingsVC.color = view.backgroundColor
        settingsVC.delegate = self
    }
    
}

extension MainViewController: SettingsViewControllerDelegate {
    func setNewBackgroundColor(for color: UIColor) {
        view.backgroundColor = color
    }
}
