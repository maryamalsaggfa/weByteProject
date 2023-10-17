import SwiftUI

struct Category: Identifiable {
    let id = UUID()
    let name: String
}

struct ContentView2: View {
  

    @State private var categories: [Category] = [
        Category(name: "ديون"),
        Category(name: "مطاعم"),
        Category(name: "صحة"),
        Category(name: "التسوق"),
        Category(name: "قروض"),
        Category(name: "اشتراكات"),
        Category(name: "الترفيهه"),
        Category(name: "ماركت"),
        Category(name: "راتب العامله"),
        Category(name: "بنزين "),
        Category(name: "مصروف الاولاد "),
        Category(name: "إيجار"),
        Category(name: "+"),
        Category(name: "راتب السواق"),
        Category(name: "الانترنيت "),
      
        
    ]
    
    var body: some View {
        VStack {
            
           Text("تنصيفات مصروفاتك")
                .font(.system(size: 25))
                .padding(.top, 100.0)
            
            ScrollView {
                LazyVGrid(columns: Array(repeating: GridItem(.flexible(), spacing: 16), count: 3), spacing: 16) {
                    ForEach(categories) { category in
                        if category.name == "+" {
                            Text(category.name)
                    .font(.system(size: 40, weight: .bold))
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                 .background(Color.clear)
                    .foregroundColor(.green) // Set the text color to green
                                .cornerRadius(16)
                                .padding(16)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 16)
                                        .stroke(LinearGradient(
                                            gradient: Gradient(colors: [.green, .yellow]),
                                            startPoint: .topLeading,
                                            endPoint: .bottomTrailing
                                        ), lineWidth: 4)
                                )
                        } else {
                            Text(category.name)
                                .font(.system(size: 20))
                                .frame(maxWidth: .infinity, maxHeight: .infinity)
                                .background(Color.clear)
                                .foregroundColor(.black)
                                .cornerRadius(16)
                                .padding(16)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 16)
                                        .stroke(LinearGradient(
                                            gradient: Gradient(colors: [.green, .yellow]),
                                            startPoint: .topLeading,
                                            endPoint: .bottomTrailing
                                        ), lineWidth: 4)
                                )
                        }
                    }
                }
                .padding(.top, 25.0)
                .padding(.horizontal, 20)
                
                Spacer()
                
                
                
      
                
                
                
                
                
            }
        }
    }
}

struct ContentView2_Previews: PreviewProvider {
    static var previews: some View {
        ContentView2()
    }
}

