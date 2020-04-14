//
//  RoomDetail.swift
//  Rooms
//
//  Created by Abdulrahman on 14/04/2020.
//  Copyright © 2020 Abdulrahman. All rights reserved.
//

import SwiftUI

struct RoomDetail: View {
    let room: Room
    @State private var zoomed = false
    
    var tap: some Gesture {
        TapGesture(count: 1)
            .onEnded { _ in
                withAnimation(.easeInOut(duration: 1)) {
                    self.zoomed.toggle()
                }
        }
    }
    var body: some View {
        VStack {
            ZStack(alignment: .topLeading) {
                // Room image
                Image(room.imageName)
                .resizable()
                    .aspectRatio(contentMode: zoomed ? .fill: .fit)
                .gesture(tap)
                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
                
                // Shows video icon when room has video conferencing and the room image is not zoomed
                if room.hasVideo && !zoomed {
                    Image(systemName: "video.fill")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .padding(.all)
                        .transition(.move(edge: .leading))
                }
            }
        }// Adds title to navigation bar
        .navigationBarTitle(Text(room.name), displayMode: .inline)
    }
}

struct RoomDetail_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            NavigationView {
                RoomDetail(room: testData[0])
            }
            NavigationView {
                RoomDetail(room: testData[3])
            }
        }
    }
}
