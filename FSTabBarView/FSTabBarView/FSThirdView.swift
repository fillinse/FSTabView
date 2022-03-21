//
//  FSThirdView.swift
//  FSTabBarView
//
//  Created by BRSX-LIUFANG on 2022/3/18.
//

import SwiftUI

struct FSThirdView: View {
    var body: some View {
      VStack(spacing: 100) {
        Text("FSThirdView")
        NavigationLink {
          FSMineView()
        } label: {
          Text("跳转到我的详情")
        }
      }
      .onAppear {
        FSTabViewManager.manager.hideBar(false)
      }
    }
}

