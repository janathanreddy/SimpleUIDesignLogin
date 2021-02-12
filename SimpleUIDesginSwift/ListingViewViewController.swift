//
//  ListingViewViewController.swift
//  SimpleUIDesginSwift
//
//  Created by Janarthan Subburaj on 11/02/21.
//

import UIKit

class ListingViewViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {
    

    @IBOutlet weak var PageControl: UIPageControl!
    @IBOutlet weak var collectionView: UICollectionView!
    var count = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        PageControl.numberOfPages = 8
        PageControl.currentPage = 0
        collectionView.delegate = self
        collectionView.dataSource = self
        self.collectionView.isPagingEnabled = true

    }
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
            let pageSide = self.collectionView.frame.width
            let offset = scrollView.contentOffset.x
            count = Int(floor((offset - pageSide / 2) / pageSide) + 1)
            PageControl.currentPage = count
            print("currentPage " + count.description )
        }
    


    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let ListCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "ListCollectionViewCell", for: indexPath) as! ListCollectionViewCell
        ListCollectionViewCell.layer.cornerRadius = 13
        ListCollectionViewCell.layer.masksToBounds = true
        ListCollectionViewCell.Moreinfo.layer.cornerRadius = 8
        ListCollectionViewCell.Moreinfo.layer.masksToBounds = true
        return ListCollectionViewCell

    }
    
   
    

}
