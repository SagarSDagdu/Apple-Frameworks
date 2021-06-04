//
//  FrameworkGridView.swift
//  Apple-Frameworks
//
//  Created by Sagar Dagdu on 03/06/21.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject private var viewModel = FrameworkGridViewModel()
    @State private var gridEnabled = true
    
    var body: some View {
        NavigationView {
            
            if gridEnabled {
                ScrollView {
                    LazyVGrid(columns: viewModel.columns, content: {
                        ForEach(viewModel.frameworkList) { framework in
                            FrameworkView(framework: framework).onTapGesture {
                                viewModel.selectedFramework = framework
                            }.sheet(isPresented: $viewModel.isShowingDetailView, content: {
                                FrameworkDetailView(framework: viewModel.selectedFramework ?? MockData.sampleFramework, isShowingDetailView: $viewModel.isShowingDetailView, isShowingSafariView: false)
                            })
                        }
                    })
                }
            } else {
                
            }
            
            ScrollView {
                LazyVGrid(columns: viewModel.columns, content: {
                    ForEach(viewModel.frameworkList) { framework in
                        FrameworkView(framework: framework).onTapGesture {
                            viewModel.selectedFramework = framework
                        }.sheet(isPresented: $viewModel.isShowingDetailView, content: {
                            FrameworkDetailView(framework: viewModel.selectedFramework ?? MockData.sampleFramework, isShowingDetailView: $viewModel.isShowingDetailView, isShowingSafariView: false)
                        })
                    }
                })
            }.navigationTitle("🍎 Frameworks").toolbar {
                Button(action: {
                    print("List!")
                    gridEnabled.toggle()
                }, label: {
                    Image(systemName: gridEnabled ? "list.dash" : "square.grid.2x2.fill")
                })
            }
        }
    }
}

struct FrameworkGridView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkGridView()
            .preferredColorScheme(.dark)
    }
}
