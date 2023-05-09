//
//  HomeView.swift
//  clone-vk-app
//
//  Created by ASKER on 09.05.2023.
//

import SwiftUI

struct HomeView: View {
    @State var isPresent = false
    @State var peoples:[String] = [
    "People1",
    "People2",
    "People3",
    "People4",
    "People1",
    "People2",
    "People3",
    "People4",
    ]
    @State var select = 1
    @State var posts:[PostModel] = [
        PostModel(image: "Photo1", text: "Фото на горе ", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur"),
        PostModel(image: "Photo2", text: "Street photo",description: "Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem."),
        PostModel(image: "Photo3", text: "Какая то вода на горе",description: "Как вы видите, большинство слов этого отрывка De Finibus легко узнаваемы: именно он, по мнению экспертов, лежит в основе фрагмента Lorem Ipsum. Вообще, сам текст посвящен размышлениям Цицерона о смысле наслаждений и страданий, а конкретно, тому факту, что порой для достижения желанного приходится терпеть лишения, а чрезмерные удовольствия иногда приводит к дурным последствиям. В конце абзаца философ заключает:Поэтому мудрец придерживается в этом случае следующего принципа выбора — или, отказываясь от удовольствия, он получает какие-то иные и даже бо́льшие наслаждения, или, претерпевая страдания, он избавляется от более жестоких.»"),
        PostModel(image: "Photo4", text: "Спокойный тип смотрит в даль",description: "Как уже упоминалось, в средние века наборщик текста был одновременно и типографом — именно он создавал образцы шрифтов для книг, чтобы проиллюстрировать различные начертания. У одного из них возникла идея, что если лишить текст какого-либо смысла, то ничто не будет отвлекать зрителя от его графического исполнения. В результате, взяв находившуюся под рукой страницу книги на небиблейской латыни — Цицерона — он превратил ее в полную тарабарщину: латинское слово «боль» или «страдание» dolorem стало несуществующим «lorem», и так родился ныне всем известный абзац"),
        PostModel(image: "Photo1", text: "Фото на горе ", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur"),
        PostModel(image: "Photo2", text: "Street photo",description: "Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem."),
        PostModel(image: "Photo3", text: "Какая то вода на горе",description: "Как вы видите, большинство слов этого отрывка De Finibus легко узнаваемы: именно он, по мнению экспертов, лежит в основе фрагмента Lorem Ipsum. Вообще, сам текст посвящен размышлениям Цицерона о смысле наслаждений и страданий, а конкретно, тому факту, что порой для достижения желанного приходится терпеть лишения, а чрезмерные удовольствия иногда приводит к дурным последствиям. В конце абзаца философ заключает:Поэтому мудрец придерживается в этом случае следующего принципа выбора — или, отказываясь от удовольствия, он получает какие-то иные и даже бо́льшие наслаждения, или, претерпевая страдания, он избавляется от более жестоких.»"),
        PostModel(image: "Photo4", text: "Спокойный тип смотрит в даль",description: "Как уже упоминалось, в средние века наборщик текста был одновременно и типографом — именно он создавал образцы шрифтов для книг, чтобы проиллюстрировать различные начертания. У одного из них возникла идея, что если лишить текст какого-либо смысла, то ничто не будет отвлекать зрителя от его графического исполнения. В результате, взяв находившуюся под рукой страницу книги на небиблейской латыни — Цицерона — он превратил ее в полную тарабарщину: латинское слово «боль» или «страдание» dolorem стало несуществующим «lorem», и так родился ныне всем известный абзац")
    ]
    var body: some View {
        NavigationView {
            ScrollView(.vertical){
                VStack{
                    HStack{
                        HStack{
                            Button {
                                //
                            } label: {
                                Image(systemName: "camera")
                                    .resizable()
                                    .frame(width: 20,height: 20)
                                    .foregroundColor(.white)
                            }
                            Text("Главная")
                                .font(.system(size: 14))
                                .bold()
                                .foregroundColor(.white)
                        }
                        Spacer()
                        HStack(spacing: 20){
                            Button {
                                //
                            } label: {
                                Image(systemName:"plus")
                                    .resizable()
                                    .frame(width: 20,height: 20)
                                    .foregroundColor(.white)
                            }
                            Button {
                                //
                            } label: {
                                Image(systemName:"magnifyingglass")
                                    .resizable()
                                    .frame(width: 20,height: 20)
                                    .foregroundColor(.white)
                            }
                            NavigationLink {
                                NotificationView()
                            } label: {
                                Image(systemName:"bell")
                                    .resizable()
                                    .frame(width: 20,height: 20)
                                    .foregroundColor(.white)
                            }

                            
                        }
                    }.padding()
                    HStack(spacing: 40){
                        VStack{
                            HStack{
                                Text("Новости")
                                    .font(.system(size: 13))
                                    .bold()
                                    .foregroundColor(.white)
                                Button {
                                    //
                                } label: {
                                    Image(systemName:"arrow.down.circle")
                                        .resizable()
                                        .frame(width: 15,height: 15)
                                        .foregroundColor(.white)
                                }
                                
                            }
                            .onTapGesture {
                                withAnimation(.spring()){
                                    select = 1
                                }
                            }
                            
                            Rectangle()
                                .frame(width: 80,height: 2)
                                .foregroundColor(.blue)
                                .opacity(select == 1 ? 1 : 0 )
                            
                            
                            
                        }
                        VStack{
                            Button {
                                select = 2
                            } label: {
                                Text("Для вас")
                                    .font(.system(size: 13))
                                    .bold()
                                    .foregroundColor(.white)
                            }
                            Rectangle()
                                .frame(width: 80,height: 2)
                                .foregroundColor(.blue)
                                .opacity(select == 2 ? 1 : 0 )
                        }
                        .onTapGesture{
                            withAnimation(.spring()){
                                select = 2
                            }
                        }
                        
                    }.frame(maxWidth: .infinity)
                        .padding()
                    Divider()
                    if select == 1{
                        ScrollView(.horizontal,showsIndicators: false){
                            HStack{
                                ForEach(0..<peoples.count){ el in
                                    VStack{
                                        Image(peoples[el])
                                            .resizable()
                                            .frame(width: 80,height: 80)
                                    }
                                    .cornerRadius(50)
                                }
                            }
                            .padding(.horizontal,10)
                            
                        }
                    }
                }
                .frame(maxWidth: .infinity)
                .padding(.top,40)
                .padding(.bottom,10)
                .background(Color("primary"))
                .cornerRadius(10)
                
                //MARK: - Section post
                if select == 1{
                    
                    VStack{
                        ForEach(posts){ el in
                            NavigationLink {
                                ScrollView(.vertical){
                                    SomeViewRoute(txt: el.text, img: el.image, desc: el.description)
                                }
                            } label: {
                                VStack(alignment: .leading, spacing: 10){
                                    Text("\(el.text)")
                                        .foregroundColor(.white)
                                    Image(el.image)
                                        .resizable()
                                        .frame( maxWidth: .infinity)
                                   
                                    HStack(spacing:20){
                                        Button {
                                            //
                                        } label: {
                                            Image(systemName: "heart")
                                                .resizable()
                                                .frame(width: 20, height: 20)
                                                .foregroundColor(.white)
                                        }
                                        
                                        Button {
                                            //
                                        } label: {
                                            Image(systemName: "message.fill")
                                                .resizable()
                                                .frame(width: 20, height: 20)
                                                .foregroundColor(.white)
                                        }
                                        
                                        Spacer()
                                        
                                    }.padding(.horizontal,10)
                                }
                                .frame( maxWidth: .infinity, maxHeight: 300)
                                .padding(.vertical)
                                .background(Color("primary"))
                                .cornerRadius(10)
                            }
                            
                        }
                    }
                    .padding(.horizontal,3)
                }
                if select == 2 {
                    withAnimation(){
                        ForYouView()
                    }
                }
                
            }
            
            .padding(.bottom,90)
            .background(Color("bg"))
            .edgesIgnoringSafeArea(.all)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}



