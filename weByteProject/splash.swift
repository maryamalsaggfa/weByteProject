//
//  splash.swift
//  weByteProject
//
//  Created by maryam on 01/04/1445 AH.
//
import SwiftUI

struct splash: View {
    @State var animate: Bool = false
    @State var showSplash: Bool = true
    @State private var showIntro: Bool = false // Set initial value to false

    var body: some View {
        ZStack {
            // Background
            Color(hex: 0x02B78B) // Change the background color here

            // Logo
            Image("logo")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 200, height: 200)
                .padding(.leading, 15.0)
                .scaleEffect(animate ? 11 : 1)
                .animation(Animation.easeIn(duration: 1))
                .onAppear {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                        animate.toggle()
                        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                            showIntro.toggle() // Show the intro after the splash screen animation
                        }
                    }
                }
        }
        .edgesIgnoringSafeArea(.all)
        .opacity(showSplash ? 1 : 0) // Change opacity value
        .animation(.default)
        .overlay(
            Group {
                if showIntro {
                    UserName()
                }
            }
        )
    }
}



extension Color {
    init(hex: UInt) {
        let red = Double((hex >> 16) & 0xFF) / 255.0
        let green = Double((hex >> 8) & 0xFF) / 255.0
        let blue = Double(hex & 0xFF) / 255.0
        self.init(red: red, green: green, blue: blue)
    }
}


#Preview {
    splash()
}

