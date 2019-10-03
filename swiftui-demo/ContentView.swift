//
//  ContentView.swift
//  swiftui-demo
//
//  Created by sudofluff on 10/2/19.
//  Copyright © 2019 sudofluff. All rights reserved.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    VStack {
      Text("Welcome to my first app!")
        .fontWeight(.semibold)
        .foregroundColor(.green)
      Button(action: {} ) {
        Text("Hit Me!")
      }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
