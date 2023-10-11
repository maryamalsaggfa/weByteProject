//
//  CustomAlertContent.swift
//  weByteProject
//
//  Created by maryam on 26/03/1445 AH.
//

import SwiftUI

struct CustomAlertContent: View {
    var incomeText = ""
    var goalText = ""
    //var  spendingTextNew = ""
    private var spendingText = ""
    private var totalSpending: Int
     var expeness1 = "0"
    
    @State private var expeness: Int
    var expeness = Int (expeness1)
    @State private var isButtonTapped = false
    var body: some View {
        VStack {
            Text("Savings Goal Calculator")
                .font(.largeTitle)
                .padding()
            TextField("enter expeness", text: $expeness1)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            Button(action:{
                isButtonTapped = true
            }){
                Text("save")
                    .bold()
                    .foregroundColor(.white)
                    .frame(width: 355 ,height: 48)
                    .background(Color(hex:"02B78B"))
                    .cornerRadius(24)
                
            }
            .fullScreenCover(isPresented: $isButtonTapped, content: {
                ContentView(incomeText: incomeText,goalText: goalText,spendingText: expeness)
            })
            
        }
    }
    private mutating func calculateSavingsGoal() {
        totalSpending += expeness
    guard let income = Int(incomeText),
    let goal = Int(goalText)
    //let spending = Int(spendingText)
    else {
    return
    }

    //months = 0
    var currentGoal = goal

    while currentGoal > 0 {
    let saving = income - totalSpending
    currentGoal -= saving
    //months += 1
    }

    //goalReached = currentGoal <= 0
    }
    }

    struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
    ContentView()
    }
}

#Preview {
    CustomAlertContent()
}
