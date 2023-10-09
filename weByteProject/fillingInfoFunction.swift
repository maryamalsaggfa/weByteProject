//
//  fillingInfoFunction.swift
//  weByteProject
//
//  Created by maryam on 24/03/1445 AH.
//

import SwiftUI
// filling info page
// making 3 text inputs (salary+goal)
// it should be int only and displaying error if it is not
//button and clicks action and end it
struct fillingInfoFunction: View {
    @State private var inputSalary: String = ""
    @State private var inputGoal: String = ""
    
    var body: some View {
        VStack{
            Text("enter you goal")
            TextField("Goal", text:$inputGoal)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .frame(width: 330,height:48)
                .padding(.bottom,260)
            Spacer().frame(height:10)
            Text("enter your salary")
            TextField("salary", text:$inputGoal)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .frame(width: 330,height:48)
                .padding(.bottom,260)
            
        }
    }
}

#Preview {
    fillingInfoFunction()
}
