//
//  AddController.swift
//  ToDoListMVC
//
//  Created by Lea Vasiljevic on 2019-10-18.
//  Copyright © 2019 Lea Vasiljevic. All rights reserved.
//

import UIKit

protocol AddTask{
    func addTask(name: String)
}

class AddController: UIViewController {
    
    
    
    @IBAction func addAction(_ sender: Any) {
        if TaskNameOutlet.text != ""{
            delegate?.addTask(name: TaskNameOutlet.text!)
            navigationController?.popViewController(animated: true)
        }
    }
    
    @IBOutlet weak var TaskNameOutlet: UITextField!
    
    var delegate: AddTask?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
}
    
    


     
   
