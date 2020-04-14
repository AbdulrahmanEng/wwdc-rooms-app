//
//  RoomStore.swift
//  Rooms
//
//  Created by Abdulrahman on 14/04/2020.
//  Copyright © 2020 Abdulrahman. All rights reserved.
//

import SwiftUI
import Combine

class RoomStore: ObservableObject {
    @Published var rooms: [Room] {
        didSet { self.objectWillChange.send() }
    }
    
    init(rooms: [Room] = []) {
        self.rooms = rooms
    }
    
    let objectWillChange = ObservableObjectPublisher()
}
