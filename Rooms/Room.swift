//
//  Room.swift
//  Rooms
//
//  Created by Abdulrahman on 14/04/2020.
//  Copyright © 2020 Abdulrahman. All rights reserved.
//

import SwiftUI

struct Room: Identifiable {
    var id = UUID()
    var name: String
    var capacity: Int
    var hasVideo: Bool = false
    
    var imageName: String { return name }
    var thumbnailName: String { return name + "Thumb" }
}

let testData = [
    Room(name: "Damascus", capacity: 9, hasVideo: true),
    Room(name: "Athens", capacity: 15, hasVideo: true),
    Room(name: "Tokyo", capacity: 13, hasVideo: true),
    Room(name: "Delphi", capacity: 16, hasVideo: false),
    Room(name: "Uppsala", capacity: 18, hasVideo: true),
    Room(name: "Babylon", capacity: 12, hasVideo: false),
]
