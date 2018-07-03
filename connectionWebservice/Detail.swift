//
//  Detail.swift
//  connectionWebservice
//
//  Created by Kemin Suenggittawisuthi on 2/7/61.
//  Copyright © พ.ศ. 2561 Kemin Suenggittawisuthi. All rights reserved.
//

import UIKit

class Detail: UIViewController {
    
    
    @IBOutlet weak var projectId: UILabel!
    @IBOutlet weak var totalhours: UILabel!
    @IBOutlet weak var updatedDate: UILabel!
    @IBOutlet weak var createdDate: UILabel!
    @IBOutlet weak var timeOut: UILabel!
    @IBOutlet weak var date: UILabel!
    @IBOutlet weak var userId: UILabel!
    @IBOutlet weak var createdUser: UILabel!
    @IBOutlet weak var task: UILabel!
    @IBOutlet weak var updatedUser: UILabel!
    @IBOutlet weak var id: UILabel!
    @IBOutlet weak var timeIn: UILabel!
    
    
    
    
    var timesheet: Timesheet!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(timesheet)
        projectId.text = timesheet.projectId
        let totalhoursStr = String(timesheet.totalhours)
        totalhours.text = totalhoursStr
        updatedDate.text = timesheet.updatedDate
        createdDate.text = timesheet.createdDate
        timeOut.text = timesheet.timeOut
        timeIn.text = timesheet.timeIn
        date.text = timesheet.date
        let userIdStr = String(timesheet.userId)
        userId.text = userIdStr
        let createdUserStr = String(timesheet.createdUser)
        createdUser.text = createdUserStr
        task.text = timesheet.task
        let updatedUserStr = String(timesheet.updatedUser)
        updatedUser.text = updatedUserStr
        let idStr = String(timesheet.id)
        id.text = idStr
        
    }
    
 
    
    
}
