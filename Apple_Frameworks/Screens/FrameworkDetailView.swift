//
//  FrameworkDetailView.swift
//  Apple_Frameworks
//
//  Created by H4MM3R-9 on 11/08/2025.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    var framework: Framework
    
    @Binding var isShowingDetail : Bool
    @State private var isShowingSafari = false
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Button(action: {
                    isShowingDetail = false
                }, label:
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

            Button(action: {
                isShowingSafari = true
            }, label: {
                Text ("Learn More")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .frame(width: 200, height: 50)
                    .background(Color(.blue))
                    .foregroundStyle(.white)
                    .cornerRadius(10)
            })
            .sheet(isPresented: $isShowingSafari, content: {
                SafariView(url: URL(string: framework.url)!)
            })
        }
        
       
    }
}

#Preview {
    FrameworkDetailView(framework: MockData.sampleFramework, isShowingDetail: .constant(false))
}
