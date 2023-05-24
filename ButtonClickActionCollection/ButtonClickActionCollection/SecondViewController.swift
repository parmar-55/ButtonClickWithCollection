//
//  SecondViewController.swift
//  ButtonClickActionCollection
//
//  Created by Demo 01 on 11/05/23.
//  Copyright © 2023 scs. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var image: UIImageView!
    
    @IBOutlet weak var lbl: UILabel!
    
    var sproduct:ProductList!=nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        image.image = UIImage(named:sproduct.productImage)
        lbl.text = sproduct.productName
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
