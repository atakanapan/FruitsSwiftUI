//
//  OnboardingView.swift
//  Fructus
//
//  Created by Atakan Apan on 1/8/23.
//

import SwiftUI

struct OnboardingView: View {
    //MARK: PROPERTIES
    var fruits: [Fruit] = fruitsData
    
    //MARK: BODY
    var body: some View {
        TabView{
            ForEach(fruits[0...]) {item in
                FruitCardView(fruit: item)
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}
//MARK: PREVIEW
struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
