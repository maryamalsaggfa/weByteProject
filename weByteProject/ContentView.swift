//
//  ContentView.swift
//  weByteProject
//
//  Created by maryam on 23/03/1445 AH.
//

import SwiftUI

struct ContentView: View {
    var incomeText = 0
    var goalText = 0
   @State var spendingText = 0
    var body: some View {
       
        ZStack{
            TabView{
                budgetView(incomeText: Int(incomeText) ,goalText: Int(goalText) ,spendingText:$spendingText)
                    .tabItem {
                        Image(systemName: "mappin.and.ellipse")
                        Text("مالية")
                           
                    }
                categoriesView()
                    .tabItem {
                        Image(systemName: "rectangle.grid.2x2")
                        Text("التصنيفات")
                            
                    }
                    
                  
            }
            .accentColor(Color(hex:"02B78B"))
           
            
   
        }
        
}
}
            extension Color {
                        init(hex: String) {
                            let scanner = Scanner(string: hex)
                            var rgbValue: UInt64 = 0
                            scanner.scanHexInt64(&rgbValue)

                            let r = Double((rgbValue & 0xFF0000) >> 16) / 255.0
                            let g = Double((rgbValue & 0x00FF00) >> 8) / 255.0
                            let b = Double(rgbValue & 0x0000FF) / 255.0

                            self.init(red: r, green: g, blue: b)
                        }
                    }
                        

#Preview {
    ContentView()
}
