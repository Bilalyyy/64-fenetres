//
//  Model.swift
//  64 fenetres
//
//  Created by bilal on 14/12/2021.
//

import Foundation

struct Model {
    
    private var windows         = [Int:State]()
    private var visitorNumber   = Int()
    
    private var isPeer          : Bool {
        return visitorNumber % 2 == 0
    }
    
    
    
    enum State {
        case G,D,F,O
    }
    
    
    mutating private func actionOnLeft(_ state: State,_ windowNumb: Int) {
        switch state {
        case .D:
            windows[windowNumb] = .O
        case  .O:
            windows[windowNumb] = .D
        case .G:
            windows[windowNumb] = .F
        case .F:
            windows[windowNumb] = .G
        }
    }
    
    mutating private func actionOnRight(_ state: State,_ windowNumb: Int) {
        switch state {
        case .G:
            windows[windowNumb] = .O
        case .O :
            windows[windowNumb] = .G
        case .D:
            windows[windowNumb] = .F
        case .F:
            windows[windowNumb] = .D
        }
    }
    
    mutating private func visitorAction(input: [Int : State]){
        for (windowNumb, state) in windows {
            if windowNumb % visitorNumber == 0 {
                if isPeer {
                    actionOnLeft(state, windowNumb)
                    
                } else {
                    actionOnRight(state, windowNumb)
                    
                }
            }
        }
    }
    
    mutating private func initializer(input: [Int:State]){
        for i in 1...64 {
            windows[i] = .G
        }
    }

    mutating private func theLastVisitor(finished: [Int:State]){
        for number in 1...64 {
            switch windows[number] {
            case .G:
                windows[number] = .O
            case .D:
                windows[number] = .F
            case .O:
                windows[number] = .G
            case .F:
                windows[number] = .D
            case .none:
                print("Fatal Error T_T ")
                break
            }
        }
    }
    
    
    mutating func action() {
        for _ in 1...64 {
            visitorNumber += 1
            switch visitorNumber {
            case 1:
                initializer(input: windows)
            case 2...63:
                visitorAction(input: windows)
            default:
                theLastVisitor(finished: windows)
            }
        }
    }

    func selectWiner()-> [String] {
        var outpout = [String]()
        for (winer, _) in windows {
            if windows[winer] == .O {
                outpout.append("felicitation visiteur numero: \(winer), vous avez gagné!")
            }
        }
        return outpout
    }

}
