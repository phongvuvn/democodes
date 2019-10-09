//
//  CreatNewContactController.swift
//  Contacts
//
//  Created by Admin on 10/9/19.
//  Copyright © 2019 Admin. All rights reserved.
//

import UIKit

class CreatNewContactController: UIViewController {
    @IBOutlet weak var txtFirstName: UITextField!
    @IBOutlet weak var txtLastName: UITextField!
    @IBOutlet weak var txtPhoneNumber: UITextField!
    @IBAction func txt_FirstName(_ sender: Any) {
    }
    @IBAction func txt_LastName(_ sender: Any) {
    }
    @IBAction func txt_PhoneNumber(_ sender: Any) {
    }
    @IBAction func btn_OK(_ sender: Any) {
        
        // Kiểm tra người dùng đã điền đầy đủ thông tin chưa?
        if (txtFirstName.text! > "") && (txtLastName.text! > "") && (txtPhoneNumber.text! > "") {
            
            // Thêm vào mảng danh bạ một phần tử mới
            arrContacts.append((txtFirstName.text!, txtLastName.text!, Int(txtPhoneNumber.text!)!))
            countContacts = arrContacts.count
            
            // Chuyển sang màn hình hiển thị list danh bạ
            performSegue(withIdentifier: "finishCreatingNewContact", sender: Any?.self)
        }else{
            
            // Cảnh báo người dùng cần điền thêm thông tin
            if txtFirstName.text! == "" {
                txtFirstName.layer.borderColor = UIColor.red.cgColor
            }else{
                txtFirstName.layer.borderColor = UIColor.clear.cgColor
            }
            if txtLastName.text! == "" {
                txtLastName.layer.borderColor = UIColor.red.cgColor
            }else{
                txtLastName.layer.borderColor = UIColor.clear.cgColor
            }
            if txtPhoneNumber.text! == "" {
                txtPhoneNumber.layer.borderColor = UIColor.red.cgColor
            }else{
                txtPhoneNumber.layer.borderColor = UIColor.clear.cgColor
            }
        }
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Chọn loại bàn phím và custom UITextField
        txtFirstName.keyboardType = UIKeyboardType.namePhonePad
        txtLastName.keyboardType = UIKeyboardType.namePhonePad
        txtPhoneNumber.keyboardType = UIKeyboardType.phonePad
        
        txtFirstName.layer.cornerRadius = 5
        txtLastName.layer.cornerRadius = 5
        txtPhoneNumber.layer.cornerRadius = 5

        txtFirstName.layer.borderWidth = 1
        txtLastName.layer.borderWidth = 1
        txtPhoneNumber.layer.borderWidth = 1

        txtFirstName.layer.borderColor = UIColor.clear.cgColor
        txtLastName.layer.borderColor = UIColor.clear.cgColor
        txtPhoneNumber.layer.borderColor = UIColor.clear.cgColor

        txtFirstName.clipsToBounds = true
        txtLastName.clipsToBounds = true
        txtPhoneNumber.clipsToBounds = true
    }
    
}
