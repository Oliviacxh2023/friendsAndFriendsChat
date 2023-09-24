//
//  ChatRooms.swift
//  friendsAndFriendsChat
//
//  Created by olivia Chen on 9/23/23.
//

import SwiftUI

struct Message: Identifiable {
    var id = UUID()
    var content: String
    var isMe: Bool
    var user: User
}

struct User {
    var id: UUID
    var name: String
    var avatar: String
}

struct ChatRooms: View {
    @State private var messages: [Message] = [
           Message(content: "Hello!", isMe: false, user: User(id: UUID(), name: "John", avatar: "person.circle")),
           Message(content: "Hi there!", isMe: true, user: User(id: UUID(), name: "You", avatar: "person.circle.fill"))
       ]
    @State private var newMessage: String = ""

    var body: some View {
            
        VStack {
            VStack {
                ZStack{
                    RoundedRectangle(cornerRadius: 30)
                        .stroke(Color.black, lineWidth: 2)
                        .frame(width: 300, height: 50)
                    Text("Spicy Chengdu Room")
                        .font(.title)
                        .padding()
                       
                }}
            VStack {
                List(messages) { message in
                    MessageRow(message: message)
                }
                .padding()
                
                HStack {
                    TextField("Type a message", text: $newMessage)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding()
                    Button(action: sendMessage) {
                        Text("Send")
                    }
                    .padding()
                }
            }
            .navigationBarTitle("Chat")
        }
    }
    

    private func sendMessage() {
           guard !newMessage.isEmpty else { return }
           let message = Message(content: newMessage, isMe: true, user: User(id: UUID(), name: "You", avatar: "person.circle.fill"))
           messages.append(message)
           newMessage = ""
       }
}

struct MessageRow: View {
    var message: Message

    var body: some View {
       
        HStack {
            if message.isMe {
                Spacer()
            }

            VStack(alignment: message.isMe ? .trailing : .leading, spacing: 4) {
                HStack {
                    if !message.isMe {
                        Image(systemName: message.user.avatar)
                            .resizable()
                            .frame(width: 30, height: 30)
                            .clipShape(Circle())
                    }

                    Text(message.user.name)
                        .font(.caption)
                        .foregroundColor(.gray)
                }

                Text(message.content)
                    .padding(10)
                    .background(message.isMe ? Color.blue : Color.gray)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }

            if !message.isMe {
                Spacer()
            }
        }
        .padding(.horizontal)
    }
}





struct ChatRooms_Previews: PreviewProvider {
    static var previews: some View {
        ChatRooms()
    }
}
