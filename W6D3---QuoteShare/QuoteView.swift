//
//  QuoteView.swift
//  W6D3---QuoteShare
//
//  Created by Dylan McCrindle on 2016-12-07.
//  Copyright © 2016 Dylan-McCrindle. All rights reserved.
//

import UIKit

class QuoteView: UIView {

	@IBOutlet weak var quoteImage: UIImageView!
	@IBOutlet weak var quoteLabel: UILabel!
	@IBOutlet weak var quoteAuthor: UILabel!
	
	func setupWithQuote(quote:Quote) -> () {
		quoteAuthor.text = quote.author
		quoteLabel.text = quote.quote
		quoteImage.image = quote.image
	}

	class func instanceFromNib() -> QuoteView {
		return UINib(nibName: "QuoteView", bundle: nil).instantiate(withOwner: nil, options: nil)[0] as! QuoteView
	}
}
