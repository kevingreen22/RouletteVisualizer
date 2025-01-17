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
            Color.table
            
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
            }
            Button {
                wheelType = .european
            } label: {
                HStack {
                    Text("European")
                    if wheelType == .european {
                        Image(systemName: "checkmark")
                    }
                }
            }
        } label: {
            HStack {
                Text("Roulette Visualizer")
                    .font(.largeTitle)
                Image(systemName: "chevron.down")
            }
        }.foregroundStyle(Color.white)
    }
    
    fileprivate var ClearAllButton: some View {
        Button {
            bettingVM.clearAllSelectedBets()
        } label: {
            Text("Clear All").font(.title)
        }
        .buttonStyle(.borderedProminent)
        .foregroundStyle(Color.table)
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
        .foregroundStyle(Color.table)
        .tint(.white)
    }
    
}



#Preview {
    ContentView()
        .environmentObject(BettingsViewModel())
}

