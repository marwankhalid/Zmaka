//
//  HomeVC.swift
//  Zmaka
//
//  Created by Marwan Khalid on 12/30/20.
//

import UIKit

struct Cell {
    var title:String?
    var subTitle:String?
}


class HomeVC:UIViewController{
    
    var data = [Cell(title: "5 Marla", subTitle: "Houses"),Cell(title: "5 Marla", subTitle: "Houses"),
                Cell(title: "5 Marla", subTitle: "Houses"),Cell(title: "5 Marla", subTitle: "Houses"),Cell(title: "5 Marla", subTitle: "Houses"),Cell(title: "5 Marla", subTitle: "Houses"),Cell(title: "5 Marla", subTitle: "Houses")]
    @IBOutlet var collectView: UICollectionView!
    @IBOutlet var pageControl: UIPageControl!
    @IBOutlet var popular: UIButton!
    @IBOutlet var areaSizes: UIButton!
    @IBOutlet var locations: UIButton!
    @IBOutlet var types: UIButton!
    var thisWidth:CGFloat = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setImageRound(buttonName: popular)
        thisWidth = CGFloat(self.view.frame.width)
        
    }

    func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
        self.pageControl.currentPage = indexPath.section
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        thisWidth = CGFloat(self.view.frame.width)
        return CGSize(width: thisWidth, height: self.view.frame.height)
    }
    
   
    
    private func setImageRound(buttonName:UIButton){
        buttonName.layer.borderWidth = 1.0
        buttonName.layer.masksToBounds = false
        buttonName.backgroundColor = #colorLiteral(red: 0, green: 0.4784313725, blue: 1, alpha: 0.09581014555)
        buttonName.layer.cornerRadius = buttonName.frame.size.height/2
        buttonName.clipsToBounds = true
    }
}
extension HomeVC:UICollectionViewDataSource,UICollectionViewDelegate{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "HomeCollectionView", for: indexPath) as! HomeCollectionView
        
        cell.marla.text = data[indexPath.row].title
        cell.marlaTitle.text = data[indexPath.row].subTitle
        
        return cell
        
    }
}
