//
//  ViewController1.swift
//  backGroundTest
//
//  Created by Ripon sk on 14/10/23.
//

import UIKit

class ViewController1: UIViewController {
    @IBOutlet weak var cv: UICollectionView!
    var arr = ["f1","f2","f3","f4"]
    override func viewDidLoad() {
        super.viewDidLoad()
        let cvf = UICollectionViewFlowLayout()
        cvf.itemSize = CGSize(width: 200, height: 200)
        cvf.sectionInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        cv.collectionViewLayout = cvf
        // Do any additional setup after loading the view.
    }


}
extension ViewController1:UICollectionViewDelegate,UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arr.count
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as! CollectionViewCell
        cell.img.image = UIImage(named: arr[indexPath.row])
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        UserDefaults.standard.setValue(arr[indexPath.row], forKey: "img")
    }
    
   
}
