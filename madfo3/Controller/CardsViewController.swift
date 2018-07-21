//
//  CardsViewController.swift
//  madfo3
//
//  Created by Anfal Alatawi on 05/11/1439 AH.
//  Copyright © 1439 Ebtsam alkhuzai. All rights reserved.
//

import UIKit
import QuartzCore
class CardsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBAction func cancelButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    var cardsList : [String] = ["Anfal Alatawi", "Sarah Alahmad", "Mohammad Jaber"]
    var cardNumbers :[String] = ["xxxx xxxx xxxx 4568", "xxxx xxxx xxxx 4568","xxxx xxxx xxxx 4568",]
    var cardExp : [String] = ["10/18", "12/20", "01/06"]
    var cardImages : [String] = ["1","2","3"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cardsList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CardTableViewCell
        
        cell.cardHolderName.text = cardsList[indexPath.row]
        cell.cardNumber.text = cardNumbers[indexPath.row]
        cell.cardExpDate.text = cardExp[indexPath.row]
        cell.cardImage.image = UIImage(named: cardImages[indexPath.row] + ".png")
        
        return cell
    }
    
    //resizing table cells:
    override func viewWillAppear(_ animated: Bool) {
        CardsTable.estimatedRowHeight = 100
        CardsTable.rowHeight = UITableViewAutomaticDimension
    }
    

    @IBOutlet weak var CardsTable: UITableView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
