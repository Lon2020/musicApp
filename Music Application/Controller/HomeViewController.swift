//
//  ViewController.swift
//  Music Application
//
//  Created by วิศวปกรณ์ on 11/5/2565 BE.
//

import UIKit
import Parse
class HomeViewController : UIViewController {
    
    @IBOutlet weak var playListButton: UIButton!
    
    @IBOutlet weak var signOutButton: UIButton!
    
    //Button text italic, size and underline
    let buttonStyle: [NSAttributedString.Key: Any] = [
        .font: UIFont.italicSystemFont(ofSize: 25),
        .underlineStyle: NSUnderlineStyle.single.rawValue
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.barStyle = UIBarStyle.black
        self.navigationController?.navigationBar.tintColor = UIColor.white
        let attributeString = NSMutableAttributedString(
            string: "Sign out",
            attributes: buttonStyle
        )
        //Apply button style to playListButton
        playListButton.setAttributedTitle(attributeString, for: .normal)
        
    }
    
    
    @IBAction func signOut(_ sender: Any) {
        PFUser.logOut()
    }
}

