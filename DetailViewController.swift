//
//  DetailViewController.swift
//  MyStory
//
//  Created by Maggie LaFratta on 2/4/23.
//

import UIKit

class DetailViewController: UIViewController {
    
    var kitten: Kitten?
    
    
    @IBOutlet weak var kittenImageView: UIImageView!
    @IBOutlet weak var kittenTitleLabel: UILabel!
    @IBOutlet weak var kittenInfoLabel: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let kitten = kitten {
            // Configure the dinosaur image and dynamic labels
            kittenImageView.image = kitten.image
            kittenTitleLabel.text = kitten.title
            kittenInfoLabel.text = kitten.info

        }
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
