//
//  FruitCardView.swift
//  Fructus
//
//  Created by Atakan Apan on 1/8/23.
//

import SwiftUI

struct FruitCardView: View {
    //MARK: PROPERTIES
    var fruit: Fruit
    
    @State private var isAnimating: Bool = false
    @Binding var isOnboarding: Bool
    //MARK: BODY
    var body: some View {
        HStack {
            VStack(spacing: 20) {
                //image
                Image(fruit.image)
                    .resizable()
                    .scaledToFit()
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
                    .scaleEffect(isAnimating ? 1.0 : 0.6)
                //title
                Text(fruit.title)
                    .foregroundColor(Color.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 2, x: 2, y: 2)
                //headline
                Text(fruit.headline)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16)
                    .frame(maxWidth: 480)
                //startButton
                StartButtonView(isOnboarding: $isOnboarding)
            }
        }
        .onAppear {
            DispatchQueue.main.async {
                isAnimating = false
                withAnimation(.easeOut(duration: 0.5)){
                    isAnimating = true
                }
            }
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(.linearGradient(Gradient(colors: fruit.gradientColors), startPoint: .top, endPoint: .bottom))
        .cornerRadius(20)
        .padding(.horizontal, 20)
        //.padding(.vertical, 20)
    }
}
//MARK: PREVIEW
struct FruitCardView_Previews: PreviewProvider {
    @State static var isOnboarding: Bool = true
    static var previews: some View {
        FruitCardView(fruit: fruitsData[4], isOnboarding: $isOnboarding)
            .previewLayout(.fixed(width: 320, height: 640))
    }
}
