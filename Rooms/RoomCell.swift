//
//  RoomCell.swift
//  Rooms
//
//  Created by Abdulrahman on 14/04/2020.
//  Copyright © 2020 Abdulrahman. All rights reserved.
//

import SwiftUI

struct RoomCell: View {
    let room: Room
    var body: some View {
        NavigationLink(destination: RoomDetail(room: room)) {
            HStack {
                Image(room.thumbnailName)        .clipShape(Rectangle())
                    .frame(width: 50, height: 50)
                    .cornerRadius(8)
                VStack(alignment: .leading) {
                    Text(room.name)
                    Text("\(room.capacity) people")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                }
            }
        }
    }
}
