//
//  FSFirstView.swift
//  FSTabBarView
//
//  Created by BRSX-LIUFANG on 2022/3/18.
//

import SwiftUI

struct FSFirstView: View {
    var body: some View {
      VStack(spacing: 100) {
        Text("FSFirstView")
        Button{
          FSTabViewManager.manager.barIndex = 2
        } label: {
          Text("跳转到我的")
        }
      }
    }
}

struct FSFirstView_Previews: PreviewProvider {
    static var previews: some View {
        FSFirstView()
    }
}
