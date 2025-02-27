//
//  ContentView.swift
//  GradeAverageApp
//
//  Created by Sebastian on 2025-02-27.
//

import SwiftUI

struct ContentView: View {
    
    //MARK: stored properties
    //tracks current state of data within the app
    @State var viewModel = GradeAverageViewModel()
    
    //MARK: computed properties
    var body: some View {
        
        VStack {
            
            //spacing
            Spacer()
            
            
            //Output
            //check if the user returns correct input
            if let  gradeAverage = viewModel.gradeAverage {
                
                VStack(alignment: .center) {
                    
                    //show average grade
                    Text("Your Average Grade is: \(gradeAverage.average.formatted())")
                        .font(.system(size: 100))
                    
                    //show letter grade
                    Text("Your Letter Grade is: \(gradeAverage.letterGrade)")
                        .font(.system(size: 100))
                }
                
            } else {
                
                // Show a message indicating that we are
                // awaiting reasonable input
                ContentUnavailableView(
                    "Unable to evaluate Average",
                    systemImage: "gear.badge.questionmark",
                    description: Text(viewModel.errorMessage)
                )
                .frame(height: 200)
                
            }
            
            // INPUT
            TextField("Grade 1", text: $viewModel.providedGrade1)
                .textFieldStyle(.roundedBorder)
            
            TextField("Grade 2", text: $viewModel.providedGrade2)
                .textFieldStyle(.roundedBorder)
            
            TextField("Grade 3", text: $viewModel.providedGrade3)
                .textFieldStyle(.roundedBorder)
            
            //spacing
            Spacer()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
