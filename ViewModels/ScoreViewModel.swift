//
//  ScoreViewModel.swift
//  Code History
//
//  Created by Elvis Mendez on 1/25/23.
//

import Foundation

struct ScoreViewModel {
  let correctGuesses: Int
  let incorrectGuesses: Int
 
  var percentage: Int {
    (correctGuesses * 100 / (correctGuesses + incorrectGuesses))
  }
}
