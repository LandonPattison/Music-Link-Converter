//
//  ContentView.swift
//  MusicConverterApp
//
//  Created by Landon Pattison on 6/2/22.
//

import SwiftUI

struct ContentView: View {
    @State var link: String = ""
    @State var service: String = ""
    
    var body: some View {
        ZStack{
            Color.black.ignoresSafeArea()
            VStack(){
                VStack(){
                    Text("Enter Link")
                        .foregroundColor(Color.white)
                    TextField("", text: $link)
                        .placeholder(when: link.isEmpty){
                            Text("Link").foregroundColor(.gray)
                        }
                        .foregroundColor(Color.white)
                        .frame(height: 55)
                        .textFieldStyle(PlainTextFieldStyle())
                        .padding([.horizontal], 4)
                        .cornerRadius(16)
                        .overlay(RoundedRectangle(cornerRadius: 16).stroke(Color.gray))
                        .padding([.horizontal], 24)
                        
                       
                }.padding(.vertical, 100)
                VStack(){
                    Text("Choose Service").padding(.bottom).foregroundColor(Color.white)
                    ScrollView(.horizontal, showsIndicators: false){
                        HStack(spacing: 20){
                            /*
                            ForEach(0..<10) {
                                        Text("Item \($0)")
                                            .foregroundColor(.white)
                                            .font(.largeTitle)
                                            .frame(width: 100, height: 100)
                                            .background(.black)
                            }
                            */
                            Button(action: {
                                if(service == "Apple Music"){
                                    service = ""
                                }
                                else{
                                    service = "Apple Music"
                                }
                            }, label: {
                                Image("Apple_Music_Icon_RGB_sm_073120")
                                    .resizable()
                                    .frame(width: 70, height: 70)
                                    
                                    
                            })
                            Button(action: {
                                if(service == "Spotify"){
                                    service = ""
                                }
                                else{
                                    service = "Spotify"
                                }
                                
                            }, label: {
                                Image("Spotify_Icon_RGB_Green")
                                    .resizable()
                                    .frame(width: 70, height: 70)
                                    
                            })
                            
                            Button(action: {
                                if(service == "Youtube"){
                                    service = ""
                                }
                                else{
                                    service = "Youtube"
                                }
                            }, label: {
                                Image("youtube_social_square_red")
                                    .resizable()
                                    .frame(width: 70, height: 70)
                                    .cornerRadius(15)
                            })
                            Button(action: {
                                if(service == "Pandora"){
                                    service = ""
                                }
                                else{
                                    service = "Pandora"
                                }
                            }, label: {
                                Image("Pandora_App_Icon_RBG_Outline")
                                    .resizable()
                                    .frame(width: 70, height: 70)
                                    
                            })
                            Button(action: {
                                if(service == "Amazon Music"){
                                    service = ""
                                }
                                else{
                                    service = "Amazon Music"
                                }
                            }, label: {
                                Image("amazonmusic")
                                    .resizable()
                                    .frame(width: 70, height: 70)
                                    .cornerRadius(15)
                            })
                        }.padding(.leading, 25)
                    }
                }.padding(.bottom, 50)
                VStack(){
                    Text("\(service)")
                        .foregroundColor(Color.white)
                }
                VStack(){
                    HStack(){
                        
                        Button("Copy Link")
                        {
                            /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                        }
                        .frame(width: 150, height: 50)
                        .overlay(RoundedRectangle(cornerRadius: 25).stroke(Color.gray))
                        .padding(.trailing)
                        .foregroundColor(Color.white)
                        
                        Button("Send Message") {
                            /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                        }
                        .frame(width: 150, height: 50)
                        .overlay(RoundedRectangle(cornerRadius: 25).stroke(Color.gray))
                        .padding(.leading)
                        .foregroundColor(Color.white)
                        
                    }
                }.padding(.top,50)
            }
        }
    }
}

extension View {
    func placeholder<Content: View>(
        when shouldShow: Bool,
        alignment: Alignment = .leading,
        @ViewBuilder placeholder: () -> Content) -> some View {

        ZStack(alignment: alignment) {
            placeholder().opacity(shouldShow ? 1 : 0)
            self
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 13 Pro")
    }
}
