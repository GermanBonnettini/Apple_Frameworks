//
//  FrameworkDetailView.swift
//  Apple_Frameworks
//
//  Created by H4MM3R-9 on 11/08/2025.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    var framework: Framework
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Button(action: {}, label:
                        {Image(systemName: "xmark")
                        .foregroundColor(Color(.label))
                        .fontWeight(.semibold)
                        
                })
                .padding()
            }
            
                        
            FrameworkTitleView(frame: framework)
            
            Text(framework.description)
                .frame(width: 350, height: 400)
                .font(.body)
                .padding()
            
            Spacer()

            Button(action: {}, label: {
                Text ("Learn More")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .frame(width: 200, height: 50)
                    .background(Color(.blue))
                    .foregroundStyle(.white)
                    .cornerRadius(10)
            })
            
        }
        
       
    }
}

#Preview {
    FrameworkDetailView(framework: MockData.sampleFramework)
}
