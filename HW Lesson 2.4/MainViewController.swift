//
//  MainViewController.swift
//  HW Lesson 2.4
//
//  Created by Kate Kashko on 11.04.2023.
//

import UIKit

protocol SettingsViewControllerDelegate {
    func passColor(color: UIColor)
}

class MainViewController: UIViewController {
    
    private var bgColor = BgColor(bgColor: UIColor)
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let settingsVC = segue.destination as? SettingsViewController else { return }
        settingsVC.bgColor = bgColor
        
    }
    
    @IBAction func unwind (for segue: UIStoryboardSegue) {
        guard let settingsVC = segue.source as? SettingsViewController else { return }
        settingsVC.bgColor = bgColor
    }
}

extension MainViewController: SettingsViewControllerDelegate {
    func passColor(color: UIColor) {
        self.bgColor = bgColor
    }
    
    
}
