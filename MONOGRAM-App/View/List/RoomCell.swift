//
//  RoomCell.swift
//  MONOGRAM-App
//
//  Created by 최명빈 on 2022/08/03.
//

import SwiftUI

struct RoomCell: View {
    var room : Room
    var body: some View {
        HStack(){
            Text("\(room.title)").font(.system(size: 20)).padding(.leading, 20)
            Image("locked_icon")
                .resizable().scaledToFit().frame(width: 20, height: 20).hidden(room.password)
            Spacer()
            VStack(){
                Text("\(room.level)*\(room.level)")
                Text("0/\(room.maxParticipant)")
            }.padding(.trailing, 20)
        }
    }
}
extension View{
    func hidden(_ shouldHide: String?) -> some View {
        opacity(shouldHide != nil ? 0 : 1)
    }
}
struct RoomCell_Previews: PreviewProvider {
    static var previews: some View {
        RoomCell(room: Room.allRooms[0])
        RoomCell(room: Room.allRooms[1])
    }
}
