//
//  ContentView.swift
//  FSTabBarView
//
//  Created by BRSX-LIUFANG on 2022/3/18.
//

let KHeight = UIScreen.main.bounds.height
import SwiftUI

struct ContentView: View {
  @ObservedObject var manager = FSTabViewManager.manager

  let firstView = FSFirstView()
  let secondView = FSSecondView()
  let thirdView = FSThirdView()
    var body: some View {
      VStack {
          TabView(selection: $manager.barIndex) {
            firstView
              .tabItem {
                Text("首页")
              }
              .tag(0)
            secondView
              .tabItem {
                Text("精彩")
              }
              .tag(1)
            NavigationView {
              thirdView
            }
            .tabItem {
              Text("我的")
            }
            .tag(2)
          }
          .accentColor(.red)
          .padding(.bottom,manager.bottomPadding)
      }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
