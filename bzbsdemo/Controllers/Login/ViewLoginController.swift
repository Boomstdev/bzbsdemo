//
//  ViewController.swift
//  bzbsdemo
//
//  Created by BOICOMP21070028 on 23/2/2565 BE.
//

import UIKit

class ViewLoginController: UIViewController {
    

    @IBOutlet weak var tableLoginView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableLoginView.delegate = self
        tableLoginView.dataSource = self
    }


}

extension ViewLoginController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "loginCell", for: indexPath) as! TableLoginViewCell
        cell.delegate = self
        return cell
    }
    
}

extension ViewLoginController: UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: self.view.frame.width, height:  self.view.frame.height)
    }
}

extension ViewLoginController: TableLoginViewCellDeleget{
    func onPressedRegister() {
        print("Pressed")
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        let vc = storyBoard.instantiateViewController(withIdentifier: "registerPage") as! ViewRegisterController
//        navigationController?.setNavigationBarHidden(true, animated: true)
        navigationController?.pushViewController(vc , animated: true)
    }
}

