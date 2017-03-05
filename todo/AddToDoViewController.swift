//
//  AddToDoViewController.swift
//  todo
//
//  Created by Dharmendra Verma on 05/03/17.
//  Copyright © 2017 Dharmendra Verma. All rights reserved.
//

import UIKit

class AddToDoViewController: UIViewController {

    @IBOutlet weak var addedItem: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(AddToDoViewController.dismissKeyboard))
        view.addGestureRecognizer(tap)

    }

    func dismissKeyboard() {
        view.endEditing(true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func addItem(_ sender: Any) {
        if self.addedItem.text != nil || self.addedItem.text != ""{
            todoItems.append(self.addedItem.text!)
            self.addedItem.text = ""
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
