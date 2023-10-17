//
//  RoadMap.swift
//  weByteProject
//
//  Created by maryam on 01/04/1445 AH.
//

import SwiftUI

struct RoadMap: View {
    var body: some View {
        VStack {
            // Draw the road line
            Path { path in
                path.move(to: CGPoint(x: 0, y: 0))
                path.addLine(to: CGPoint(x: 0, y: 508))
            }
            .stroke(Color.gray, lineWidth: 0.1)
            .frame(width: 1, height: 508, alignment: .center)
        }
    }
}

#Preview {
    RoadMap()
}
