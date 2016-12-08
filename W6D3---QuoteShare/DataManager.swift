//
//  DataManager.swift
//  W6D3---QuoteShare
//
//  Created by Dylan McCrindle on 2016-12-07.
//  Copyright © 2016 Dylan-McCrindle. All rights reserved.
//

import UIKit
import Alamofire
import AlamofireImage

class DataManager: NSObject {

}

func getQuote(completionBlock: @escaping (String, String)->())  -> (){

	var text = ""
	var author = ""
	
	Alamofire.request("http://api.forismatic.com/api/1.0/?method=getQuote&lang=en&format=json").responseJSON { response in
		
		if let result = response.result.value {
			let JSON = result as! NSDictionary
			text = JSON.object(forKey: "quoteText") as! String
			author = JSON.object(forKey: "quoteAuthor") as! String
			completionBlock(author, text)
		}
		
	}
	
	
}

func getImage(completionBlock: @escaping (UIImage) ->()) -> (){
	
	Alamofire.request("https://unsplash.it/200/300/?random").responseImage { response in
		
		if let image = response.result.value {
			completionBlock(image)
		}
	}
	
	
	//return image
}
