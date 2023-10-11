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
    var  spendingTextNew = ""
    @State private var expeness: String = ""
    @State private var isButtonTapped = false
    var body: some View {
        VStack {
            Text("Savings Goal Calculator")
                .font(.largeTitle)
                .padding()
            TextField("enter expeness", text: $expeness)
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
}

#Preview {
    CustomAlertContent()
}
