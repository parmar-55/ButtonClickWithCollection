//
//  ViewController.swift
//  ButtonClickActionCollection
//
//  Created by Demo 01 on 11/05/23.
//  Copyright © 2023 scs. All rights reserved.
//

import UIKit

struct  ProductList {
    let productImage:String
    let productName:String
}


class ViewController: UIViewController {

    @IBOutlet weak var myCollectionView: UICollectionView!
    
   
    var itemList = [ProductList]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
      //   itemList = [ProductList(productImage: <#T##String#>, productName: <#T##String#>)]
        
        itemList.append(ProductList(productImage: "burger", productName: "Burger"))
        itemList.append((ProductList(productImage: "chinse food", productName: "ChinseFood")))
        itemList.append((ProductList(productImage: "pasta", productName: "Pasta")))
         itemList.append((ProductList(productImage: "sandwitch", productName: "SandWitch")))
        
        itemList.append((ProductList(productImage: "thaiPizza", productName: "ThaiPizza")))
        
        itemList.append((ProductList(productImage: "paneer tikka", productName: "PaneerTikka")))
        
    }


}


extension ViewController: UICollectionViewDataSource,UICollectionViewDelegate
{
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 5
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return itemList.count
    }
    
   
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let cell = myCollectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! myCell
        cell.img.image = UIImage(named: itemList[indexPath.row].productImage)
        cell.lbl.text = itemList[indexPath.row].productName
        cell.img.layer.cornerRadius = 70
        cell.btn.tag = indexPath.row
        cell.btn.addTarget(self, action: #selector(viewdetail), for: .touchUpInside)
        
        return cell
    }
    @objc func viewdetail(sender:UIButton)
    {
        let indexpath1 = IndexPath(row:sender.tag, section:0)
        let home = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        home.sproduct = itemList[indexpath1.row]
        self.navigationController?.pushViewController(home, animated: true)
    }
    
}
