//
//  ViewController.swift
//  W6D3---QuoteShare
//
//  Created by Dylan McCrindle on 2016-12-07.
//  Copyright © 2016 Dylan-McCrindle. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
	
	@IBOutlet weak var tableView: UITableView!
	
	var quoteArray = [Quote]()
	
	override func viewDidLoad() {
		super.viewDidLoad()
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
	}
	
	func numberOfSections(in tableView: UITableView) -> Int {
		return 1
	}
	
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return quoteArray.count
	}

	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath) as! CustomTableViewCell
	
		let cellQuote = quoteArray[indexPath.row]
		cell.authorLabel.text = cellQuote.author
		cell.quoteLabel.text = cellQuote.quote
		cell.quoteImage.image = cellQuote.image
		return cell
	}
	
	func createNewQuote(author:String, quote:String, image:UIImage){
		
		let newQuote = Quote(author: author, quote: quote, image: image)
		quoteArray += [newQuote]
		
		self.tableView.reloadData()
	}
	
	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		if(segue.identifier == "showBuilder"){
			let vc = segue.destination as! QuoteBuilderViewController
			vc.delegate = self
		}
	}
}



