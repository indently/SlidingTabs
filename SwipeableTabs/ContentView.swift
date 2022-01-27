//
//  ContentView.swift
//  SwipeableTabs
//
//  Created by Federico on 27/01/2022.
//

import SwiftUI
import SlidingTabView

struct ContentView: View {
    @State private var tabIndex = 0
    
    var body: some View {
        VStack {
            SlidingTabView(selection: $tabIndex, tabs: ["Home", "Friends", "Settings"], animation: .easeInOut)
            Spacer()
            
            if tabIndex == 0 {
                TabAView()
            } else if tabIndex == 1 {
                TabBView()
            } else if tabIndex == 2 {
                TabCView()
            }
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
