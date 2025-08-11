//
//  FrameworkView.swift
//  Apple_Frameworks
//
//  Created by H4MM3R-9 on 05/08/2025.
//

import SwiftUI

struct FrameworkView: View {
    
    @StateObject var viewModel = FrameworkGridViewModel()
    
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())
    ]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid (columns: columns) {
                    ForEach(MockData.frameworks) { frame in
                        FrameworkTitleView (frame: frame)
                            .onTapGesture {
                                viewModel.selectedFramework = frame
                            }
                    }
                }.padding()
                
                .navigationTitle("FrameWorks  ")
                .sheet (isPresented: $viewModel.isTapped) {
                    FrameworkDetailView(framework: viewModel.selectedFramework ?? MockData.sampleFramework)
                }
            }
            
        }
        
    }
}



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

#Preview {
    FrameworkView(viewModel: FrameworkGridViewModel())
}
