//
//  ViewController.swift
//  Contacts
//
//  Created by Admin on 10/9/19.
//  Copyright © 2019 Admin. All rights reserved.
//

import UIKit

var arrContacts:Array<(firstName: String, lastName: String, phoneNumber:Int)> = []
var countContacts:Int = arrContacts.count
class ViewController: UIViewController, UITableViewDataSource {
    @IBOutlet weak var tblView: UITableView!
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return countContacts
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell")
        cell?.textLabel?.text = arrContacts[indexPath.row].firstName + " " + arrContacts[indexPath.row].lastName
        return cell!
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tblView.dataSource = self
        
//        print(countContacts)
//        print(arrContacts)
    }


}

