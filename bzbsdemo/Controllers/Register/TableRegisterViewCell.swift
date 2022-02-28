//
//  TableRegisterViewCell.swift
//  bzbsdemo
//
//  Created by BOICOMP21070028 on 25/2/2565 BE.
//

import UIKit

class TableRegisterViewCell: UITableViewCell {

    @IBOutlet weak var btnRegisterView: UIView!
    @IBOutlet weak var btnRegister: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.btnRegisterView.layer.cornerRadius = 10
        self.btnRegister.roundCornersRedius(10)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @IBAction func register(_ sender: Any) {
        print("register")
    }
}
