//
//  TabBar.swift
//  friendsAndFriendsChat
//
//  Created by olivia Chen on 9/23/23.
//

import SwiftUI

struct TabBar: View {var body: some View {
    TabView {
        ContentView()
            .tabItem{
                Image(systemName: "house")
                Text("Main")
            }
        ChatRooms()
            .tabItem{
                Image(systemName: "message")
                Text("ChatRooms")
            }
        CreateEvent()
            .tabItem{
                Image(systemName: "plus.circle")
                Text("Create Event")
            }
        Scan()
            .tabItem{
                Image(systemName: "barcode.viewfinder")
                Text("Scan")
            }
        
    }
}
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
