//
//  LandmarkRow.swift
//  SwiftUIDemo
//
//  Created by bengbengbeng on 2019/12/9.
//

import SwiftUI

struct LandmarkRow: View {
    
    var landmark: Landmark
    
    var body: some View {
        HStack {
            HStack {
                landmark.image
                    .resizable()// 图片拉伸（九宫格拉伸）
                    .frame(width: 50, height: 50)
                Text(verbatim: landmark.name)
                Spacer()
                
                if landmark.isFavorite {
                    Image(systemName: "star.fill")
                        .imageScale(.medium)
                        .foregroundColor(.yellow)
                }
            }
        }
    }
}

#if DEBUG
struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            LandmarkRow(landmark: landmarkData[0])
            LandmarkRow(landmark: landmarkData[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
#endif
