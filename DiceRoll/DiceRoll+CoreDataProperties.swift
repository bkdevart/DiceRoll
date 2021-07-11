//
//  DiceRoll+CoreDataProperties.swift
//  DiceRoll
//
//  Created by Brandon Knox on 7/9/21.
//
//

import Foundation
import CoreData


extension DiceRoll {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<DiceRoll> {
        return NSFetchRequest<DiceRoll>(entityName: "DiceRoll")
    }

    @NSManaged public var rollValue: Int16
    
}

extension DiceRoll : Identifiable {

}
