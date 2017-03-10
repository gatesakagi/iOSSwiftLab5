//
//  ViewController.swift
//  iOSSwiftLab5
//
//  Created by Gates on 2017/3/10.
//  Copyright © 2017年 Gates. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var switchGood: UISwitch!
    @IBOutlet weak var switchFast: UISwitch!
    @IBOutlet weak var switchCheap: UISwitch!
    @IBOutlet weak var labelGood: UILabel!
    @IBOutlet weak var labelFast: UILabel!
    @IBOutlet weak var labelCheap: UILabel!
    
    @IBAction func resetButtonAction(_ sender: UIButton) {
        resetStatus()
    }
    
    @IBAction func switchAction(_ sender: UISwitch) {
        print("switchGood\(switchGood.isOn), switchFast\(switchFast.isOn), switchCheap\(switchCheap.isOn)")

        switch sender.tag {
        case 0: //switchGood
//重複相同的程式碼
//            if (sender.isOn == true) {
//                labelGood.alpha = 1.0
//                if (switchFast.isOn == true) {
//                    switchCheap.setOn(false, animated: true)
//                    labelCheap.alpha = 0.5
//                } else if (switchCheap.isOn == true) {
//                    switchFast.setOn(false, animated: true)
//                    labelFast.alpha = 0.5
//                }
//            } else {
//                labelGood.alpha = 0.5
//                if (switchFast.isOn == true) {
//                    switchCheap.setOn(true, animated: true)
//                    labelCheap.alpha = 1.0
//                } else if (switchCheap.isOn == true) {
//                    switchFast.setOn(true, animated: true)
//                    labelFast.alpha = 1.0
//                }
//            }
            setupSwitchsStatus(labelSource: labelGood, switchSource: switchGood, labelDesignated1: labelFast, switchDesignated1: switchFast, labelDesignated2: labelCheap, switchDesignated2: switchCheap)
            
        case 1: //switchFast
//重複相同的程式碼
//            if (sender.isOn == true) {
//                labelFast.alpha = 1.0
//                if (switchGood.isOn == true) {
//                    switchCheap.setOn(false, animated: true)
//                    labelCheap.alpha = 0.5
//                } else if (switchCheap.isOn == true) {
//                    switchGood.setOn(false, animated: true)
//                    labelGood.alpha = 0.5
//                }
//            } else {
//                labelFast.alpha = 0.5
//                if (switchGood.isOn == true) {
//                    switchCheap.setOn(true, animated: true)
//                    labelCheap.alpha = 1.0
//                } else if (switchCheap.isOn == true) {
//                    switchGood.setOn(true, animated: true)
//                    labelGood.alpha = 1.0
//                }
//            }
            setupSwitchsStatus(labelSource: labelFast, switchSource: switchFast, labelDesignated1: labelGood, switchDesignated1: switchGood, labelDesignated2: labelCheap, switchDesignated2: switchCheap)
            
        case 2: //switchCheap
//重複相同的程式碼
//            if (sender.isOn == true) {
//                labelCheap.alpha = 1.0
//                if (switchGood.isOn == true) {
//                    switchFast.setOn(false, animated: true)
//                    labelFast.alpha = 0.5
//                } else if (switchFast.isOn == true) {
//                    switchGood.setOn(false, animated: true)
//                    labelGood.alpha = 0.5
//                }
//            } else {
//                labelCheap.alpha = 0.5;
//                if (switchGood.isOn == true) {
//                    switchFast.setOn(true, animated: true)
//                    labelFast.alpha = 1.0
//                } else if (switchFast.isOn == true) {
//                    switchGood.setOn(true, animated: true)
//                    labelGood.alpha = 1.0
//                }
//            }
            setupSwitchsStatus(labelSource: labelCheap, switchSource: switchCheap, labelDesignated1: labelGood, switchDesignated1: switchGood, labelDesignated2: labelFast, switchDesignated2: switchFast)
            
        default:
            break;
        }
    }
    
    func resetStatus() {
        switchGood.setOn(false, animated: false)
        switchFast.setOn(false, animated: false)
        switchCheap.setOn(false, animated: false)
        labelGood.alpha = 0.5;
        labelFast.alpha = 0.5;
        labelCheap.alpha = 0.5;
    }
    
    func setupSwitchsStatus(labelSource: UILabel, switchSource: UISwitch, labelDesignated1: UILabel, switchDesignated1: UISwitch,labelDesignated2: UILabel, switchDesignated2: UISwitch) {
        if (switchSource.isOn == true) {
            labelSource.alpha = 1.0
            if (switchDesignated1.isOn == true) {
                switchDesignated2.setOn(false, animated: true)
                labelDesignated2.alpha = 0.5
            } else if (switchDesignated2.isOn == true) {
                switchDesignated1.setOn(false, animated: true)
                labelDesignated1.alpha = 0.5
            }
        } else {
            labelSource.alpha = 0.5;
            if (switchDesignated1.isOn == true) {
                switchDesignated2.setOn(true, animated: true)
                labelDesignated2.alpha = 1.0
            } else if (switchDesignated2.isOn == true) {
                switchDesignated1.setOn(true, animated: true)
                labelDesignated1.alpha = 1.0
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resetStatus()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

