//
//  StoryBrain.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct StoryBrain {
     let stories = [story(title: "You see a fork in the road.", choice1: "Take a left.", choice2: "Take a right."),story(title: "You see a tiger.", choice1: "Shout for help.", choice2: "Play dead."), story(title: "You find a teasure chest.", choice1: "Open it.", choice2: "Check for traps.")]
       
       var questNumber = 0
    
    mutating func nextStory(_ userChoice: String) {
        if userChoice == stories[questNumber].choice1{
            questNumber += 1
         }else if userChoice == stories[questNumber].choice2 {
            questNumber += 2
         }
    }
    
    func getQuestion() -> String {
        return stories[questNumber].title
    }
    
    func getChoice1() -> String {
        return stories[questNumber].choice1
    }
    func getChoice2() -> String {
        return stories[questNumber].choice2
    }
}
