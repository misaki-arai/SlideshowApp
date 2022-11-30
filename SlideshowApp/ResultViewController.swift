//
//  ResultViewController.swift
//  SlideshowApp
//
//  Created by 新井美咲 on 2022/11/27.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet weak var enlargeImage: UIImageView!
    
    let imageName = ["latte.jpeg", "schnitzel.jpeg", "pavlova.jpeg"]
    var enlargeIndex = 0

    override func viewDidLoad() {
        super.viewDidLoad()

        let name = imageName[enlargeIndex]
        enlargeImage.image = UIImage(named: name)
        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
