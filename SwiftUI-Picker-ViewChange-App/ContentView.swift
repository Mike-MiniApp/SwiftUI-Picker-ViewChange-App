//
//  ContentView.swift
//  SwiftUI-Picker-ViewChange-App
//
//  Created by 近藤米功 on 2022/12/12.
//

import SwiftUI

struct ContentView: View {
    @State private var selection = 0
    var body: some View {
        VStack(spacing: 0) {
            Picker("画面切替", selection: self.$selection) {
                Text("A").tag(0)
                Text("B").tag(1)
            }.pickerStyle(SegmentedPickerStyle()).padding()

            if selection == 0 {
                ViewA()
            }else {
                ViewB()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
