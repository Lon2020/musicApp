//
//  SignUpViewController.swift
//  Music Application
//
//  Created by Lingxi Yuan on 5/18/22.
//

import UIKit
import Parse

class SignUpViewController: UIViewController {

    @IBOutlet weak var txtUsernameSignup: UITextField!
    @IBOutlet weak var txtPasswordSignup: UITextField!
    @IBOutlet weak var indicatorSignup: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func signup(_ sender: Any) {
        let user = PFUser()
        user.username = self.txtUsernameSignup.text
        user.password = self.txtPasswordSignup.text
        
        //self.indicatorSignup.startAnimating()
        user.signUpInBackground {(succeeded: Bool, error: Error?) -> Void in
        //self.indicatorSignup.stopAnimating()
            if let error = error {
                self.displayAlert(withTitle: "Error", message: error.localizedDescription)
            } else {
                self.displayAlert(withTitle: "Success", message: "Account has been successfully created")
            }
        }
    }
        
    func displayAlert(withTitle title: String, message: String) {
            let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
            let okAction = UIAlertAction(title: "Ok", style: .default)
            alert.addAction(okAction)
            self.present(alert, animated: true)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
