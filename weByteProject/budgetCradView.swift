//
//  budgetCradView.swift
//  weByteProject
//
//  Created by maryam on 23/03/1445 AH.
//

import SwiftUI
struct budgetCradView: View {
    var incomeText = 0.0
    @Binding var goalText : Double
    @Binding var spendingText :Double
    @Binding var saving :Double
   // var num :Int
   // var num2 :Int
    @Binding var stringGoal: String
    @State private var show = true
    @State private var showAlert = false
    @Binding var  charctarState:String
    @State private var isSheetPresented = false
    // A function to format a double to a string with a specific number of decimal places
        func formatDouble(_ value: Double, decimalPlaces: Int) -> String {
            return String(format: "%.\(decimalPlaces)f", value)
        }
  
    var body: some View {
        ZStack(alignment:.top){
           // if charctarState == ""{
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
                    .foregroundColor(.black)
              //  Text("\(charctarState)")
                    .font(.system(size: 15))
                VStack{
                    Spacer().frame(height: 20)
                    Text(formatDouble(spendingText, decimalPlaces: 0)).bold()
                        .foregroundColor(.black)
                    // Text("\(spendingText)💰").bold()
                        .font(.title)
                        .font(.system(size: 15))
                    Spacer().frame(height: 20)
                        .foregroundColor(.black)
                    //Image("")
                }
                Text("الدخل الشهري")
                    .foregroundColor(.black)
                    .font(.system(size: 13))
                Spacer().frame(height: 20)
                Text(formatDouble(incomeText, decimalPlaces: 0)).bold()
                    .font(.system(size: 12))
                    .foregroundColor(.black)
            }
            .padding(.leading,190)
            .padding(.top,30)
                Spacer()
           // }
                
            
            //happy expretion:
           // saving == (Double(incomeText) * (0.20))
            if charctarState == "happy" {
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
                        Text(formatDouble(spendingText, decimalPlaces: 0)).bold()
                        //Text("\(spendingText)💰").bold()
                            .foregroundColor(.white)
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                            .font(.system(size: 15))
                        Spacer().frame(height: 20)
                        Image("")
                    }
                    Text("الدخل الشهري")
                        .foregroundColor(.white)
                        .font(.system(size: 13))
                    Spacer().frame(height: 20)
                    Text(formatDouble(incomeText, decimalPlaces: 0)).bold()
                    //Text("\(incomeText)")
                        .foregroundColor(.white)
                        .font(.system(size: 12))
                }
                .padding(.leading,190)
                .padding(.top,30)
                Spacer()
            }
            
            
            //sad expretion:
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
                        .foregroundColor(.black)
                        .font(.system(size: 15))
                    VStack{
                        Spacer().frame(height: 20)
                        Text(formatDouble(spendingText, decimalPlaces: 0)).bold()
                            .foregroundColor(.black)
                       // Text("\(spendingText)💰").bold()
                        
                            .font(.title)
                            .font(.system(size: 15))
                        Spacer().frame(height: 20)
                        //Image("")
                    }
                    Text("الدخل الشهري")
                        .foregroundColor(.black)
                        .font(.system(size: 13))
                    Spacer().frame(height: 20)
                    Text(formatDouble(incomeText, decimalPlaces: 0)).bold()
                        .foregroundColor(.black)
                   // Text("\(incomeText)")
                    
                        .font(.system(size: 12))
                }
                .padding(.leading,190)
                .padding(.top,30)
                Spacer()
                
            }
            
           
            else if charctarState == "angry" {
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
                        Text(formatDouble(spendingText, decimalPlaces: 0)).bold()
                     //   Text("\(spendingText)💰").bold()
                            .foregroundColor(.white)
                            .font(.title)
                            .font(.system(size: 15))
                        Spacer().frame(height: 20)
                        //Image("")
                    }
                    Text("الدخل الشهري")
                        .foregroundColor(.white)
                        .font(.system(size: 13))
                    Spacer().frame(height: 20)
                    Text(formatDouble(incomeText, decimalPlaces: 0)).bold()
                    //Text("\(incomeText)")
                        .foregroundColor(.white)
                        .font(.system(size: 12))
                }
                .padding(.leading,190)
                .padding(.top,30)
                Spacer()
            }
            
            
            VStack{
                Text("الادخار")
                    .foregroundColor(.black)
                    .font(.system(size: 15))
                VStack{
                    Spacer().frame(height: 20)
                    Text(formatDouble(saving, decimalPlaces: 0)).bold()
                    //Text("\(saving)").bold()
                        .foregroundColor(.black)
                        .font(.title)
                        .font(.system(size: 15))
                    Spacer().frame(height: 20)
                    //Image("")
                }
                Text("الهدف")
                    .foregroundColor(.black)
                //Text("\(stringGoal)")
                    .font(.system(size: 13))
                Spacer().frame(height: 20)
              //  Text("\(stringGoal)").bold()
                Text(formatDouble(goalText, decimalPlaces: 0)).bold()
                    .foregroundColor(.black)
                .font(.system(size: 15))
                Spacer().frame(height:20)
                
                ZStack{
                    Image("talkFlow")
                        .padding(.leading,195)
                    if charctarState == ""{
                        Spacer().frame(height:35)
                        Text("استعد لقد بدأت خطتك المالية لهذا الشهر ")
                            .foregroundColor(.black)
                            .padding(.leading,195)
                            .padding(.top,20)
                    }
                    else if charctarState == "happy"{
                        Text("ادائك رائع جدا استمر !")
                            .foregroundColor(.black)
                            .padding(.leading,195)
                            .padding(.top,20)
                        
                    }
                    else if charctarState == "sad"{
                        Text("ارجوك حاول ضبط نفسك انت على وشك الخروج عن ميزانيتك ")
                            .foregroundColor(.black)
                            .font(.system(size: 13))
                            .padding(.leading,195)
                            .padding(.top,20)
                        
                        
                    }
                    
                    else if charctarState == "angry"{
                        Text("احذر لقد ابتعدت كثيرا عن هدفك !")
                            .foregroundColor(.black)
                            .padding(.leading,195)
                            .padding(.top,20)
                        
                    }
                    
                }
                Button(action:{
                    showAlert = true
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
            
                .sheet(isPresented: $showAlert, content: {
                    CustomAlertContent(incomeText: incomeText ,goalText: goalText ,spendingText: spendingText, saving: saving)
                })
            
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
func cardView(ImageName:String,leftColor:String,RightColor:String,RightFontColor:String){
    
    
}

func cardViewInfo(goal:String,income:String,chartacrState:String){
}

    

struct budgetCradView_Previews: PreviewProvider {
    static var previews: some View {
        budgetCradView(
            incomeText: 0, // Provide an initial value
            goalText:.constant(0),   // Provide an initial value
            spendingText: .constant(0), // Use .constant to create a binding with an initial value
            saving:.constant(0),
            stringGoal: .constant(""),charctarState:.constant("")  )
    }
}

