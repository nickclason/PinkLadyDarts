//
//  X01GameTypeSelectionView.swift
//  PinkLadyDarts
//
//  Created by Nick Clason on 2/20/20.
//  Copyright © 2020 Nick Clason. All rights reserved.
//

import SwiftUI

struct X01GameTypeSelectionView: View {
    
    
    @ObservedObject var viewRouter: ViewRouter
    
    var body: some View {
        
        ZStack {
            LinearGradient(Color.darkStart, Color.darkEnd)
            
            VStack(spacing: 40) {
                Button(action: {
                    self.viewRouter.currentPage = "X01Game"
                    self.viewRouter.X01GameScore = 301
                }) {
                    Text("301")
                        .foregroundColor(.white)
                }
                .buttonStyle(ColorfulCircleButtonStyle())
                
                Button(action: {
                    self.viewRouter.currentPage = "X01Game"
                    self.viewRouter.X01GameScore = 501
                }) {
                    Text("501")
                        .foregroundColor(.white)
                }
                .buttonStyle(ColorfulCircleButtonStyle())
                
                Button(action: {
                    self.viewRouter.currentPage = "X01Game"
                    self.viewRouter.X01GameScore = 701
                }) {
                    Text("701")
                        .foregroundColor(.white)
                }
                .buttonStyle(ColorfulCircleButtonStyle())
                
                Button(action: {
                    self.viewRouter.currentPage = "mainMenu"
                }) {
                    Image(systemName: "house.fill")
                        .foregroundColor(.white)
                }
                .buttonStyle(ColorfulCircleButtonStyle())
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
    
}



struct X01GameTypeSelectionView_Previews: PreviewProvider {
    static var previews: some View {
        X01GameTypeSelectionView(viewRouter: ViewRouter())
    }
}
