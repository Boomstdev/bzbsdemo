//
//  TableInformationViewCell.swift
//  bzbsdemo
//
//  Created by BOICOMP21070028 on 24/2/2565 BE.
//

import UIKit

class TableInformationViewCell: UITableViewCell {

    @IBOutlet weak var informationView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.informationView.roundCorners([.topLeft], radius: 30)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
