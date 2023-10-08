//
//  roadmapView.swift
//  weByteProject
//
//  Created by maryam on 23/03/1445 AH.
//

import SwiftUI

struct roadmapView: View {
    var body: some View {
        VStack{
           
            Image("roadmap")
                .resizable().aspectRatio(contentMode:.fill)
                .frame(width:70,height:70)
                .cornerRadius(15)
            
            
        }
    }
}

#Preview {
    roadmapView()
}
