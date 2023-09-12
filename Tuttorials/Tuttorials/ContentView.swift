//
//  ContentView.swift
//  Tuttorials
//
//  Created by utku on 1.09.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State var change : Bool = false
    @Namespace var NameSpace
    
    var body: some View {
        ZStack {
            if change {
                VStack(spacing: 20) {
                    Text("Jose Saramago")
                        .font(.system(size: 30, weight: .bold, design: .serif))
                        .matchedGeometryEffect(id: "Author", in: NameSpace)
                    Text("Blindness")
                        .font(.system(size: 30, weight: .light, design: .rounded))
                        .padding(.bottom, 30)
                        .matchedGeometryEffect(id: "Book", in: NameSpace)
                    Text("A driver waiting at the traffic lights goes blind. An opthamologist tries to diagnose his distinctive white blindness, but is affected before he can read the textbooks. It becomes a contagion, spreading throughout the city. Trying to stem the epidemic, the authorities herd the afflicted into a mental asylum where the wards are terrorised by blind thugs. And when fire destroys the asylum, the inmates burst forth and the last links with a supposedly civilised society are snapped. No food, no water, no government, no obligation, no order. This is not anarchy, this is blindness.")
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 20)
                        .matchedGeometryEffect(id: "Summary", in: NameSpace)
                }
                .frame(width: 300, height: 650)
                .background(Color.gray)
                .cornerRadius(25)
                .shadow(radius: 15)
                .matchedGeometryEffect(id: "View", in: NameSpace)
            }
            else {
                VStack(spacing: 20) {
                    Text("Dan Brown")
                        .font(.system(size: 30, weight: .bold, design: .serif))
                        .matchedGeometryEffect(id: "Author", in: NameSpace)
                    Text("Origin")
                        .font(.system(size: 30, weight: .light, design: .rounded))
                        .padding(.bottom, 30)
                        .matchedGeometryEffect(id: "Book", in: NameSpace)
                    Text("Origin is a 2017 mystery thriller novel by American author Dan Brown and the fifth installment in his Robert Langdon series, following Inferno. The book was released on October 3, 2017, by Doubleday. The book is predominantly set in Spain and features minor sections in Sharjah and Budapest.")
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 20)
                        .matchedGeometryEffect(id: "Summary", in: NameSpace)
                }
                .frame(width: 300, height: 650)
                .background(Color.blue)
                .cornerRadius(25)
                .shadow(radius: 15)
                .matchedGeometryEffect(id: "View", in: NameSpace)
            }
        }
        .onTapGesture {
            withAnimation(.spring()) {
                change.toggle()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

