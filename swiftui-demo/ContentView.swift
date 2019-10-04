//
//  ContentView.swift
//  swiftui-demo
//
//  Created by sudofluff on 10/2/19.
//  Copyright © 2019 sudofluff. All rights reserved.
//

import SwiftUI

struct ContentView: View {
  @State var alertIsVisible = false
  
  @State var sliderValue = 50.0
  
  @State var target = Int.random(in: 0...100) 
  
  var body: some View {
    VStack() {
      Spacer()
      
      HStack {
        Text("Put the bullseye as close as you can to: ")
        Text("\(self.target)")
      }
      
      Spacer()
      
      HStack {
        Text("0")
        Slider(value: self.$sliderValue, in: 0...100)
        Text("100")
      }
      
      Spacer()
      
      Button(action: {
        self.alertIsVisible = true
      }) {
        Text("Hit me!")
      }
      .alert(isPresented: $alertIsVisible) { () -> Alert in
        let roundedVal = Int(self.sliderValue.rounded())
        return Alert(title: Text("Hello there!"), message: Text("The slider's value is \(roundedVal).\n" + "You score \(self.pointsForCurrentRound()) points this round."), dismissButton: .default(Text("Awesome!")))
      }
      
      Spacer()
      
      HStack() {
        Button(action: {}) {
          Text("Start over")
        }
        
        Spacer()
        
        Text("Score: ")
        Text("999999")
        
        Spacer()
        
        Text("Score: ")
        Text("999999")
        
        Spacer()
        
        Button(action: {}) {
          Text("Info")
        }
      }
      .padding(.bottom, 20)
    }
  }
  
  func pointsForCurrentRound() -> Int {
    let dis = self.sliderValue.distance(to: Double(self.target))
    let r = abs(dis / 100)
    let result = ((1.00 - r) * 100).rounded()
    return Int(result)
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
      .previewLayout(.fixed(width: 896, height: 414)) // iphone 10 R
  }
}
