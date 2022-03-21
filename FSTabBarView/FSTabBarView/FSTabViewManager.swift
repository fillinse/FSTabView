//
//  FSTabViewManager.swift
//  FSTabBarView
//
//  Created by BRSX-LIUFANG on 2022/3/18.
//

import Foundation
import SwiftUI

class FSTabViewManager:ObservableObject {
  static let manager = FSTabViewManager()

  @Published var barIndex = 0
  @Published var bottomPadding: CGFloat = 0

  func hideBar(_ hide: Bool) {
    ///这里实际上是向下收缩了一个tabbar + 2个底部安全区的高度
    bottomPadding = hide ? -117 : 0
  }
}
