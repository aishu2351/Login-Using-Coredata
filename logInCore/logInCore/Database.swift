//
//  Database.swift
//  logInCore
//
//  Created by Aishu on 28/05/21.
//

import Foundation
import CoreData
import UIKit

class Database {

    static var shareInstance = Database()
    let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext
    
    func save(object: [String:String]){
        let student = NSEntityDescription.insertNewObject(forEntityName: "Student", into: context!) as! Student
        student.usn = object["usn"]
        student.password = object["password"]
        do{
            try context?.save()
        }catch{
            print("data is not saved")
        }
        
    }
    // To get data from DB
    
    func getStudentData() -> [Student] {
        var student = [Student]()
        let featchRequest = NSFetchRequest<NSManagedObject>(entityName: "student")
        do {
            student = try context?.fetch(featchRequest) as! [Student]
            
        }catch{
            print("can not get data")
        }
        return student
    }
}
