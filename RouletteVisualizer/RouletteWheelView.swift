//
//  RouletteWheelView.swift
//  RouletteVisualizer
//
//  Created by Kevin Green on 12/9/24.
//

import SwiftUI
import Charts

struct RouletteWheelView: View {
    @Binding var wheelType: WheelType
    
    @State private var sections: [RouletteNumber] = []
    
    @EnvironmentObject var bettingVM: BettingsViewModel
    
    init(wheelType: Binding<WheelType>) {
        _wheelType = wheelType
    }
    
    var body: some View {
        ZStack {
            // Outer colored circles
            Circle().stroke(Color.black, lineWidth: 33)
            Circle().stroke(Color.brown, lineWidth: 30)
            Circle().stroke(Color.gray, lineWidth: 10)

            // Actual wheel
            GeometryReader { proxy in
                Chart(sections, id: \.self) { section in
                    SectorMark(angle: .value("", 1), innerRadius: .ratio(0.6))
                        .foregroundStyle(bettingVM.selectedNumbers[section.num]! > 0 ? Color.yellow : section.color)
                        .annotation(position: .overlay) {
                            Text(section.num == -1 ? "00" : "\(section.num)")
                                .font(.caption)
                                .fontWeight(.semibold)
                                .padding()
                                .foregroundStyle(bettingVM.selectedNumbers[section.num]! > 0 ? section.color : .white)
                        }
                }
                .chartBackground { chartProxy in
                    GeometryReader { geometry in
                        if let anchor = chartProxy.plotFrame {
                            let frame = geometry[anchor]
                            Image(.rouletteWheelCenter)
                                .scaleEffect(0.6)
                                .position(x: frame.midX, y: frame.midY)
                                .rotationEffect(wheelType == .american ? Angle(degrees: 5) : Angle(degrees: -5))
                        }
                    }
                } // wheel center image
                .overlay {
                    Circle().stroke(Color.gray, lineWidth: 3)
                        .frame(width: proxy.size.width*0.75, height: proxy.size.width*0.75)
                } // wheel inner gray circle
                .rotationEffect(wheelType == .american ? Angle(degrees: -5) : Angle(degrees: 5))
            }
        }
        .onAppear {
            self.sections = Wheel.sections(for: $wheelType.wrappedValue)
        }
        .onChange(of: wheelType) { _, _ in
            self.sections = Wheel.sections(for: $wheelType.wrappedValue)
        }
    }
}



#Preview {
    ZStack {
        Color.table.ignoresSafeArea()
        
        RouletteWheelView(wheelType: .constant(.american))
            .frame(width: 250, height: 250)
            .environmentObject(BettingsViewModel())
    }
}





