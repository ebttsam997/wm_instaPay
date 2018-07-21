//
//  ScrollViewController.swift
//  madfo3
//
//  Created by Ebtsam alkhuzai on 11/2/1439 AH.
//  Copyright © 1439 Ebtsam alkhuzai. All rights reserved.
//

import UIKit

class ScrollViewController: UIViewController {

    @IBOutlet weak var scroll: UIScrollView!
          let verticalScroll = UIScrollView()
            let scrollViewContainer = UIViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        HorizontalScrollView()

        
    }


    
    func HorizontalScrollView(){
        
        let home = self.storyboard?.instantiateViewController(withIdentifier: "home") as! HomeViewController
        self.addChildViewController(home)
        self.scroll.addSubview(home.view)
        self.didMove(toParentViewController: self)
        
        
        let profile = self.storyboard?.instantiateViewController(withIdentifier: "profile") as! ProfileViewController
        self.addChildViewController(profile)
        self.scroll.addSubview(profile.view)
        self.didMove(toParentViewController: self)
        
        
        var homeFrame : CGRect = home.view.frame
        homeFrame.origin.x =  self.view.frame.width
        home.view.frame = homeFrame
        
        
        let friends = self.storyboard?.instantiateViewController(withIdentifier: "friends") as! MainTableViewController
        self.addChildViewController(friends)
        self.scroll.addSubview(friends.view)
        self.didMove(toParentViewController: self)
        
        var friendsFrame : CGRect = friends.view.frame
        friendsFrame.origin.x =  2 * self.view.frame.width
        friends.view.frame = friendsFrame
        
        self.scroll.contentSize = CGSize(width: (self.view.frame.width) * 3 , height: self.view.frame.height)
        
        self.scroll.contentOffset.x = home.view.frame.origin.x
        
        
        
    }

}