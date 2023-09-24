//
//  ContentView.swift
//  friendsAndFriendsChat
//
//  Created by olivia Chen on 9/23/23.
//

import SwiftUI

struct ContentView: View {
    @State private var searchText: String = ""
    var body: some View {
        HStack {
            VStack {// Search Bar
                HStack {
                    TextField("Search", text: $searchText)
                        .padding(7)
                        .background(Color(.systemGray6))
                        .cornerRadius(8)
                    Button(action: {
                        // Handle the search action
                    }) {
                        Image(systemName: "magnifyingglass")
                            .imageScale(.medium)
                            .foregroundColor(.black)
                    }
                    Button(action: {
                                        // Handle the other button action
                                        print(" Follow Me")
                                    }) {
                                        VStack {
                                            Image(systemName: "heart.fill")
                                                .imageScale(.large)
                                            Text("Follow Me")
                                        }
                                       
                        
                        
                                    }
                    
                }
                .padding(.horizontal)
                .padding(.top, 16)
                
                // Rest of your content
                ZStack {
                    RoundedRectangle(cornerRadius: 30)
                        .stroke(Color.black, lineWidth: 2)
                        .frame(width: 350, height: 150)
                    
                    VStack(alignment: .leading){
                        Text("Spicy Chengdu")
                        Text("Happy hour: Free Fried Chickens!")
                        Text("Location: Spicy hotpot at BU")
                            .multilineTextAlignment(.leading)
                            .lineLimit(2)
                        Text("Participants 17")
                    }
                }
                ZStack {
                    RoundedRectangle(cornerRadius: 30)
                        .stroke(Color.black, lineWidth: 2)
                        .frame(width: 350, height: 150)
                    
                    VStack (alignment: .leading){
                        Text("Sep 24")
                            .multilineTextAlignment(.trailing)
                        Text("Spicy Chengdu")
                            .multilineTextAlignment(.leading)
                        Text("Free Fried Chickens!")
                            .multilineTextAlignment(.leading)
                        Text("free Fried Chickens!")
                            .multilineTextAlignment(.leading)
                    }


                }
                ZStack {
                    RoundedRectangle(cornerRadius: 30)
                        .stroke(Color.black, lineWidth: 2)
                        .frame(width: 350, height: 150)
                    
                    VStack(alignment: .leading){
                        Text("Spicy Chengdu")
                        Text("Free Fried Chickens!")
                        Text("Location: Spicy hotpot at BU")
                            .multilineTextAlignment(.leading)
                            .lineLimit(2)
                        Text("Participants 17")
                    }
                }
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
