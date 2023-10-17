//
//  CustomAlertContent.swift
//  weByteProject
//
//  Created by maryam on 26/03/1445 AH.
//

import SwiftUI

struct CustomAlertContent: View {
    var incomeText = 0.0
    @State var goalText = 0.0
   
   // @State var totalSpending = 0
    //var  spendingTextNew =
    @State var spendingText = 0.0
    @State var coinPoistion = 450
   // var totalSpending: Int
    @State private  var expeness1 = ""
    @State public var expeness = 0.0
   // var expeness = Int (expeness1)
    @State private var isButtonTapped = false
    @State var stringGoal = ""
    @State var saving = 0.0
    @State var  charctarState = ""
    
    // A function to format a double to a string with a specific number of decimal places
        func formatDouble(_ value: Double, decimalPlaces: Int) -> String {
            return String(format: "%.\(decimalPlaces)f", value)
        }
    var body: some View {
        VStack {
            Text("آلة حساب المصروفات ")
                .foregroundColor(.black)
                .font(.largeTitle)
                .padding()
            TextField("اضف مصروفاتك", text: $expeness1)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            Button(action:{
                calculateSavingsGoal()
                isButtonTapped = true
              
               // calculateSavingsGoal()
            }){
                Text("\(spendingText)")
                   // .padding()
                Text("اضافة")
                    .bold()
                    .foregroundColor(.white)
                    .frame(width: 355 ,height: 48)
                    .background(Color(hex:"02B78B"))
                    .cornerRadius(24)
                    .padding()
                
            }
          /*  Button(action:{
               // calculatespending()
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
                
            }*/
            
           .fullScreenCover(isPresented: $isButtonTapped, content: {
               ContentView (incomeText: incomeText ,goalText: goalText ,spendingText: spendingText, saving: saving,stringGoal: stringGoal, charctarState: charctarState,coinPosition: coinPoistion)
            })
            
            
        }
    }
    private func calculatespending(){
        spendingText = spendingText + expeness
    }
    private func calculateSavingsGoal() {
        expeness = Double(Int(expeness1) ?? 0)
        spendingText = spendingText + expeness
        stringGoal = String(formatDouble(goalText, decimalPlaces: 0))
        saving = incomeText-spendingText
        spendingText = spendingText
        
        if saving >= (Double(incomeText) * (0.20)){
            charctarState = "happy"
            coinPoistion = 150
        }else if saving > (incomeText * 0.10) && saving < (incomeText * 0.20) {
            charctarState = "sad"
           // charctarState = "angry"
            coinPoistion = 300
           
        } else if saving <= (incomeText * 0.10) && saving != 0{
            charctarState = "angry"
            coinPoistion = 450
        }else {
            charctarState = ""
        }
        //// تم الغاء حالات التحويل لانها استقبلتها رقم
   // guard let income = Int(incomeText),
   // let goal = Int(goalText)
    //let spending = Int(spendingText)
   // else {
   // return
   // }
    //months = 0
        
    //var currentGoal = goalText
    /*
    while goalText > 0 {
     saving = incomeText-spendingText
    goalText -=  saving
    //months += 1
    }
      */
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
