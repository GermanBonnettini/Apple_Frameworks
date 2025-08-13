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
                .fullScreenCover (isPresented: $viewModel.isTapped) {
                    FrameworkDetailView(framework: viewModel.selectedFramework!, isShowingDetail: $viewModel.isTapped)
                }
            }
            
        }
        
    }
}


#Preview {
    FrameworkView(viewModel: FrameworkGridViewModel())
}
