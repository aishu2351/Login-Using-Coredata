//
//  Student+CoreDataProperties.swift
//  logInCore
//
//  Created by Aishu on 28/05/21.
//
//

import Foundation
import CoreData


extension Student {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Student> {
        return NSFetchRequest<Student>(entityName: "Student")
    }

    @NSManaged public var password: String?
    @NSManaged public var usn: String?

}

extension Student : Identifiable {

}
