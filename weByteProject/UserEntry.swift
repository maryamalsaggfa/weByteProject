//
//  UserEntry.swift
//  weByteProject
//
//  Created by maryam on 30/03/1445 AH.
//

import SwiftUI

struct UserEntry: View {
    @State private var isButtonTapped = false
    var incomeText = 0.0
    @State var goalText = 0.0
    var body: some View {
        ZStack(alignment: .bottom){
        
            VStack{
                Image("lastIntro")
                    .resizable()
                    .aspectRatio(contentMode:.fit)
                    .frame(width: 400,height: 400)
                    .padding(.bottom,200)
            }
        
            VStack{
                Text(" جهزت لك خطتك المالية يلا نشوفها سوا !")
                    .font(.system(size: 16))
                    .padding(.bottom,525)
                    .padding(.leading,10)
                    .foregroundColor(Color(hex:"#028175"))
            }
            VStack{
                Spacer()
                Image("bottomEffect")
                    .resizable()
                    .aspectRatio(contentMode:.fit)
                    .frame(width: 1000)
                    .padding(.trailing,40)
                    .padding(.top,500)
                
            }
            VStack {
                Button("يلا نبدأ", action:{
                    isButtonTapped = true
                })
                
                .font(.system(size: 20))
                .foregroundColor(.white)
                .padding()
                .frame(width: 330 ,height: 48)
                .background(Color(hex:"02B78B"))
                .cornerRadius(24)
                .padding(.bottom,50)
                
                .fullScreenCover(isPresented: $isButtonTapped, content: {
                    ContentView(incomeText: incomeText ,goalText: goalText)
                })
            
            }
            
            
            
        }
        .padding()
    }
}

#Preview {
    UserEntry()
}
