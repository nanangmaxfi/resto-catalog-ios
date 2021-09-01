//
//  RestoTableViewCell.swift
//  SubmissionRestoApp
//
//  Created by Nanang Makfi Mubarok on 17/07/21.
//

import UIKit

class RestoTableViewCell: UITableViewCell {

    @IBOutlet weak var imageResto: UIImageView!
    @IBOutlet weak var nameResto: UILabel!
    @IBOutlet weak var cityResto: UILabel!
    @IBOutlet weak var descResto: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
