//
//  ViewController.swift
//  Collection
//
//  Created by Ganesh on 27/07/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var collectionView: UICollectionView!


    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.register(CustomCollectionViewCell.self, forCellWithReuseIdentifier: "CustomCollectionViewCell")
        setUpCollectionView()
    }
    
    fileprivate func setUpCollectionView() {
        
        let collectionFlowLayout = UICollectionViewFlowLayout()
        
        collectionFlowLayout.scrollDirection = .horizontal
        collectionFlowLayout.itemSize = CGSize(width: 145, height: 145)
        collectionView.setCollectionViewLayout(collectionFlowLayout, animated: true)
        collectionView.delegate = self
        collectionView.dataSource = self
    }

}


extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource {

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 100
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {

        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CustomCollectionViewCell", for: indexPath)

        if indexPath.row % 2 == 0 {
            cell.contentView.backgroundColor = UIColor.red
        } else {
            cell.contentView.backgroundColor = UIColor.green
        }

        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("index",indexPath.row)
    }
}

