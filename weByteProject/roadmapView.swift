//
//  roadmapView.swift
//  weByteProject
//
//  Created by maryam on 23/03/1445 AH.
//

import SwiftUI
struct roadmapView: View {
    @Binding  var coinPosition:Int
    @Binding var charctarState:String
    var body: some View {
       // var coinPosition = 450
        //start- 450
        
        
        return RoadMap()
            .overlay(
    
    Image("\(charctarState)")
    .resizable()
    .aspectRatio(contentMode: .fit)
        .frame(width: 80, height: 80)
        .padding(.leading, 15.0)
                
       /*         Circle()
        .frame(width: 30, height: 30)
        .foregroundColor(.yellow)
                */
                
                
        .position(x: -10, y: CGFloat(coinPosition)) // Convert coinPosition to CGFloat
            )
      
           
            .background(
                Image("roadmap")
                    .resizable().aspectRatio(contentMode:.fill)
                    .frame(width:300,height:508)
                    .cornerRadius(15)

                        )
        
         /*   Image("roadmap")
                .resizable().aspectRatio(contentMode:.fill)
                .frame(width:300,height:508)
                .cornerRadius(15)  */
            
            
        
    }
}

struct roadmap_Previews: PreviewProvider {
    static var previews: some View {
        roadmapView(coinPosition: .constant(450), charctarState:.constant("1"))
    }
}
