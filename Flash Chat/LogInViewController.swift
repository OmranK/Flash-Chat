//
//  LogInViewController.swift
//  Flash Chat
//
//  This is the view controller where users login


import UIKit
import Firebase
import SVProgressHUD


class LogInViewController: UIViewController {

    //Textfields pre-linked with IBOutlets
    @IBOutlet var emailTextfield: UITextField!
    @IBOutlet var passwordTextfield: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

   
    @IBAction func logInPressed(_ sender: AnyObject) {
        
        SVProgressHUD.show()
        
        //TODO: Log in the user
        
        FIRAuth.auth()?.signIn(withEmail: emailTextfield.text!, password: passwordTextfield.text!, completion: { (user, error) in
            if error != nil {
                SVProgressHUD.dismiss()
                print(error!)
                let alert = UIAlertController(title: "Incorrect Email or Password", message: "Please try again", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: "Default action"), style: .`default`, handler: { _ in
                    NSLog("The \"OK\" alert occured.")
                }))
                self.present(alert, animated: true, completion: nil)
                
            } else {
                print("LogIn Successful")
                SVProgressHUD.dismiss()
                self.performSegue(withIdentifier: "goToChat", sender: self)
            }
        })
        
    }
    


    
}  
