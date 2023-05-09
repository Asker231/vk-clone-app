//
//  SomeViewRoute.swift
//  clone-vk-app
//
//  Created by ASKER on 09.05.2023.
//

import SwiftUI

struct SomeViewRoute:View{
    @State var txt:String
    @State var img:String
    @State var desc:String
    var body: some View{
        VStack(alignment: .leading){
            Text("\(txt)")
            Image(img)
                .resizable()
                .frame(maxWidth: .infinity,maxHeight: 500)
            Text("\(desc)")
        }.padding(.vertical,10)
    }
}

