//
//  DemoCell.swift
//  FoldingCell
//
//  Created by Alex K. on 25/12/15.
//  Copyright © 2015 Alex K. All rights reserved.
//

import FoldingCell
import UIKit

protocol PlayVideoCellProtocol {
    func playVideoButtonDidSelect()
}


class DemoCell: FoldingCell {

var delegate: PlayVideoCellProtocol!
    @IBOutlet weak var internalName: UILabel!
    @IBOutlet weak var lastTransactionAmount: UILabel!
    @IBOutlet weak var lastTransactionDate: UILabel!
    @IBOutlet weak var friendName: UILabel!
    @IBOutlet var closeNumberLabel: UILabel!
 

    var number: Int = 0 {
        didSet {
       
          
        }
    }
    @IBOutlet weak var favorate: UIButton!
    

    override func awakeFromNib() {
        foregroundView.layer.cornerRadius = 10
        foregroundView.layer.masksToBounds = true
        super.awakeFromNib()
    }

    override func animationDuration(_ itemIndex: NSInteger, type _: FoldingCell.AnimationType) -> TimeInterval {
        let durations = [0.26, 0.2, 0.2]
        return durations[itemIndex]
    }
  
}

// MARK: - Actions ⚡️

extension DemoCell {
    
    @IBAction func deleteFriend(_ sender: Any) {

       self.delegate.playVideoButtonDidSelect()
    }

    
    @IBAction func buttonHandler(_: AnyObject) {


    }

    
    @IBAction func favorate(_ sender: Any) {
        
        if (favorate.currentImage == UIImage(named: "star1")) {
        let image = UIImage(named: "star2")
        favorate.setImage(image, for: .normal)
        } else if (favorate.currentImage == UIImage(named: "star2")){
        let image = UIImage(named: "star1")
        favorate.setImage(image, for: .normal)
        }
    }
}
