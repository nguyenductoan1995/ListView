//
//  DongTableViewCell.swift
//  Album
//
//  Created by NguyenDucToan on 4/4/18.
//  Copyright © 2018 NguyenDucToan. All rights reserved.
//

import UIKit

class DongTableViewCell: UITableViewCell {

    @IBOutlet weak var imgHinh: UIImageView!
    @IBOutlet weak var txtName: UILabel!
    @IBOutlet weak var myView: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
