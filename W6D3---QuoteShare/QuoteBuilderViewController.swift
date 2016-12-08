//
//  QuoteBuilderViewController.swift
//  W6D3---QuoteShare
//
//  Created by Dylan McCrindle on 2016-12-07.
//  Copyright © 2016 Dylan-McCrindle. All rights reserved.
//

import UIKit
import AlamofireImage

class QuoteBuilderViewController: UIViewController {

	var quote: Quote?
	var myQuoteView:QuoteView!
	weak var delegate: HomeViewController!
	
	
    override func viewDidLoad() {
        super.viewDidLoad()
		myQuoteView = QuoteView.instanceFromNib()
		
		view.insertSubview(myQuoteView, at: 0)
		myQuoteView.frame = view.bounds
		
		changeQuote(nil)
		changeImage(nil)
	}
	
	@IBAction func save(_ sender: UIButton) {
		
		self.delegate.createNewQuote(author: myQuoteView!.quoteAuthor.text!, quote: myQuoteView!.quoteLabel.text!, image: myQuoteView!.quoteImage.image!)
	}
	
	@IBAction func changeImage(_ sender: UIButton?) {
		getImage(){(image: UIImage) in
			DispatchQueue.main.async {
				self.myQuoteView!.quoteImage.image = image
			}
		}
	}

	@IBAction func changeQuote(_ sender: UIButton?) {
		getQuote(){(author: String, quote: String) in
			DispatchQueue.main.async {
				if author != ""{
					self.myQuoteView!.quoteAuthor.text = author
				}
				else{
					self.myQuoteView!.quoteAuthor.text = "Unknown"
				}
				self.myQuoteView!.quoteLabel.text = quote
			}
		}
	}
	
	
}
