//
//  UserName.swift
//  weByteProject
//
//  Created by maryam on 29/03/1445 AH.
//

import SwiftUI

struct UserName: View {
   /* @State private var incomeText = ""
    @State private var nameText = ""
    @State private var goalText = ""
    @State private var spendingText = "" */
    @State private var nameText = ""
    @State private var isButtonTapped = false
    //send name to user goal
    var body: some View {
        //NavigationStack{
        ZStack(alignment: .bottom){
            
       /*     VStack{
                Image(systemName:"chevron.backwpard").imageScale(.large)
                    .foregroundColor(Color(hex:"#028175"))
                    .padding(.bottom,700)
                    .padding(.trailing,300)
            } */
            
            VStack{
                
                Image("intro")
                    .resizable()
                    .aspectRatio(contentMode:.fit)
                    .frame(width: 350,height: 350)
                    .padding(.bottom,315)
            }
      
         
            VStack{
        Text(" اسمك")
                    .font(.system(size: 16))
                    .padding(.leading,290).foregroundColor(Color(hex:"#028175"))
                TextField("ادخل اسمك", text: $nameText)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .frame(width: 330,height:48)
                    .padding(.bottom,250)
            }
            
         /*  VStack{
                Text("المعلومات المالية")
                    .font(.system(size: 21))
                    .padding(.bottom,700)
                    .padding(.leading,15)
                    .foregroundColor(Color(hex:"#028175"))
            }  */
            
            
            VStack{
 Text(" أهلا انا ( رويّل) حاب اتعرف عليك ")
                
                    .font(.system(size: 16))
                    .padding(.bottom,625)
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
            
   // NavigationLink("التالي",destination:ContentView())
 //   NavigationLink(destination: ContentView()) {
                
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
                .fullScreenCover(isPresented: $isButtonTapped) {
                    UserGoal(nameText: $nameText)
                                }
         //   }  //navigation
    // .fullScreenCover(isPresented: $isButtonTapped, content: {
            //ContentView(name:name )
                           // })
        }
      //  .navigationBarTitle("المعلومات المالية")

        
    
}
    .padding()
         //navStack

      //  .navigationBarTitle(Text("Login"))
        
    }
}



#Preview {
    UserName()
}
