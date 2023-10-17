//
//  UserSalary.swift
//  weByteProject
//
//  Created by maryam on 29/03/1445 AH.
//

import SwiftUI

struct UserSalary: View {
    @State var goalText = 0.0
    @State var nameText :String
    @State var salaryText = ""
    @State private var isButtonTapped = false
    @State private var isBackTapped = false
    var body: some View {
        ZStack(alignment: .bottom){
            VStack {
                Button(action: {
                    // Use this to dismiss the current view and go back to the previous page
                   // presentationMode.wrappedValue.dismiss()
                    isBackTapped=true
                    
                   
            
                }) {
                    Image(systemName: "arrow.left.circle")
                        .font(.system(size: 25))
                        .foregroundColor(Color(hex:"02B78B"))
                         Text("السابق")
                        .foregroundColor(Color(hex:"02B78B"))
                        .font(.system(size: 18))
                        .fullScreenCover(isPresented: $isBackTapped, content: {
                            UserGoal(nameText: nameText)
                        })
                    
                }
                .padding(.top, 15)
                .padding(.trailing,250)
            }
            
            VStack{
                
                
               
                
                Image("lastIntro")
                    .resizable()
                    .aspectRatio(contentMode:.fit)
                    .frame(width: 300,height: 300)
                    .padding(.bottom,350)
            }
            VStack{
                
                Text(" دخلك الشهري ")
                
                    .font(.system(size: 16))
                    .padding(.leading,250).foregroundColor(Color(hex:"#028175"))
                TextField("ادخل قيمة دخلك الشهري", text: $salaryText)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .frame(width: 330,height:48)
                    .padding(.bottom,250)
            }
            
            
            VStack{
                Text("اكتب لي دخلك الشهري تحت")
                    .font(.system(size: 15))
                    .padding(.bottom,610)
                    .bold()
                    .padding(.leading,10)
                    .foregroundColor(Color(hex:"#028175"))
            }
            VStack{
                Spacer()
                
                
            }
            VStack {
                
                
                Button("التالي", action:{
                    isButtonTapped = true
                })
                
                .font(.system(size: 20))
                .foregroundColor(.white)
                .padding()
                .frame(width: 330 ,height: 48)
                .background(Color(hex:"02B78B"))
                .cornerRadius(24)
                .padding(.bottom,80)
                .fullScreenCover(isPresented: $isButtonTapped, content: {
                    UserEntry(incomeText: Double(salaryText) ?? 0.0,goalText: goalText)
                })
            

            
                
            }
            .padding()
            
        }
    }
  
   
}
struct  UserSalary_ViewTests: PreviewProvider {
   
    @State static private var  dummystringName = ""
    
    

    static var previews: some View {
        UserSalary(nameText:dummystringName)
    }
}
