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

	
	weak var delegate: HomeViewController!
	
    override func viewDidLoad() {
        super.viewDidLoad()
		changeQuote(nil)
		changeImage(nil)
		

	}


	
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
	
	@IBAction func save(_ sender: UIButton) {
		self.delegate.createNewQuote(author: authorLabel.text!, quote: quoteLabel.text!, image: quoteImage.image!)
	}
	
	@IBAction func changeImage(_ sender: UIButton?) {
		getImage(){(image: UIImage) in
			DispatchQueue.main.async {
				self.quoteImage.image = image
			}
		}
		
//		quoteImage.af_setImage(
//			withURL: url,
//			placeholderImage: placeholderImage,
//			filter: filter
//		)
	}

	@IBAction func changeQuote(_ sender: UIButton?) {
		getQuote(){(author: String, quote: String) in
			DispatchQueue.main.async {
				if author != ""{
					self.authorLabel.text = author
				}
				else{
					self.authorLabel.text = "Unknown"
				}
				self.quoteLabel.text = quote
			}
		}
	}
}
