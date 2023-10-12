//
//  CustomAlertContent.swift
//  weByteProject
//
//  Created by maryam on 26/03/1445 AH.
//

import SwiftUI

struct CustomAlertContent: View {
    var incomeText = 0
    @State var goalText = 0
   // @State var totalSpending = 0
    //var  spendingTextNew =
    @State var spendingText = 0
   // var totalSpending: Int
    @State private  var expeness1 = ""
    @State public var expeness = 0
   // var expeness = Int (expeness1)
    @State private var isButtonTapped = false
    @State var stringGoal = ""
    @State var saving = 0
    var body: some View {
        VStack {
            
            Text("Savings Goal Calculator")
                .font(.largeTitle)
                .padding()
            TextField("enter expeness", text: $expeness1)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            Button(action:{
                calculateSavingsGoal()
                isButtonTapped = true
              
               // calculateSavingsGoal()
            }){
                Text("\(spendingText)")
                Text("save")
                    .bold()
                    .foregroundColor(.white)
                    .frame(width: 355 ,height: 48)
                    .background(Color(hex:"02B78B"))
                    .cornerRadius(24)
                
            }
            Button(action:{
                calculatespending()
                isButtonTapped = true
              
               // calculatespending()
            }){
                Text("\(spendingText)")
                Text("+")
                    .bold()
                    .foregroundColor(.white)
                    .frame(width: 355 ,height: 48)
                    .background(Color(hex:"02B78B"))
                    .cornerRadius(24)
                
            }
            
           .fullScreenCover(isPresented: $isButtonTapped, content: {
                ContentView (incomeText: Int(incomeText) ,goalText: Int(goalText) ,spendingText: spendingText, saving: saving)
            })
            
            
        }
    }
    private func calculatespending(){
        spendingText = spendingText + expeness
    }
    private func calculateSavingsGoal() {
        expeness = Int(expeness1) ?? 0
        spendingText = spendingText + expeness
        stringGoal = String(goalText)
        //// تم الغاء حالات التحويل لانها استقبلتها رقم
   // guard let income = Int(incomeText),
   // let goal = Int(goalText)
    //let spending = Int(spendingText)
   // else {
   // return
   // }
    //months = 0
        
    //var currentGoal = goalText
        
    while goalText > 0 {
     saving = incomeText-spendingText
    goalText -= saving
    //months += 1
    }
        spendingText = spendingText
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
