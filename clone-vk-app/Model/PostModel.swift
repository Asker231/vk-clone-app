//
//  PostModel.swift
//  clone-vk-app
//
//  Created by ASKER on 09.05.2023.
//

import Foundation

struct PostModel:Identifiable,Hashable{
    let id = UUID()
    let image:String
    let text:String
    let description:String
    
}
