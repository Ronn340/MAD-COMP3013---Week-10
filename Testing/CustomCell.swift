//
//  CustomCell.swift
//  Testing
//
//  Created by ron on 3/10/2025.
//

import UIKit

class CustomCell: UITableViewCell {
    @IBOutlet weak var starImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var logoImageView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
            super.awakeFromNib()
            logoImageView.contentMode = .scaleAspectFit
            starImageView.contentMode = .scaleAspectFit
    }
    
    override func prepareForReuse() {
            super.prepareForReuse()
            logoImageView.image = nil
            starImageView.isHidden = true
            titleLabel.text = nil
        }
    
    func configure(name: String, logoName: String, enrolled: Bool) {
            titleLabel.text = name
            logoImageView.image = UIImage(named: logoName)
            starImageView.image = UIImage(named: "star.png")
            starImageView.isHidden = !enrolled
        }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
