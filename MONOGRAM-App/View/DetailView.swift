//
//  DetailView.swift
//  MONOGRAM-App
//
//  Created by 최명빈 on 2022/07/29.
//

import SwiftUI

struct DetailView: View {
    var room : Room
    
    var body: some View {
        HStack(spacing: 70){
            Text("0/\(room.maxParticipant)")
            Text("\(room.title)")
            Text("\(room.level)*\(room.level)")
        }.padding()
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(room: Room.sampleRoom)
    }
}
