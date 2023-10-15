//
//  SwiftUIViewtest.swift
//  weByteProject
//
//  Created by suha alrajhi on 30/03/1445 AH.
//

import SwiftUI

struct SwiftUIViewtest: View {
    var incomeText = 0
    @Binding var goalText : Int
    @Binding var spendingText :Int
    @Binding var saving :Int
    @Binding var stringGoal: String
    @State private var show = true
    @State private var showAlert = false
    @State var  charctarState = "happy"
    
    
    var body: some View {
        
        ZStack(alignment:.top){
            //happy expretion:
            if saving >= (incomeText * Int(0.20)) {
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
                        Text("\(spendingText)💰").bold()
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
                    Text("\(incomeText)")
                        .foregroundColor(.white)
                        .font(.system(size: 12))
                }
                .padding(.leading,190)
                .padding(.top,30)
                Spacer()
                
                
            }
            
            
            //sad expretion:
            else if saving < (incomeText * Int(0.20)) || saving >= (incomeText * Int(0.10)){
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
                        Text("\(spendingText)💰").bold()
                        
                            .font(.title)
                            .font(.system(size: 15))
                        Spacer().frame(height: 20)
                        //Image("")
                    }
                    Text("الدخل الشهري")
                    
                        .font(.system(size: 13))
                    Spacer().frame(height: 20)
                    Text("\(incomeText)")
                    
                        .font(.system(size: 12))
                }
                .padding(.leading,190)
                .padding(.top,30)
                Spacer()
                
            }
            
            // angry expretion:
            else if saving < (incomeText * Int(0.10)) || saving >= (incomeText * Int(0)){
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
                        Text("\(spendingText)💰").bold()
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
                    Text("\(incomeText)")
                        .foregroundColor(.white)
                        .font(.system(size: 12))
                }
                .padding(.leading,190)
                .padding(.top,30)
                Spacer()
            }
            // default expretion:
            
            else {
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
                        Text("\(spendingText)💰").bold()
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                            .font(.system(size: 15))
                        Spacer().frame(height: 20)
                        //Image("")
                    }
                    Text("الدخل الشهري")
                        .font(.system(size: 13))
                    Spacer().frame(height: 20)
                    Text("\(incomeText)")
                        .font(.system(size: 12))
                }
                .padding(.leading,190)
                .padding(.top,30)
                Spacer()
            }
            
            VStack{
                Text("الادخار")
                    .font(.system(size: 15))
                VStack{
                    Spacer().frame(height: 20)
                    Text("\(saving)").bold()
                        .font(.title)
                        .font(.system(size: 15))
                    Spacer().frame(height: 20)
                    //Image("")
                }
                Text("الهدف")
                //Text("\(stringGoal)")
                    .font(.system(size: 13))
                Spacer().frame(height: 20)
                Text("\(goalText)")
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
            
                .fullScreenCover(isPresented: $showAlert, content: {
                    CustomAlertContent(incomeText: Int(incomeText) ,goalText: Int(goalText) ,spendingText: spendingText, saving: saving)
                })
            
        }
    }}

