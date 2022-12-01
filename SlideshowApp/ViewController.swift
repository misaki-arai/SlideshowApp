//
//  ViewController.swift
//  SlideshowApp
//
//  Created by 新井美咲 on 2022/11/27.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var backButton: UIButton!
    
    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var imageView: UIImageView!
    
    let imageName = ["latte.jpeg", "schnitzel.jpeg", "pavlova.jpeg"]
    var Index = 0
    
    var timer: Timer!
    var timer_sec = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func button(_ sender: Any) {
        if Index == 0 {
            Index = 1
               } else if Index == 1 {
                   Index = 2
               } else if Index == 2 {
                   Index = 0
               }
               let name = imageName[Index]
               imageView.image = UIImage(named: name)
    }
    
    @IBAction func backButton(_ sender: Any) {
        if Index == 0 {
            Index = 2
               } else if Index == 2 {
                   Index = 1
               } else if Index == 1 {
                   Index = 0
               }
               let name = imageName[Index]
               imageView.image = UIImage(named: name)
    }
    
    @IBAction func startButton(_ sender: Any) {
        if timer == nil {
            self.timer = Timer.scheduledTimer(timeInterval: 2.0, target: self, selector: #selector(slideShow(_:)), userInfo: nil, repeats: true)
                startButton.setTitle("STOP", for: .normal)
                button.isEnabled = false
                backButton.isEnabled = false
            
               } else {
               timer.invalidate()
               timer = nil
               startButton.setTitle("START", for: .normal)
               button.isEnabled = true
               backButton.isEnabled = true
               }
    }
    
    @objc func slideShow(_ timer: Timer) {
        if Index == 0 {
            Index = 1
               } else if Index == 1 {
                   Index = 2
               } else if Index == 2 {
                   Index = 0
               }
               let name = imageName[Index]
               imageView.image = UIImage(named: name)
    }

    @IBAction func tapImage(_ sender: Any) {
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
      if segue.identifier == "nextView" {
          let ResultView = segue.destination as! ResultViewController
          ResultView.enlargeIndex = Index
          
          if self.timer != nil {
                  self.timer.invalidate()
                  self.timer = nil
                  startButton.setTitle("START", for: .normal)
                  button.isEnabled = true
                  backButton.isEnabled = true
                  }
      }
    }
        
    @IBAction func unwind(_ segue: UIStoryboardSegue) {
    }
}

