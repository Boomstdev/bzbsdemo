//
//  ViewRegisterController.swift
//  bzbsdemo
//
//  Created by BOICOMP21070028 on 24/2/2565 BE.
//

import UIKit

class ViewRegisterController: UIViewController {
    
    let listTable = ["logo","information","policy","register","login"]

    @IBOutlet weak var tableRegisterView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.hideKeyboardWhenTappedAround()
        tableRegisterView.dataSource = self
        tableRegisterView.delegate = self
    }

}

extension ViewRegisterController: UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listTable.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let item = listTable[indexPath.row]
        if item == "logo"{
            let cell = tableView.dequeueReusableCell(withIdentifier: "logoCell", for: indexPath) as! TableLogoViewCell
            return cell
        }else if item == "information"{
            let cell = tableView.dequeueReusableCell(withIdentifier: "informationCell", for: indexPath) as! TableInformationViewCell
            return cell
        }else if item == "policy"{
            let cell = tableView.dequeueReusableCell(withIdentifier: "policyCell", for: indexPath) as! TablePolicyViewCell
            return cell
        }else if item == "register"{
            let cell = tableView.dequeueReusableCell(withIdentifier: "registerCell", for: indexPath) as! TableRegisterViewCell
            return cell
        }else if item == "login"{
            let cell = tableView.dequeueReusableCell(withIdentifier: "haveAccountCell", for: indexPath) as! TableHaveAccountViewCell
            return cell
        }else{
            return UITableViewCell()
        }
        return UITableViewCell()
       
    }
    
    
}

