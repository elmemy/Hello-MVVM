//
//  RegisterViewController.swift
//  MVVM Model
//
//  Created by ahmed elmemy on 12/20/19.
//  Copyright © 2019 ElMeMy. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {

    @IBOutlet weak var firsNameTextField : UITextField!
    @IBOutlet weak var lastNameTextField : UITextField!
    @IBOutlet weak var emailTextField : UITextField!
    @IBOutlet weak var passwordTextField : UITextField!
    
    //Call ViewModel
    private var registerViewModel : RegisterViewModel!
    
    var selectedUserViewModel: UserViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.firsNameTextField.text = selectedUserViewModel.firstName
        self.lastNameTextField.text = selectedUserViewModel.lastName
        self.emailTextField.text = selectedUserViewModel.email
        self.passwordTextField.text = selectedUserViewModel.password
        
    }
    


    @IBAction func save()
    {
        self.registerViewModel = RegisterViewModel(firstName: firsNameTextField.text!, lastName: lastNameTextField.text!, password: passwordTextField.text!, email: emailTextField.text!)
        
        
        self.registerViewModel.save()
    }

}
