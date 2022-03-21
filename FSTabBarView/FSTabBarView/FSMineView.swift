//
//  FSMineVie.swift
//  FSTabBarView
//
//  Created by BRSX-LIUFANG on 2022/3/18.
//

import SwiftUI

struct FSMineView: View {
    var body: some View {
      VStack(spacing: 100) {
        Text("我的详情 可以点击返回到上一页")
        Button{
          FSTabViewManager.manager.barIndex = 0
        } label: {
          Text("非常规跳转到首页")
        }
      }
      .onAppear {
        FSTabViewManager.manager.hideBar(true)
      }
    }
}

