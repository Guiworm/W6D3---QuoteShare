//
//  CustomTableViewCell.swift
//  W6D3---QuoteShare
//
//  Created by Dylan McCrindle on 2016-12-07.
//  Copyright © 2016 Dylan-McCrindle. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

	@IBOutlet weak var authorLabel: UILabel!
	@IBOutlet weak var quoteLabel: UILabel!
	@IBOutlet weak var quoteImage: UIImageView!
	
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
