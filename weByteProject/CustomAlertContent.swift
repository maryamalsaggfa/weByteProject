//
//  CustomAlertContent.swift
//  weByteProject
//
//  Created by maryam on 26/03/1445 AH.
//

import SwiftUI

struct CustomAlertContent: View {
    var incomeText = 0
    var goalText = 0
     var totalSpending = 0
    //var  spendingTextNew =
     var spendingText = 0
   // var totalSpending: Int
    @State private  var expeness1 = ""
    @State private var expeness = 0
   // var expeness = Int (expeness1)
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
           /* .fullScreenCover(isPresented: $isButtonTapped, content: {
                ContentView (incomeText: Int(incomeText) ?? 0,goalText: Int(goalText) ?? 0,spendingText: Int(spendingText) ?? 0)
            })
            */
            
        }
    }
    private mutating func calculateSavingsGoal() {
        expeness = Int(expeness1) ?? 0
        totalSpending += expeness
        
        //// تم الغاء حالات التحويل لانها استقبلتها رقم
   // guard let income = Int(incomeText),
   // let goal = Int(goalText)
    //let spending = Int(spendingText)
   // else {
   // return
   // }
    //months = 0
    var currentGoal = goalText

    while currentGoal > 0 {
    let saving = incomeText - totalSpending
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
