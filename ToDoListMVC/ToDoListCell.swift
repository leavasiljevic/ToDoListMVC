//
//  ToDoListCell.swift
//  ToDoListMVC
//
//  Created by Lea Vasiljevic on 2019-10-17.
//  Copyright © 2019 Lea Vasiljevic. All rights reserved.
//

import UIKit

protocol changeButtonImage {
    func changeButtonImage(forIndex: Int)
}

class ToDoListCell: UITableViewCell {

    @IBOutlet weak var checkBoxOutlet: UIButton!
    @IBOutlet weak var taskLabelOutlet: UILabel!
    
    
    @IBAction func checkBoxAction(_ sender: Any) {
        
    }
    
    func setTask(task: Task){
        checkBoxOutlet.isSelected = false
        taskLabelOutlet.text = task.name
    }
    
    var delegate: changeButtonImage?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        checkBoxOutlet.setBackgroundImage(UIImage(named: "checkBoxFILLED"), for: UIControl.State.selected)
        checkBoxOutlet.setBackgroundImage(UIImage(named: "checkBoxOUTLINE"), for: UIControl.State.normal)
    }
    
}
