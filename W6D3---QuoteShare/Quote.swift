//
//  quoteObject.swift
//  W6D3---QuoteShare
//
//  Created by Dylan McCrindle on 2016-12-07.
//  Copyright © 2016 Dylan-McCrindle. All rights reserved.
//

import UIKit

class Quote: NSObject {

	var author: String = ""
	var quote: String = ""
	var image:UIImage?
	
	init(author: String, quote: String, image: UIImage) {
		self.author = author
		self.quote = quote
		self.image = image
	}
	
	



}

