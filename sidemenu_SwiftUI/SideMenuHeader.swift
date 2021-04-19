//
//  SideMenuHeader.swift
//  sidemenu_SwiftUI
//
//  Created by Adsum MAC 2 on 19/04/21.
//

import SwiftUI

struct SideMenuHeader: View {
    
    @Binding var isShowing: Bool
    var body: some View {
        ZStack(alignment: .topTrailing) {
            
            Button(action: {
                withAnimation(.spring()) {
                    isShowing.toggle()
                }
            }, label: {
                Image(systemName: "xmark")
                    .frame(width: 32, height: 32, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .padding()
            })
            
            VStack(alignment: .leading){
                Image("image")
                    .resizable()
                    .scaledToFill()
                    .clipped()
                    .frame(width: 64, height: 64)
                    .clipShape(Circle())
                    .padding(.bottom, 20)
                    
                Text("Shubh")
                    .font(.system(size: 21, weight: .semibold))
                
                Text("@ramani")
                    .font(.system(size: 14))
                    .padding(.bottom, 20)
                HStack(spacing: 12) {
                    HStack(spacing: 4){
                        Text("1,234")
                            .bold()
                        Text("Following")
                       
                    }
                    HStack(spacing: 4){
                        Text("607")
                            .bold()
                        Text("Followers")
                    }
                    Spacer()
                }
                
                Spacer()
            }.padding()
        }
    }
}

struct SideMenuHeader_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuHeader(isShowing: .constant(true))
    }
}
