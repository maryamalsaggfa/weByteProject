//import SwiftUI

import SwiftUI

struct UserName: View {
    @State private var nameText = ""
    @State private var isButtonTapped = false
    @State private var isBackTapped = false
    

    var body: some View {
   
        NavigationView {
            ZStack(alignment: .bottom) {
                VStack {
                    Image("intro1")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 350, height: 350)
                        .padding(.bottom, 315)
                }

                VStack {
                    Text(" اسمك")
                        .font(.system(size: 16))
                        .padding(.leading, 290).foregroundColor(Color(hex: "#028175"))
                    TextField("ادخل اسمك", text: $nameText)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .frame(width: 330, height: 48)
                        .padding(.bottom, 250)
                   
                }

                VStack {
                    Text(" أهلا انا ( رويّل) حاب اتعرف عليك ")
                        .font(.system(size: 15))
                        .padding(.bottom, 620)
                        .padding(.leading, 10)
                        .bold()
                        .foregroundColor(Color(hex: "#028175"))
                }

                VStack {
                    Spacer()
                    Image("bottomEffect")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 1000)
                        .padding(.trailing, 40)
                        .padding(.top, 500)
                }

              

                VStack {
                    Button("التالي", action: {
                        isButtonTapped = true
                    })
                    .font(.system(size: 20))
                    .foregroundColor(.white)
                    .padding()
                    .frame(width: 330, height: 48)
                    .background(Color(hex: "02B78B"))
                    .cornerRadius(24)
                    .padding(.bottom,80)
                    .fullScreenCover(isPresented: $isButtonTapped) {
                        UserGoal(nameText: nameText)
                    }
                }
            }
            .padding()
            
        }
    }
}

struct UserName_Previews: PreviewProvider {
    static var previews: some View {
        UserName()
    }
}

