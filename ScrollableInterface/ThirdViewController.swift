//
//  ThirdViewController.swift
//  ScrollableInterface
//
//  Created by Palliboina on 12/04/24.
//

import UIKit

class ThirdViewController: UIViewController {

    @IBOutlet weak var closeBtn: UIButton!
    @IBOutlet weak var slider: UISlider!
    
    @IBOutlet weak var picture: UIImageView!
    
    var rating:Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        slider.value = Float(rating)
    }
    

    @IBAction func discard(_ sender: UIButton) {
    }
    @IBAction func changeValueSlider(_ sender: UISlider) {
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
