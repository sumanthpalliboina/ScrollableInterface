//
//  ViewController.swift
//  ScrollableInterface
//
//  Created by Palliboina on 10/04/24.
//

import UIKit

class ViewController: UIViewController {
    
    var ratingFamily:Int = 0
    var ratingTeddy:Int = 0

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
    
    //Important : hold control btn and click on exit icon in SecondViewController 
    //and hold control and drag from plus icon across this action method to UI item (e.g button) and click action what appears
    @IBAction func goBackUsingUnwind(_ sender : UIStoryboardSegue){
        if sender.identifier == "removeFamily" {
            let controller = sender.source as! SecondViewController
            ratingFamily = controller.rating
            print("ratingFamily",ratingFamily)
        }else if sender.identifier == "removeTeddy" {
            let controller = sender.source as! ThirdViewController
            ratingTeddy = controller.rating
            print("ratingTeddy",ratingTeddy)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showFamily" {
            let controller = segue.destination as! SecondViewController
            controller.rating = ratingFamily
        }else if segue.identifier == "showTeddy" {
            let controller = segue.destination as! ThirdViewController
            controller.rating = ratingTeddy
        }
    }


}

