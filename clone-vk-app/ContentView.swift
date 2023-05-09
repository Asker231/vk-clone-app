//
//  ContentView.swift
//  clone-vk-app
//
//  Created by ASKER on 09.05.2023.
//

import SwiftUI

struct ContentView: View {
    @State var  select = 1
    init(){
        UITableView.appearance().isHidden = true
    }
    
    var body: some View {
        
        NavigationView{
            ZStack(alignment: .bottom){
                
                TabView(selection: $select){
                    HomeView()
                        .tag(1)
                    ServicesView()
                        .tag(2)
                    MsgView()
                        .tag(3)
                    VideoPlayView()
                        .tag(4)
                }
                
                
                HStack{
                    Spacer()
                    Button {
                        withAnimation(.spring()){
                            select = 1
                        }
                    } label: {
                        Image(systemName: "house")
                            .resizable()
                            .frame(width: 25,height: 25)
                            .foregroundColor(select == 1 ? .white : Color("iconColor"))
                    }
                    Spacer()
                    Button {
                         withAnimation(.spring()){
                            select = 2
                        }
                    } label: {
                        Image(systemName: "square.grid.3x3.topleft.filled")
                            .resizable()
                            .frame(width: 25,height: 25)
                            .foregroundColor(select == 2 ? .white : Color("iconColor"))
                    }
                    Spacer()
                    Button {
                        withAnimation(.spring()){
                           select = 3
                       }
                    } label: {
                        Image(systemName: "message")
                            .resizable()
                            .frame(width: 25,height: 25)
                            .foregroundColor(select == 3 ? .white : Color("iconColor"))
                    }
                    Spacer()
                    Button {
                        withAnimation(.spring()){
                           select = 4
                       }
                    } label: {
                        Image(systemName: "play.circle")
                            .resizable()
                            .frame(width: 25,height: 25)
                            .foregroundColor(select == 4 ? .white : Color("iconColor"))
                    }
                    Spacer()
                }.frame(maxWidth: .infinity)
                    .padding(.vertical,30)
                    .background(Color("primary"))
                
            }.frame(maxWidth: .infinity,maxHeight: .infinity)
                .background(.black)
                .edgesIgnoringSafeArea(.bottom)
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
