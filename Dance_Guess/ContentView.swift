//
//  ContentView.swift
//  Dance_Guess
//
//  Created by Abdusamad Mamasoliyev on 30/01/24.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @State private var isBlueColor = false
    var body: some View {
        ZStack{
            Color(isBlueColor ? .blue : .red)
                .animation(Animation.easeInOut(duration:
                                                0.2).repeatForever(autoreverses: false), value: isBlueColor)
                .onAppear {
                    isBlueColor.toggle()
                }
                .ignoresSafeArea()
            AnimationSequenceView()
                .offset(x: 12, y: 180)
        }
    }
}
#Preview {
    ContentView()
}

var images: [UIImage]! = [
    UIImage(named: "0")!,
    UIImage(named: "1")!,
    UIImage(named: "2")!,
    UIImage(named: "3")!,
    UIImage(named: "4")!,
    UIImage(named: "5")!,
    UIImage(named: "6")!,
    UIImage(named: "7")!,
    UIImage(named: "8")!,
    UIImage(named: "9")!,
    UIImage(named: "10")!,
    UIImage(named: "11")!,
   
]
let animatedImages = UIImage.animatedImage(with: images, duration: 0.8)

struct AnimationSequenceView : UIViewRepresentable {
    
    func makeUIView(context: Context) -> some UIView {
        
        let sequenceView = UIView(frame: CGRect(x: 0, y: 0, width: 400, height: 400))
        let imageView = UIImageView (frame: sequenceView.bounds)
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 20
        imageView.contentMode = .scaleAspectFit
        imageView.image = animatedImages
        
        sequenceView.addSubview(imageView)
        return sequenceView
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        
    }
}
