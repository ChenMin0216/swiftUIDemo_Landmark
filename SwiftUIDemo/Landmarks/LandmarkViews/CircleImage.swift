//
//  CircleImage.swift
//  SwiftUIDemo
//
//  Created by bengbengbeng on 2019/12/5.
//

import SwiftUI

struct CircleImage: View {
    
    var image: Image
    
    var body: some View {
        image
        .clipShape(Circle())// 切圆角
            .overlay(Circle().stroke(lineWidth: 4).foregroundColor(.white).shadow(radius: 10))
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image:Image("turtlerock"))
    }
}
