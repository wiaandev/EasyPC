//
//  StopwatchView.swift
//  EasyPC
//
//  Created by Wiaan Duvenhage on 2022/10/30.
//

//
//  Stopwatch.swift
//  StandApp
//
//  Created by Serafín Ennes Moscoso on 28/04/2021.
//

import SwiftUI

struct Stopwatch: View {

    /// Current progress time expresed in seconds
    @State private var progressTime = 0
    @State private var isRunning = false

    /// Computed properties to get the progressTime in hh:mm:ss format
    var hours: Int {
        progressTime / 3600
    }

    var minutes: Int {
        (progressTime % 3600) / 60
    }

    var seconds: Int {
        progressTime % 60
    }

    /// Increase progressTime each second
    @State private var timer: Timer?

    var body: some View {
        VStack {
            Text("Time Yourself")
                .font(.largeTitle.bold())
                .foregroundColor(Color("Purple"))
            Text("See how fast you can install this component")
                .foregroundColor(Color("Purple"))
                .padding(.bottom, 20)
            HStack(spacing: 10) {
                StopwatchUnit(timeUnit: hours, timeUnitText: "HR", color: Color("Purple"))
                Text(":")
                    .font(.system(size: 48))
                    .foregroundColor(Color("Purple"))
                    .offset(y: -18)
                StopwatchUnit(timeUnit: minutes, timeUnitText: "MIN", color: Color("Purple"))
                Text(":")
                    .font(.system(size: 48))
                    .foregroundColor(Color("Purple"))
                    .offset(y: -18)
                StopwatchUnit(timeUnit: seconds, timeUnitText: "SEC", color: Color("Purple"))
            }

            HStack {
                Button(action: {
                    if isRunning{
                        timer?.invalidate()
                    } else {
                        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: { _ in
                            progressTime += 1
                        })
                    }
                    isRunning.toggle()
                }) {
                    ZStack {
                        RoundedRectangle(cornerRadius: 15.0)
                            .frame(width: 120, height: 50, alignment: .center)
                            .foregroundColor(isRunning ? Color("Purple") : Color("PurpleDark"))

                        Text(isRunning ? "Stop" : "Start")
                            .font(.title)
                            .foregroundColor(Color("White"))
                    }
                }

                Button(action: {
                    progressTime = 0
                }) {
                    ZStack {
                        RoundedRectangle(cornerRadius: 15.0)
                            .frame(width: 120, height: 50, alignment: .center)
                            .foregroundColor(Color("Blue"))

                        Text("Reset")
                            .font(.title)
                            .foregroundColor(Color("White"))
                    }
                }
            }
        }
    }
}


struct StopwatchUnit: View {

    var timeUnit: Int
    var timeUnitText: String
    var color: Color

    /// Time unit expressed as String.
    /// - Includes "0" as prefix if this is less than 10.
    var timeUnitStr: String {
        let timeUnitStr = String(timeUnit)
        return timeUnit < 10 ? "0" + timeUnitStr : timeUnitStr
    }

    var body: some View {
        VStack {
            ZStack {
                RoundedRectangle(cornerRadius: 15.0)
                    .stroke(style: StrokeStyle(lineWidth: 1, lineCap: .round))
                    .fill(color)
                    .frame(width: 75, height: 75, alignment: .center)

                HStack(spacing: 2) {
                    Text(timeUnitStr.substring(index: 0))
                        .font(.system(size: 48))
                        .frame(width: 28)
                        .foregroundColor(Color("Purple"))
                    Text(timeUnitStr.substring(index: 1))
                        .font(.system(size: 48))
                        .frame(width: 28)
                        .foregroundColor(Color("Purple"))
                }
            }

            Text(timeUnitText)
                .foregroundColor(Color("Purple"))
                .font(.system(size: 16))
        }
        .foregroundColor(.white)
    }
}

struct Stopwatch_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Stopwatch()
        }
    }
}

extension String {
    func substring(index: Int) -> String {
        let arrayString = Array(self)
        return String(arrayString[index])
    }
}
