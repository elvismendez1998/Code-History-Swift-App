//
//  ContentView.swift
//  Code History
//
//  Created by Elvis Mendez on 10/8/22.
//

import SwiftUI

struct GameView: View {
    
    @StateObject var viewModel = GameViewModel()
    
    var body: some View {
       ZStack {
         GameColor.main.ignoresSafeArea()
         VStack {
             Text(viewModel.questionProgressText)
               .font(.callout)
               .multilineTextAlignment(.leading)
               .padding()
               QuestionView(question: viewModel.currentQuestion)
           }
       }
        
       .background(NavigationLink(destination: ScoreView(viewModel:
                                                  ScoreViewModel(correctGuesses: viewModel.correctGuesses,
                                                                 incorrectGuesses: viewModel.incorrectGuesses)),
                                  isActive: .constant(viewModel.gameIsOver),
                                  label: { EmptyView()
       })
       )
        
       //.background(NavigationLink("Game is Over") {
        
       .foregroundColor(.white)
       .navigationBarHidden(true)
       .environmentObject(viewModel)
     }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        //ChoiceTextView(choiceText: "Choice Text!")
        GameView()
    }
}
