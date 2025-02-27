//
//  GradeAverageViewModel.swift
//  GradeAverageApp
//
//  Created by Sebastian on 2025-02-27.
//

import Foundation


@Observable

//viewmodel
class GradeAverageViewModel {
    
    // MARK: stored properties
    
    //add a result history (commented out as it is not working with the model yet
    var resultHistory: [GradeAverage] = []
    
    //provided grades (from textfields)
    var providedGrade1: String
    var providedGrade2: String
    var providedGrade3: String
    
    //error message string
    var errorMessage: String = ""
    
    
    //MARK: computed properties
    var gradeAverage: GradeAverage? {
        
        // check if all grades are numbers
        guard let grade1 = Double(providedGrade1) else {
            errorMessage = "Please enter a valid number for grade 1"
            return nil
        }
        
        guard let grade2 = Double(providedGrade2) else {
            errorMessage = "Please enter a valid number for grade 2"
            return nil
        }
        
        guard let grade3 = Double(providedGrade3) else {
            errorMessage = "Please enter a valid number for grade 3"
            return nil
        }
              
        //check if all grades are between 0 and 100
        guard grade1 <= 100, grade1 >= 0 else {
            errorMessage = "Please provide a grade between 0 and 100"
            return nil
        }
        
        guard grade1 <= 100, grade1 >= 0 else {
            errorMessage = "Please provide a grade between 0 and 100"
            return nil
        }
        
        guard grade1 <= 100, grade1 >= 0 else {
            errorMessage = "Please provide a grade between 0 and 100"
            return nil
        }
        
        // return when everything is correct
        errorMessage = ""
        return GradeAverage(grade1: grade1, grade2: grade2, grade3: grade3)
        
    }
    
    
    // MARK: initalizers
    
    init(providedGrade1: String = "", providedGrade2: String = "", providedGrade3: String = "", errorMessage: String = "") {
        self.providedGrade1 = providedGrade1
        self.providedGrade2 = providedGrade2
        self.providedGrade3 = providedGrade3
        self.errorMessage = errorMessage
    }
    
    
    //MARK: functions
    func saveResult() {
        
        //when there is valid input:
        if let gradeAverage = self.gradeAverage {
            
            self.resultHistory.insert(gradeAverage, at: 0)
            
        }
        
    }
}
