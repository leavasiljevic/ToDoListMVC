//
//  Task.swift
//  ToDoListMVC
//
//  Created by Lea Vasiljevic on 2019-10-17.
//  Copyright © 2019 Lea Vasiljevic. All rights reserved.
//

import Foundation

class Task{
    
    var checkBoxChecked: Bool
    var name: String


    init(checkBoxChecked: Bool, name: String){
        self.checkBoxChecked = false
        self.name = name
    }
}
