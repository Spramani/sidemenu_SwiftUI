//
//  SideMenuView.swift
//  sidemenu_SwiftUI
//
//  Created by Adsum MAC 2 on 19/04/21.
//

import SwiftUI

struct SideMenuView: View {
    
    @Binding var isShowing: Bool
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.blue,Color.purple]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            
            VStack(){
                SideMenuHeader(isShowing: $isShowing)
                    .foregroundColor(.white)
                    .frame(height: 240)
                ForEach(SideMenuViewModel.allCases, id: \.self) { option in
                        NavigationLink(
                            destination: Text(option.title),
                            label: {
                                SideMenuOption(viewmodel: option)
                            })
                }
                Spacer()
            } .foregroundColor(.white)
        }.navigationBarHidden(true)
    }
}

struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuView(isShowing: .constant(true))
    }
}
