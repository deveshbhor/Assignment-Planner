//
//  DetailViewController.swift
//  Assignment Planner
//
//  Created by Devesh Bhor on 7/8/19.
//  Copyright © 2019 iOS. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var assignmentTextField: UITextField!
    @IBOutlet weak var subjectTextField: UITextField!
    @IBOutlet weak var dueDateTextField: UITextField!
    @IBOutlet weak var descriptionTextField: UITextField!
    
    var detailItem: Assignment? {
        didSet {
            // Update the view.
            configureView()
        }
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        configureView()
    }

  
    
    func configureView() {
        if let assignment = self.detailItem {
            if assignmentTextField != nil {
                assignmentTextField.text = assignment.name
                subjectTextField.text = assignment.subject
                dueDateTextField.text = assignment.dueDate
                descriptionTextField.text = assignment.description
            }
        }
    }
    

    func viewWillDisappear() {
        if let assignment = self.detailItem {
            assignment.name = assignmentTextField.text!
            assignment.subject = subjectTextField.text!
            assignment.dueDate = dueDateTextField.text!
            assignment.description = descriptionTextField.text!
        }
    }
    
    
}

