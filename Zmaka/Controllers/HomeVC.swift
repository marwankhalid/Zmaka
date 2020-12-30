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
    
    @IBOutlet var scrollView: UIScrollView!
    var thisWidth:CGFloat = 0
    var previousOffsetState:CGFloat = 0
    @IBOutlet var coverHeightConstraint: NSLayoutConstraint!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setImageRound(buttonName: popular)
        thisWidth = CGFloat(self.view.frame.width)
        scroll()
        
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
    
    func scroll() {
        if scrollView.contentOffset.y > 200 {
            coverHeightConstraint.constant = 0
        }
        let offsetDiff = previousOffsetState - scrollView.contentOffset.y
        print("Current offset = \(scrollView.contentOffset.y)")
        print("Previous offset = \(previousOffsetState)")
        print("Offset difference = \(offsetDiff)")
        previousOffsetState = scrollView.contentOffset.y
        let newHeight = coverHeightConstraint.constant + offsetDiff
        coverHeightConstraint.constant = newHeight
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        if scrollView.contentOffset.y > 200 {
            coverHeightConstraint.constant = 0
        }
        let offsetDiff = previousOffsetState - scrollView.contentOffset.y
        print("Current offset = \(scrollView.contentOffset.y)")
        print("Previous offset = \(previousOffsetState)")
        print("Offset difference = \(offsetDiff)")
        previousOffsetState = scrollView.contentOffset.y
        let newHeight = coverHeightConstraint.constant + offsetDiff
        coverHeightConstraint.constant = newHeight
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
