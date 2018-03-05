//
//  Game.swift
//  Rock Paper Scissors
//
//  Created by Roy Jezmajian on 3/3/18.
//  Copyright © 2018 Roy Jezmajian. All rights reserved.
//

import Foundation

//  Create an app with two view controllers that plays a version of the “Rock Paper Scissors” game.  If you aren't familiar with the game, you can get more info in the first couple paragraphs of the Wikipedia article.  The two view controllers are described below.

//  Requirements

//  The first (initial) view controller should have three buttons which allow the user to select a move: Rock, Paper, or Scissors.  Once a move button has been clicked, the first view controller should modally present the second view controller.

//  The second view controller should randomly select the computer's move, and display the result of the match.  The description of the results should be a form like “Rock vs. Paper.  You lose!” or “Rock vs. Rock. Tie.” or "Rock vs. Scissors.  You win!"  This result can be displayed in a label.  You can add images if you want to, but it is not required.

//  Create an enum to formalize the three possible moves:

enum RPSMove {
    case rock, paper, scissors
}

//  Create a class RPSGame which contains:

//  a property playerMove of type RPSMove optional
//  method gameResult() -> String which returns a String.  This method should pick a random computer move, and then return a String stating the result of the game from the perspective of the player.  For example, if playerMove is .rock and computerMove is .paper it should return something like "Rock vs. Paper.  You lose!".  If playerMove is .rock and computerMove is .scissors it should return something like "Rock vs. Scissors.  You win!"

class RPSGame {
    var playerMove: RPSMove?
    
    func gameResult() -> String {
        
        var computerMove: RPSMove?
        var result = ""
        
        if playerMove != nil {
            
            switch playerMove! {
            case .rock:
                result = "👊🏻"
            case .paper:
                result = "✋🏻"
            case .scissors:
                result = "✌🏻"
            }
            
            result += " vs "
            
            switch arc4random_uniform(3) {
            case 0:
                computerMove = .rock
                result += "👊🏽"
            case 1:
                computerMove = .paper
                result += "✋🏽"
            default:
                computerMove = .scissors
                result += "✌🏽"
            }
            
            result += "\n\n"
            
            if playerMove == computerMove {
                result += "Tie."
            } else if playerMove! == .rock && computerMove! == .scissors || playerMove! == .paper && computerMove! == .rock || playerMove! == .scissors && computerMove == .paper {
                result += "You win!"
            } else {
                result += "You lose!"
            }
        }
        
        return result
    }
}

//  Once you have created the enum and class, you are free to use them to create the full game app as you see fit.  One approach is to have 3 Swift files; one for each ViewController, and a third Swift file which contains the enum, class, and an instance of the class.

var game = RPSGame()

