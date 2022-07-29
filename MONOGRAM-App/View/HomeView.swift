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
                NavigationView{
                    List{
                        ForEach(rooms, id: \.id){
                            room in NavigationLink(destination: DetailView(room: room)){
                                
                                HStack(){
                                    Text("\(room.title)").font(.system(size: 20))
                                    Image("locked_icon")
                                        .resizable().scaledToFit().frame(width: 20, height: 20).hidden(room.password)
                                    Spacer()
                                    VStack(){
                                        Text("\(room.level)*\(room.level)")
                                        Text("0/\(room.maxParticipant)")
                                    }
                                }
                            }.padding(10)
                        }
                    }
                }
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
extension View{
    func hidden(_ shouldHide: String?) -> some View {
        opacity(shouldHide != nil ? 0 : 1)
    }
}
struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
