//
//  HomeView.swift
//  MONOGRAM-App
//
//  Created by 최명빈 on 2022/07/09.
//

import SwiftUI

struct HomeView: View {
    private var rooms : [Room] = Room.allRooms
    var body: some View {
            VStack{
                HStack{
                    Text("MONOGRAM")
                        .font(.title)
                        .foregroundColor(.green)
                    Image("프로필")
                        .resizable()
                        .frame(width: 40, height: 40)
                        .clipShape(Circle())
                }
                RoomList()
                HStack{
                    Button{
                        
                    }label:{
                        Text("방만들기")
                    }
                    Button{
                        
                    }label:{
                        Text("빠른시작")
                    }
                    Button{
                        
                    }label:{
                        Text("혼자하기")
                    }
                }
            }
        }
    
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
