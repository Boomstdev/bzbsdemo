//
//  TablePolicyViewCell.swift
//  bzbsdemo
//
//  Created by BOICOMP21070028 on 25/2/2565 BE.
//

import UIKit

class TablePolicyViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    @IBAction func btnTerm(_ sender: Any) {
        print("conditions")
    }
    @IBAction func btnPolicy(_ sender: Any) {
        print("policy")
    }
    
}
