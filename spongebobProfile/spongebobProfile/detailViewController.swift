//
//  detailViewController.swift
//  spongebobProfile
//
//  Created by Camila Aichele on 1/25/23.
//

import UIKit

class detailViewController: UIViewController {
    var desc: spongebob?

    @IBOutlet weak var imageChoice: UIImageView!
    
    @IBOutlet weak var spongebobDetails: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        if let desc = desc {
               print(desc.title)
            self.title = desc.title
            spongebobDetails.text = desc.details
            imageChoice.image = desc.image
            
        
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
