//
//  ProfileViewController.swift
//  madfo3
//
//  Created by Ebtsam alkhuzai on 11/2/1439 AH.
//  Copyright © 1439 Ebtsam alkhuzai. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController , UITableViewDataSource , UITableViewDelegate {
    
 var transactionNames = ["sara","ahmad","ebtsam","afrah"]
 var transactionDate = ["Sunday - 5/5/5555" ,"Monday - 4/4/4444","Monday - 9/9/9999","Monday - 4/4/4444"]
    

    @IBOutlet weak var personalImage: UIImageView!
    @IBOutlet weak var qrButtons: UIButton!
    @IBOutlet weak var cardsButton: UIButton!
    @IBOutlet weak var transactionTableView: UITableView!
    
    
  
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return transactionNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell" , for: indexPath) as! TransactionCell

        cell.transactionName.text = transactionNames[indexPath.row]
        cell.transactionDate.text = transactionDate[indexPath.row]
        
        return cell
    }
    

    
    @IBAction func canecl(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

     //   transactionTableView.layer.cornerRadius = 10
       // transactionTableView.layer.shadowOffset = CGSize(width: -1, height: 1)
        
        //transactionTableView.layer.shadowRadius = 1
        //transactionTableView.layer.shadowOpacity = 0.5
        


    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
