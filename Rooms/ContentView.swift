//
//  ContentView.swift
//  Rooms
//
//  Created by Abdulrahman on 14/04/2020.
//  Copyright © 2020 Abdulrahman. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var rooms: [Room] = []
    var body: some View {
        NavigationView {
            List(rooms) { room in
                RoomCell(room: room)
            }.navigationBarTitle(Text("Rooms"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(rooms: testData)
    }
}
