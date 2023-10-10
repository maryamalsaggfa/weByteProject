//
//  budgetCradView.swift
//  weByteProject
//
//  Created by maryam on 23/03/1445 AH.
//

import SwiftUI
struct budgetCradView: View {
    
    
    @State var  charctarState = ""
    //////
    //////
   
    var body: some View {
        ZStack(alignment:.top){
            
            
            if charctarState == ""{
                Rectangle()
                    .foregroundColor(Color(hex:"FBF7AB"))
                    .frame(width: 331,height: 198).shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                Rectangle()
                    .frame(width:161,height:198)
                    .foregroundColor(Color(hex:"F1E2A3"))
                    .padding(.leading,170)
                Image("mainCharctar")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                    .padding(.top,50)
                VStack{
                     Text("مصروفاتك")
                         .font(.system(size: 15))
                     VStack{
                         Spacer().frame(height: 20)
                         Text("صفر 💰").bold()
                             .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                             .font(.system(size: 15))
                         Spacer().frame(height: 20)
                         //Image("")
                     }
                     Text("الميزانيه الشهرية")
                         .font(.system(size: 13))
                     Spacer().frame(height: 20)
                     Text("٤٠٠٠ ريال ")
                         .font(.system(size: 12))
                 }
                 .padding(.leading,190)
                 .padding(.top,30)
                 Spacer()
            }
            
            
            else if charctarState == "happy"{
                Rectangle()
                    .foregroundColor(.white)
                    .frame(width: 331,height: 198).shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                Rectangle()
                    .frame(width:161,height:198)
                    .foregroundColor(Color(hex:"02B78B"))
                    .padding(.leading,170)
                Image("happy")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                    .padding(.top,50)
                VStack{
                    Text("مصروفاتك")
                        .foregroundColor(.white)
                        .font(.system(size: 15))
                    VStack{
                        Spacer().frame(height: 20)
                        Text("صفر 💰").bold()
                            .foregroundColor(.white)
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                            .font(.system(size: 15))
                        Spacer().frame(height: 20)
                        //Image("")
                    }
                    Text("الميزانيه الشهرية")
                        .foregroundColor(.white)
                        .font(.system(size: 13))
                    Spacer().frame(height: 20)
                    Text("٤٠٠٠ ريال ")
                        .foregroundColor(.white)
                        .font(.system(size: 12))
                }
                .padding(.leading,190)
                .padding(.top,30)
                Spacer()
                
                
            }
            
            else if charctarState == "sad"{
                Rectangle()
                    .frame(width: 331,height: 198).shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.white)
                Rectangle()
                    .frame(width:161,height:198)
                    .foregroundColor(Color(hex:"FFFF00"))
                    .padding(.leading,170)
                Image("sad")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                    .padding(.top,50)
                VStack{
                    Text("مصروفاتك")
                        
                        .font(.system(size: 15))
                    VStack{
                        Spacer().frame(height: 20)
                        Text("صفر 💰").bold()
                            
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                            .font(.system(size: 15))
                        Spacer().frame(height: 20)
                        //Image("")
                    }
                    Text("الميزانيه الشهرية")
                        
                        .font(.system(size: 13))
                    Spacer().frame(height: 20)
                    Text("٤٠٠٠ ريال ")
                        
                        .font(.system(size: 12))
                }
                .padding(.leading,190)
                .padding(.top,30)
                Spacer()
                
            }
            else if charctarState == "angry"{
                Rectangle()
                    .foregroundColor(.white)
                    .frame(width: 331,height: 198).shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                Rectangle()
                    .frame(width:161,height:198)
                    .foregroundColor(Color(hex:"FD3E3E"))
                    .padding(.leading,170)
                Image("angry")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                    .padding(.top,50)
                VStack{
                    Text("مصروفاتك")
                        .foregroundColor(.white)
                        .font(.system(size: 15))
                    VStack{
                        Spacer().frame(height: 20)
                        Text("صفر 💰").bold()
                            .foregroundColor(.white)
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                            .font(.system(size: 15))
                        Spacer().frame(height: 20)
                        //Image("")
                    }
                    Text("الميزانيه الشهرية")
                        .foregroundColor(.white)
                        .font(.system(size: 13))
                    Spacer().frame(height: 20)
                    Text("٤٠٠٠ ريال ")
                        .foregroundColor(.white)
                        .font(.system(size: 12))
                }
                .padding(.leading,190)
                .padding(.top,30)
                Spacer()
            }
         
            
            VStack{
                Text("المتبقي")
                    .font(.system(size: 15))
                VStack{
                    Spacer().frame(height: 20)
                    Text("٤٠٠٠").bold()
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .font(.system(size: 15))
                    Spacer().frame(height: 20)
                    //Image("")
                }
                Text("التاريخ")
                    .font(.system(size: 13))
                Spacer().frame(height: 20)
                Text("٦/٥/٢٠٢٣")
                    .font(.system(size: 12))
                Spacer().frame(height:35)
                
                ZStack{
                    Image("talkFlow")
                        .padding(.leading,195)
                    if charctarState == ""{
                        Spacer().frame(height:35)
                        Text("استعد لقد بدأت خطتك المالية لهذا الشهر ")
                            .padding(.leading,195)
                            .padding(.top,20)
                    }
                    else if charctarState == "happy"{
                        Text("ادائك رائع جدا استمر !")
                            .padding(.leading,195)
                            .padding(.top,20)
                        
                    }
                    else if charctarState == "sad"{
                        Text("ارجوك حاول ضبط نفسك انت على وشك الخروج عن ميزانيتك ")
                            .font(.system(size: 13))
                            .padding(.leading,195)
                            .padding(.top,20)
                            
                        
                    }
                    
                    else if charctarState == "angry"{
                        Text("احذر لقد ابتعدت كثيرا عن هدفك !")
                            .padding(.leading,195)
                            .padding(.top,20)
                        
                    }
                    
                }
                Button(action:{
                    print("hh'")
                }){
                    Text("اضف صرفك اليومي")
                        .bold()
                        .foregroundColor(.white)
                        .frame(width: 355 ,height: 48)
                        .background(Color(hex:"02B78B"))
                        .cornerRadius(24)
                        .padding(.leading,195)
                }
            }
            .padding(.trailing,190)
            .padding(.top,30)
            Spacer()
            
        }
         
        
           
    }
}
extension Color {
    init(hex: UInt, alpha: Double = 1) {
        self.init(
            .sRGB,
            red: Double((hex >> 16) & 0xff) / 255,
            green: Double((hex >> 08) & 0xff) / 255,
            blue: Double((hex >> 00) & 0xff) / 255,
            opacity: alpha
        )
    }
}
func calculate(){
    
}
    


#Preview {
    budgetCradView()
}
