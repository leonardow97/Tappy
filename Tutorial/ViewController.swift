//
//  ViewController.swift
//  Tutorial
//
//  Created by Leonardo Walcher on 31/03/2016.
//  Copyright © 2016 Leonardo Walcher. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Properties
    var maxTaps = 0
    var currentTaps = 0
    
    //Outlets
    @IBOutlet weak var logoImg: UIImageView!
    @IBOutlet weak var howManyTapsTxt: UITextField!
    @IBOutlet weak var playBtn: UIButton!
    
    @IBOutlet weak var tapBtn: UIButton!
    @IBOutlet weak var tapsLbl: UILabel!
    
    @IBAction func onCoinTapped(sender: UIButton!) {
        currentTaps += 1
        updateTapsLable()
        
        if isgameOver() {
            restartGame()
        }
        
    }
    
    @IBAction func onPlayBtnPressed(sender: UIButton!) {
        
        if howManyTapsTxt.text != nil && howManyTapsTxt.text != "" {
            
            maxTaps = Int(howManyTapsTxt.text!)!
            currentTaps = 0
            
            logoImg.hidden = true
            playBtn.hidden = true
            howManyTapsTxt.hidden = true
            
            tapBtn.hidden = false
            tapsLbl.hidden = false
            
            updateTapsLable()
        }
    }
    
    func restartGame() {
        maxTaps = 0
        howManyTapsTxt.text = ""
        
        logoImg.hidden = false
        playBtn.hidden = false
        howManyTapsTxt.hidden = false
        
        tapBtn.hidden = true
        tapsLbl.hidden = true
        
    }
    
    func isgameOver() -> Bool {
        if currentTaps == maxTaps {
            return true
            
        } else {
            return false
            
        }
    }
    
    func updateTapsLable() {
        tapsLbl.text = "\(currentTaps) Taps"
    }
}

