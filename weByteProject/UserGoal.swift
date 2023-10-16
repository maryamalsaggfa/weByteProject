//
//  UserGoal.swift
//  weByteProject
//
//  Created by maryam on 29/03/1445 AH.
//

import SwiftUI

struct UserGoal: View {
    @Binding var nameText :String
    @State private var goalText = ""
    @State private var isButtonTapped = false
    var body: some View {
                ZStack(alignment: .bottom){
                    
                    /*     VStack{
                     Image(systemName:"chevron.backward").imageScale(.large)
                     .foregroundColor(Color(hex:"#028175"))
                     .padding(.bottom,700)
                     .padding(.trailing,300)
                     } */
                    
                    VStack{
                      //  Text ("\(incomeText)")

                        Image("intro2")
                            .resizable()
                            .aspectRatio(contentMode:.fit)
                            .frame(width: 300,height: 300)
                            .padding(.bottom,350)
                    }
                    
                    
                    VStack{

                        Text(" الهدف")
                            .font(.system(size: 16))
                            .padding(.leading,290).foregroundColor(Color(hex:"#028175"))

            TextField("ادخل قيمة هدفك", text: $goalText)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .frame(width: 330,height:48)
                            .padding(.bottom,250)
                        

                    }
                    
                    /*   VStack{
                     Text("المعلومات المالية")
                     .font(.system(size: 21))
                     .padding(.bottom,700)
                     .padding(.leading,15)
                     .foregroundColor(Color(hex:"#028175"))
                     }  */
                    
                    
                    VStack{
                        Text(" اكتب لي قيمة هدفك عشان اساعدك توصل له")
                            .font(.system(size: 14))
                            .padding(.bottom,620)
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
                             UserSalary(goalText:Double(goalText) ?? 0.0 ,nameText: nameText)
                         })
                    }
                    
                    
                    
                }
                .padding()
    }
}
struct  UserGoal_ViewTests: PreviewProvider {
   
    @State static private var  dummystringName = ""
    

    static var previews: some View {
        UserGoal(nameText:$dummystringName)
    }
}
