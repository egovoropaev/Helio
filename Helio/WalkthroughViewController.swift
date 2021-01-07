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
                })
                .offset(y: 50)
            }
        }
    }
}

struct GrateReminderView: View {
    var body: some View {
        VStack {
            WalkthroughView(image: "gratereminder", header: "Grate Reminder")
            
            NavigationLink(destination: TimeSavingView(), label: {
                Text("Next")
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
                .font(.system(size: 24,
                              weight: .regular,
                              design: .default))
            Text("Please enter your email address or phone number to reset your password").multilineTextAlignment(.center)
                .lineSpacing(8)
                .offset(y: -20)
                .font(.system(size: 14,
                              weight: .light,
                              design: .default))
                .foregroundColor(.gray)
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
