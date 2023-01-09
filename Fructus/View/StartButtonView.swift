//
//  StartButtonView.swift
//  Fructus
//
//  Created by Atakan Apan on 1/8/23.
//

import SwiftUI

struct StartButtonView: View {
    //MARK: PROPERITIES
    @Binding var isOnboarding: Bool
    
    //MARK: BODY
    
    var body: some View {
        Button(action: {
            withAnimation(.easeOut(duration: 1)){
                isOnboarding = false
            }
        }) {
            HStack(spacing: 8) {
                Text("Start")
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(
                Capsule().strokeBorder(Color.white, lineWidth: 1.25)
            )
        }
        .accentColor(Color.white)
    }
}
//MARK: PREVIEW
struct StartButtonView_Previews: PreviewProvider {
    @State static var isOnboarding: Bool = true
    static var previews: some View {
        StartButtonView(isOnboarding: $isOnboarding)
            .previewLayout(.sizeThatFits)
    }
}
