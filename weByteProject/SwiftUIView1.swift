//
//  SwiftUIView1.swift
//  weByteProject
//
//  Created by Amani on 24/03/1445 AH.
//

import SwiftUI

struct ontentView: View {
@State private var incomeText = ""
@State private var goalText = ""
@State private var spendingText = ""
@State private var months = 0
@State private var goalReached = false
@State private var isButtonTapped = false


    var body: some View {
        VStack {
            Text("Savings Goal Calculator")
                .font(.largeTitle)
                .padding()
            
            TextField("Enter your income", text: $incomeText)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            TextField("Enter your goal", text: $goalText)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            TextField("Enter your spending", text: $spendingText)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            
            
            
            
            Button("Calculate") {
                calculateSavingsGoal()
            }
            .padding()
            //.background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(10)
            Button("send", action:{
                isButtonTapped = true
            })
        }
        .padding()
        .background(Color.blue)
        .foregroundColor(.black)
        .cornerRadius(10)
        
        .fullScreenCover(isPresented: $isButtonTapped, content: {
            ContentView(incomeText: incomeText,goalText: goalText,spendingText: spendingText)
        })
    
   
    
if goalReached {
Text("Congratulations! Goal reached in \(months) months.")
.font(.headline)
.padding()
} else {
Text("Goal not reached.")
.font(.headline)
.padding()
}

//.padding()
}

private func calculateSavingsGoal() {
guard let income = Int(incomeText),
let goal = Int(goalText),
let spending = Int(spendingText)
else {
return
}

months = 0
var currentGoal = goal

while currentGoal > 0 {
let saving = income - spending
currentGoal -= saving
months += 1
}

goalReached = currentGoal <= 0
}
}



#Preview {
    ontentView()
}
