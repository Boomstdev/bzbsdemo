//
//  TableLoginViewCell.swift
//  bzbsdemo
//
//  Created by BOICOMP21070028 on 23/2/2565 BE.
//

import UIKit

protocol TableLoginViewCellDeleget{
    func onPressedRegister()
}

class TableLoginViewCell: UITableViewCell {
    var delegate: TableLoginViewCellDeleget?

    @IBOutlet weak var loginView: UIView!
    @IBOutlet weak var btnLogin: UIButton!
    @IBOutlet weak var btnLoginWithFacebook: UIButton!
    @IBOutlet weak var btnLoginWithAppleId: UIButton!
    @IBOutlet weak var btnLoginView: UIView!
    @IBOutlet weak var btnLoginWithFacebookView: UIView!
    @IBOutlet weak var btnLoginWithAppleIdView: UIView!
 
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.loginView.roundCorners([.topLeft], radius: 30)
        self.btnLoginView.layer.cornerRadius = 10
        self.btnLogin.roundCornersRedius(10)
        self.btnLoginWithFacebookView.layer.cornerRadius = 10
        self.btnLoginWithFacebook.roundCornersRedius(10)
        self.btnLoginWithAppleIdView.layer.cornerRadius = 10
        self.btnLoginWithAppleId.roundCornersRedius(10)
    }
    
    @IBAction func btnRegister(_ sender: Any) {
       
        if let delegate = self.delegate {
            delegate.onPressedRegister()
        }
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
