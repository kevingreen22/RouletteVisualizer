//
//  ContentView.swift
//  RouletteVisualizer
//
//  Created by Kevin Green on 12/9/24.
//

import SwiftUI

struct ContentView: View {
    @State private var wheelType: WheelType = .american
    
    @EnvironmentObject var bettingVM: BettingsViewModel

    
    var body: some View {
        ZStack {
            Color.table
            
            VStack(alignment: .center) {
                TitleMenu
                Spacer()
                ClearAllButton.padding(.bottom, 4)
            }.padding(.vertical)
            
            HStack(spacing: 20) {
                RouletteWheelView(wheelType: $wheelType)
                    .frame(width: 260, height: 260)
                    .padding(.leading, 10)
                RouletteTableView(wheelType: $wheelType, /*cellWidth: 50,*/ cellHeight: 50)
                    .padding(.trailing, 40)
            }
        }
        .ignoresSafeArea()
        .frame(maxWidth: .infinity)
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
    
}



#Preview {
    ContentView()
        .environmentObject(BettingsViewModel())
}

