//
//  budgetView.swift
//  weByteProject
//
//  Created by maryam on 23/03/1445 AH.
//

import SwiftUI
import SlidingTabView

struct budgetView: View {
    
    @State private var tabIndex=0
    var incomeText = 0
    var goalText = 0
    @Binding var spendingText :Int
    var body: some View {
        
        VStack {
            ZStack (alignment: .top){
                VStack{
                    Image("Image")
                        .frame(width:0, height: 0)
                    //Spacer()
                        .aspectRatio(contentMode: .fit).ignoresSafeArea()
                }
                Text("الخطة المالية")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .font(.system(size: 24))
                    .foregroundColor(.white)
                //.padding(.bottom,54) // don't ever change the size
            }
            VStack{
                SlidingTabView(selection: $tabIndex, tabs: ["الميزانية","خريطة الطريق"], animation:.easeOut)
                Spacer().frame(height:50)
                if tabIndex == 0{
                    budgetCradView(incomeText: Int(incomeText) ,goalText: Int(goalText)  ,spendingText: $spendingText )
                }else if tabIndex == 1{
                    roadmapView()
                }
            }
           
          
            
        
          
        }
            
        .edgesIgnoringSafeArea(.all)
        .padding(.top,10)
    }
}

struct budgetView_Previews: PreviewProvider {
    @State static private var dummySpendingText = 0

    static var previews: some View {
        budgetView(incomeText: 0, goalText: 0, spendingText: $dummySpendingText)
    }
}
