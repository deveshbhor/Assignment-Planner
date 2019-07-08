//
//  Assigment.swift
//  Assignment Planner
//
//  Created by Devesh Bhor on 7/8/19.
//  Copyright © 2019 iOS. All rights reserved.
//

import UIKit

class Assignment: Codable {

    var name : String
    var subject : String
    var dueDate : String
    var description : String
    
    init(name: String, subject : String, dueDate : String, description: String) {
        
        self.name = name
        self.subject = subject
        self.dueDate = dueDate
        self.description = description
    }
}
