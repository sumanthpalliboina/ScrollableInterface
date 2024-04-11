//
//  ViewController.swift
//  ScrollableInterface
//
//  Created by Palliboina on 10/04/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var picture: UIImageView!
    
    var previous:CGFloat = 0   ///to store old horizontal position
    
    ///press an hold left touch pad and move finger from right to left and vice versa on image
    @IBAction func fadingOut(_ sender: UIPanGestureRecognizer) {
        let translation = sender.translation(in: picture)
        let delta = translation.x - previous
        print("delta",delta)
        let width = picture.frame.size.width
        print("width",width)
        let alpha = picture.alpha + (delta/width)
        
        
        if alpha>0.1 && alpha<1 {
            print("alpha",alpha)
            picture.alpha = alpha
        }
        if sender.state == .ended{
            previous = 0
        }else{
            previous = translation.x
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

