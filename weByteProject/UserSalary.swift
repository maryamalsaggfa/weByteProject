//
//  UserSalary.swift
//  weByteProject
//
//  Created by maryam on 29/03/1445 AH.
//

import SwiftUI

struct UserSalary: View {
    @State var goalText = 0
    var nameText :String
    @State var salaryText = ""
    @State private var isButtonTapped = false
    var body: some View {
        ZStack(alignment: .bottom){
            
            VStack{
                Text(" أهلا ، \(nameText) ")
                    .padding(.leading,250)
                    .bold()
                
                Image("salary")
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
                    .font(.system(size: 16))
                    .padding(.bottom,623)
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
                .padding(.bottom,50)
                .fullScreenCover(isPresented: $isButtonTapped, content: {
                    UserEntry(incomeText: Int(salaryText) ?? 0,goalText: goalText)
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
