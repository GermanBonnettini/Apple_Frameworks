//
//  FrameworkTitleView.swift
//  Apple_Frameworks
//
//  Created by H4MM3R-9 on 13/08/2025.
//

import SwiftUI

struct FrameworkTitleView: View {
    
    let frame: Framework

    var body:some View {
        VStack {
            Image(frame.iconName)
                .resizable()
                .frame(width: 80, height: 80)
            Text(frame.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
        }
        .padding()
    }
   
}
