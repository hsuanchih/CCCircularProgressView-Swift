//
//  ViewController.swift
//  CCCircularProgressView-Swift
//
//  Created by hsuanchih on 09/17/2019.
//  Copyright (c) 2019 hsuanchih. All rights reserved.
//

import UIKit
import CCCircularProgressView_Swift

class ViewController: UIViewController {
    
    @IBOutlet weak var progressView : CCCircularProgressView! {
        didSet {
            progressView.progress = 0
        }
    }
    @IBOutlet weak var progressLabel : UILabel! {
        didSet {
            progressLabel.text = "\(Int(count))%"
        }
    }
    private var count : CGFloat = 0
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        if #available(iOS 10.0, *) {
            Timer.scheduledTimer(withTimeInterval: 0.25, repeats: true) {
                self.count+=1
                self.progressLabel.text = "\(Int(self.count))%"
                self.progressView.progress = self.count/100
                if self.count == 100 {
                    $0.invalidate()
                }
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

