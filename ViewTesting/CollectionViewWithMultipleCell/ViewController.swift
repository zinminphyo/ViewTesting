//
//  ViewController.swift
//  ViewTesting
//
//  Created by zin min phyo on 03/10/2020.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.register(UINib(nibName: String(describing: ImageCollectionViewCell.self), bundle: nil), forCellWithReuseIdentifier: String(describing: ImageCollectionViewCell.self))
        
        collectionView.register(UINib(nibName: String(describing: VideoCollectionViewCell.self), bundle: nil), forCellWithReuseIdentifier: String(describing: VideoCollectionViewCell.self))
        
        collectionView.dataSource = self
        collectionView.delegate = self
    }


}
extension ViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 30
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
                
        for row in 0...10 {
            if indexPath.row == row {
                guard let imageCell = collectionView.dequeueReusableCell(withReuseIdentifier: String(describing: ImageCollectionViewCell.self), for: indexPath) as? ImageCollectionViewCell else { return UICollectionViewCell() }
                imageCell.render(image: #imageLiteral(resourceName: "image.png"))
                return imageCell
            }
        }
        guard let videoCell = collectionView.dequeueReusableCell(withReuseIdentifier: String(describing: VideoCollectionViewCell.self), for: indexPath) as? VideoCollectionViewCell else { return UICollectionViewCell() }
        videoCell.render(image: #imageLiteral(resourceName: "video.jpg"))
        return videoCell
       
        
        
    }
    
    
    
}

extension ViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        
        
        for row in 0...10 {
            if indexPath.row == row {
                return CGSize(width: 100, height: 100)
            }
        }
        return CGSize(width: 300, height: 300)
    }
}

