//
//  ContactsTableViewController.swift
//  MySchedule
//
//  Created by Rita on 08.10.2021.
//

import UIKit

class ContactsTableViewController: UITableViewController {
    
    private let searchController = UISearchController()
    
    private let idContactsCell = "idContactsCell"
 
    override func viewDidLoad() {
        super.viewDidLoad()
        
        searchController.searchBar.placeholder = "Search"
        navigationItem.searchController = searchController
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.backgroundColor = #colorLiteral(red: 0.9490196078, green: 0.9490196078, blue: 0.968627451, alpha: 1)
        tableView.separatorStyle = .singleLine
        tableView.register(ContactsTableViewCell.self, forCellReuseIdentifier: idContactsCell)
        
        title = "Contacts"
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addButtonTapped))
    }
    
    @objc private func addButtonTapped() {
        
        let contactOptions = ContactsOptionsTableViewController()
        navigationController?.pushViewController(contactOptions, animated: true)
        
    }


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      return 5
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: idContactsCell, for: indexPath) as! ContactsTableViewCell
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
   
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
            print("tap OptionsTableView")
        }
    }
