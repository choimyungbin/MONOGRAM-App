//
//  RoomList.swift
//  MONOGRAM-App
//
//  Created by 최명빈 on 2022/08/03.
//

import SwiftUI

struct RoomList: View {
    private var rooms : [Room] = Room.allRooms
    var body: some View {
        NavigationView{
            List{
                ForEach(rooms, id: \.id){
                    room in NavigationLink{
                        DetailView(room: room)
                    } label:{
                        RoomCell(room: room)
                }.padding(10)
                }
            }.navigationTitle("방 목록")
        }
    }
}

struct RoomList_Previews: PreviewProvider {
    static var previews: some View {
        RoomList()
    }
}
