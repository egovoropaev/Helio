//
//  ContentView.swift
//  Helio
//
//  Created by Илья on 07.01.2021.
//

import SwiftUI

struct MultipleDeviceView: View {
    var body: some View {
        NavigationView {
            VStack {
                WalkthroughView(image: "multiple", header: "Multiple Device")
                NavigationLink(destination: GrateReminderView(), label: {
                    Text("Next")
                        .font(Font.custom("JosefinSans-Regular", size: 15))
                        .foregroundColor(Color("BBC1C8"))
                })
                .offset(y: 50)
            }
        }
    }
}

struct GrateReminderView: View {
    var body: some View {
        VStack {
            WalkthroughView(image: "gratereminder", header: "Great Reminder")
            
            NavigationLink(destination: TimeSavingView(), label: {
                Text("Next")
                    .font(Font.custom("JosefinSans-Regular", size: 15))
                    .foregroundColor(Color("BBC1C8"))
            })
            .offset(y: 50)
        }
    }
}

struct TimeSavingView: View {
    var body: some View {
        VStack {
            WalkthroughView(image: "timesaving", header: "Time Saving & Productive")
        }
    }
}

struct WalkthroughView: View {
    
    var image: String
    var header: String
    
    var body: some View {
        VStack {
            Image(image)
                .offset(x: 10, y: -100)
                .frame(width: 224,
                       height: 203,
                       alignment: .center)
            Text(header)
                .offset(y: -40)
                .font(Font.custom("JosefinSans-SemiBold", size: 20))
                .foregroundColor(Color("1F314A"))
            Text("Please enter your email address or phone number to reset your password")
                .multilineTextAlignment(.center)
                .font(Font.custom("JosefinSans-Regular", size: 14))
                .lineSpacing(8)
                .offset(y: -20)
                .foregroundColor(Color("BBC1C8"))
                .frame(width: 295,
                       height: 48,
                       alignment: .center)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MultipleDeviceView()
    }
}
