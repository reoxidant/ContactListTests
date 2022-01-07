//
//  NewContactViewController.swift
//  ContactList
//
//  Created by Виталий Шаповалов on 23.12.2021.
//

import UIKit

class NewContactViewController: UIViewController {
    
    @IBOutlet var nameTextField: UITextField!
    @IBOutlet var surnameTextField: UITextField!
    @IBOutlet var phoneTextField: UITextField!
    
    var contactManager: ContactManager!
    
    @IBAction func saveButtonPressed() {
        let name = nameTextField.text
        let surname = surnameTextField.text
        let phone = phoneTextField.text
        
        let imageData = UIImage(systemName: "person")?.pngData()
        let person = Person(
            name: name ?? "",
            surname: surname ?? "",
            phone: phone ?? "",
            imageData: imageData
        )
        
        contactManager.add(person: person)
        dismiss(animated: true)
    }
    
    @IBAction func cancelButtonPressed() {
        dismiss(animated: true)
    }
}
