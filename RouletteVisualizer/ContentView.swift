//
//  ContentView.swift
//  RouletteVisualizer
//
//  Created by Kevin Green on 12/9/24.
//

import SwiftUI
import WebKit
import KGViews

struct ContentView: View {
    @State private var wheelType: WheelType = .american
    @State private var showWebView = false
    @EnvironmentObject var bettingVM: BettingsViewModel

    
    var body: some View {
        ZStack {
            bettingVM.currentTableColor.asColor
            
            VStack(alignment: .center) {
                TitleMenu
                Spacer()
                HStack {
                    ClearAllButton.padding(.bottom, 4)
                }
            }.padding(.vertical)
            
            HStack(spacing: 20) {
                RouletteWheelView(wheelType: $wheelType)
                    .frame(width: 260, height: 260)
                    .padding(.leading, 10)
                RouletteTableView(wheelType: $wheelType, cellHeight: 50)
                    .padding(.trailing, 40)
            }
        }
        .overlay(alignment: .bottomTrailing) {
            ShowWebViewButton
                .padding([.trailing, .bottom], 30)
        }
        
        .ignoresSafeArea()
        .frame(maxWidth: .infinity)
                
        .fullScreenCover(isPresented: $showWebView) {
            WebKitView(url: URL(string: "https://www.roulettestar.com/guide/bets-odds/")!)
                .overlay(alignment: .topTrailing) {
                    CloseButton(iconName: "xmark", withBackground: true) {
                        showWebView.toggle()
                    }.padding([.top, .trailing], 30)
                }
                .ignoresSafeArea()
        }
    }
    
    fileprivate var TitleMenu: some View {
        Menu {
            Button {
                wheelType = .american
            } label: {
                HStack {
                    Text("American")
                    if wheelType == .american {
                        Image(systemName: "checkmark")
                    }
                }
            } // American wheel Label
            Button {
                wheelType = .european
            } label: {
                HStack {
                    Text("European")
                    if wheelType == .european {
                        Image(systemName: "checkmark")
                    }
                }
            } // European Wheel Label
            Menu {
                Button {
                    bettingVM.currentTableColor = .green
                } label: {
                    HStack {
                        Text("Green Felt")
                        if bettingVM.currentTableColor == .green {
                            Image(systemName: "checkmark")
                        }
                    }
                }
                Button {
                    bettingVM.currentTableColor = .black
                } label: {
                    HStack {
                        Text("Black Felt")
                        if bettingVM.currentTableColor == .black {
                            Image(systemName: "checkmark")
                        }
                    }
                }
                Button {
                    bettingVM.currentTableColor = .blue
                } label: {
                    HStack {
                        Text("Blue Felt")
                        if bettingVM.currentTableColor == .blue {
                            Image(systemName: "checkmark")
                        }
                    }
                }
                Button {
                    bettingVM.currentTableColor = .purple
                } label: {
                    HStack {
                        Text("Purple Felt")
                        if bettingVM.currentTableColor == .purple {
                            Image(systemName: "checkmark")
                        }
                    }
                }
            } label: {
                HStack {
                    Text("Table Color")
                    Image(systemName: "tablecells.fill.badge.ellipsis")
                }
            } // Table Color Menu
        } label: {
            HStack {
                Text("Roulette Visualizer")
                    .font(.largeTitle)
                Image(systemName: "chevron.down")
            }
        } // Main Title label
        .foregroundStyle(Color.white)
    }
    
    fileprivate var ClearAllButton: some View {
        Button {
            bettingVM.clearAllSelectedBets()
        } label: {
            Text("Clear All").font(.title)
        }
        .buttonStyle(.borderedProminent)
        .foregroundStyle(bettingVM.currentTableColor.asColor)
        .tint(.white)
    }
    
    fileprivate var ShowWebViewButton: some View {
        Button {
            showWebView.toggle()
        } label: {
            Image(systemName: "percent")
                .resizable()
                .frame(width: 20, height: 20)
        }
        .clipShape(Circle())
        .buttonStyle(.borderedProminent)
        .foregroundStyle(bettingVM.currentTableColor.asColor)
        .tint(.white)
    }
    
}



#Preview {
    ContentView()
        .environmentObject(BettingsViewModel())
}

