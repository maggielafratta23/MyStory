//
//  ViewController.swift
//  MyStory
//
//  Created by Maggie LaFratta on 2/4/23.
//

import UIKit

class ViewController: UIViewController {
    
    // Create each page using Kitten model
    let kittenLife = Kitten(title: "Kitten Life", image: UIImage(named:"kitten")!, info: "My parents found me at a tow truck company when I was 3 weeks old. I was with 2 other siblings, and they are both now living with other friends. I was only 2.5 lbs, and have not grown too much since! I'm now almost 2 years old, and my birthday will be on May 29th.")
    let sleeping = Kitten(title: "Daily Sleep Schedule", image: UIImage(named:"sleeping")!, info: "Like most cats, I'm generally nocturnal. During the day, I get anywhere from 10-18 hours of sleep. My favorite time to be awake is at 3 A.M., as I can exercise loudly and order a late night snack from my parents.")
    let treats = Kitten(title: "My Favorite Treats", image: UIImage(named:"treats")!, info: "After much trial and error, I have found that the best treats are Tiki Cat's duck flavored mousse (or as I call them, duck toobs). While I only get one weekly, life would be much more fufilling if I had one every day.")
    
    // Array for storing facts about Parsley
        var kitten: [Kitten] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Store kitten models
        kitten = [kittenLife, sleeping, treats]
    }


    @IBAction func didTapKitten(_ sender: UITapGestureRecognizer) {
        if let tappedView = sender.view
        {
            performSegue(withIdentifier: "detailSegue", sender: tappedView);
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        if segue.identifier == "detailSegue",
            let tappedView = sender as? UIView,
            let detailViewController = segue.destination as? DetailViewController {

            if tappedView.tag == 0 {
                detailViewController.kitten = kitten[0]
            } else if tappedView.tag == 1 {
                detailViewController.kitten = kitten[1]
            } else if tappedView.tag == 2 {
                detailViewController.kitten = kitten[2]
            } else {
                print("no button was tapped, please check your selection.")
            }
        }
    }
}

