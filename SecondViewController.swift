//
//  SecondViewController.swift
//  ScrollableInterface
//
//  Created by Palliboina on 11/04/24.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var closeBtn: UIButton!
    
    @IBOutlet weak var picture: UIImageView!
    @IBOutlet weak var slider: UISlider!
    
    var rating:Int = 0
    
    @IBAction func discard(_ sender: UIButton) {
        ///presentingViewController?.dismiss(animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        slider.value = Float(rating)
    }
    

    @IBAction func valueChangedSlider(_ sender: UISlider) {
        let value = round(sender.value)
        slider.value = value
        rating = Int(value)
        
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
