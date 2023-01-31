//
//  ViewController.swift
//  spongebobProfile
//
//  Created by Camila Aichele on 1/25/23.
//

import UIKit

class ViewController: UIViewController {
    
    let hobbies = spongebob(title: "Spongebob Squarepants", image: UIImage(named: "jellyfish")!, details: "Spongebob loves  to spend most of his free time  in  Jellyfish  fields serching and catching  jellyfish. He usually goes with  his best friend Patrick Star. This is one of his main hobbies but he also loves to do karate. His instructor, Sandy Cheeks, has seen great improvement over the years. Spongebob also has a job at the Krusty Krab and worrks for his boss, Mr. Krabs. The Krusty Krab is a wonderful establishment to go eat at. Customers come in with a hungry appetite and leave the restaurant with a satisfied tummy. Spongebob works here as a fry cook and is known for his outstanding burgers. He has won employee of the month many times and continues to be the best  employee in this restaurant.")
   
    //let employment = spongebob(title: "Spongebob Squarepants", image: UIImage(named: "KrustyKrab")!, details: "The Krusty Krab is a wonderful establishment to go eat at. Customers come in with a hungry appetite and leave the restaurant with a satisfied tummy. Spongebob works here as a fry cook and is known for his outstanding burgers. He has won employee of the month many times and continues to be the best  employee in this restaurant.")
    
    let pets = spongebob(title: "Spongebob Squarepants", image: UIImage(named: "gary")!, details: "Gary is Spongebob's snail. Gary has been a well behaved pet for many years. Spongebob loves Gary very much and loves to take care of him. Gary is a good  snail and loves Spongebob very much aas well.")
    let friends = spongebob(title: "Spongebob Squarepants", image: UIImage(named: "friends")!, details: "Spongebob loves spending time with his friends. When his friends ask for help, Spongebob always comes through for them. He loves to go on adventures with his best friend. Spongebob loves his two neighbors, Squidward Tentacles and Patrick Star. His boss, Eugene Krabs, is very nice an understandble at work.")

    //descriptions
    var desc: [spongebob] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view.
        
        //description models
        desc = [hobbies, pets, friends]
        
    }
        
       // performSegue(withIdentifier: "detailSegue", sender: sender)
    
    @IBAction func didTapButton(_ sender: Any) {
        
        performSegue(withIdentifier: "detailSegue", sender: sender)
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        if segue.identifier == "detailSegue",
            let didTapButton = sender as? UIView,
            let detailViewController = segue.destination as? detailViewController {

            if didTapButton.tag == 0 {
                detailViewController.desc = desc[0]
            } else if didTapButton.tag == 1 {
                detailViewController.desc = desc[1]
            } else if didTapButton.tag == 2 {
                detailViewController.desc = desc[2]
            }
        }
    }

}

