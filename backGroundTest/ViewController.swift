//
//  ViewController.swift
//  backGroundTest
//
//  Created by Ripon sk on 14/10/23.
//
//test
import UIKit

class ViewController: UIViewController {
    var arr = ["f1","f2","f3","f4"]
    @IBOutlet weak var backView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        checkSelectedImage()
    }
    func checkSelectedImage(){
        let val = UserDefaults.standard.string(forKey: "img") as? String ?? ""
        print(val)
        for i in arr{
            if i == val{
                self.backView.image = UIImage(named: i)
            }
        }
    }

    @IBAction func goSettings(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "ViewController1") as! ViewController1
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
}
/*
 UserDefaults.standard.setValue(arr[indexPath.row], forKey: "\(arr[indexPath.row])")
 */

