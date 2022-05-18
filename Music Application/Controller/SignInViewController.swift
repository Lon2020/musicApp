//
//  SignInViewController.swift
//  Music Application
//
//  Created by Lingxi Yuan on 5/18/22.
//

import UIKit
import Parse
class SignInViewController: UIViewController {

    @IBOutlet weak var txtUsernameSignin: UITextField!
    @IBOutlet weak var txtPasswordSignin: UITextField!
    @IBOutlet weak var indicatorLogin: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func signin(_ sender: Any) {
           PFUser.logInWithUsername(inBackground: self.txtUsernameSignin.text!, password: self.txtPasswordSignin.text!) {
                     (user: PFUser?, error: Error?) -> Void in
                     if user != nil {
                       self.displayAlert(withTitle: "Login Successful", message: "Login Successful")
                     } else {
                       self.displayAlert(withTitle: "Error", message: error!.localizedDescription)
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
