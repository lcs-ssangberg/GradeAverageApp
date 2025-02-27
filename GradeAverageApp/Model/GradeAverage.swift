//
//  GradeAverage.swift
//  GradeAverageApp
//
//  Created by Sebastian on 2025-02-27.
//

import Foundation


//model

struct GradeAverage: Identifiable {
    
    // MARK: stored properties
    
    let id = UUID()
    
    let grade1: Double
    let grade2: Double
    let grade3: Double
    
    //MARK: computed properties
    var average: Double {
        return (grade1 + grade2 + grade3) / 3
    }
    
    var letterGrade: String {
        if average >= 90 {
            return "A"
        } else if average >= 80 {
            return "B"
        } else if average >= 70 {
            return "C"
        } else if average >= 60 {
            return "D"
        } else {
            return "Fail"
        }
            
    }
    
    
}
