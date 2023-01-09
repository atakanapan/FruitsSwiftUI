//
//  OnboardingView.swift
//  Fructus
//
//  Created by Atakan Apan on 1/8/23.
//

//BUG: Animation only works after 3rd fruit shown?
import SwiftUI

struct OnboardingView: View {
    //MARK: PROPERTIES
    var fruits: [Fruit] = fruitsData
    @Binding var isOnboarding: Bool
    
    //MARK: BODY
    var body: some View {
        TabView{
            ForEach(fruits[0..<5]) {item in
                FruitCardView(fruit: item, isOnboarding: $isOnboarding)
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}
//MARK: PREVIEW
struct OnboardingView_Previews: PreviewProvider {
    @State static var isOnboarding: Bool = true
    static var previews: some View {
        OnboardingView(isOnboarding: $isOnboarding)
    }
}
