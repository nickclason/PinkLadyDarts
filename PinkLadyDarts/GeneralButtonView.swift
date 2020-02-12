//
//  GeneralButtonView.swift
//  PinkLadyDarts
//
//  Created by Nick Clason on 2/8/20.
//  Copyright © 2020 Nick Clason. All rights reserved.
//

import SwiftUI

struct GeneralButtonView: View {
   
    var btnText: String // text displayed in button
    let generator = UIImpactFeedbackGenerator(style: .medium) // haptic feedback on regular tap

    @ObservedObject var myGame: X01Game
    
    
    var body: some View {
        
        ZStack {
            Rectangle().fill(Color(.darkGray)) // button background color
            Text(btnText).multilineTextAlignment(.center) // text written to button
        }
        .onTapGesture()
            {
                // Regular tap:
                //
                // TODO: This is where the logic for what to do after a button is pressed normally (back/next player mostly???)
                // i should really make this button take a closure? or something as an input
                
                
                self.generator.impactOccurred() // make phone go bzzzzz
                self.myGame.switchPlayers()
                
                
        }
            .border(Color.black, width: 1) // border color
            .foregroundColor(.black) // text color
            .clipped()

    }
}
