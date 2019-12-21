//
//  UserTableViewController.swift
//  MVVM Model
//
//  Created by ahmed elmemy on 12/21/19.
//  Copyright © 2019 ElMeMy. All rights reserved.
//
import Foundation
import UIKit

class UsersTableViewController : UITableViewController {
    
    private var usersListViewModel :UsersListViewModel!
    private var dataAccess :DataAccess!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.dataAccess = DataAccess()
        self.usersListViewModel = UsersListViewModel(dataAccess: self.dataAccess)
        
        self.tableView.reloadData()
    }
}

extension UsersTableViewController
{
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.usersListViewModel.userViewModels.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        let userViewModel = self.usersListViewModel.userViewModels[indexPath.row]
        cell.textLabel?.text = "\(userViewModel.firstName!), \(userViewModel.lastName!)" // this prints Optional("John") why Optional??
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = Storyboard.Main.instantiate(RegisterViewController.self)
        let userViewModel = usersListViewModel.userViewModels[indexPath.row]
        vc.selectedUserViewModel = userViewModel
        present(vc,animated: true, completion: nil)
    }
}
