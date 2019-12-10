//
//  UserData.swift
//  SwiftUIDemo
//
//  Created by bengbengbeng on 2019/12/10.
//

import SwiftUI
import Combine

final class UserData: ObservableObject {
    @Published var showFavoritesOnly = false
    @Published var landmarks = landmarkData
}
