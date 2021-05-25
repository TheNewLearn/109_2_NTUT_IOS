//
//  vm.swift
//  lab09
//
//  Created by Fung on 2021/5/24.
//

import Foundation

class vm: ObservableObject{
   @Published var vmodel = game(player: 0, com: 0)
    func startgame() -> Void {
       vmodel = game(player: Int.random(in: 0...2), com: Int.random(in: 0...2))
        print(vmodel.com)
        print(vmodel.player)
        if vmodel.player == 0 && vmodel.com == 1{
            vmodel.winner = "player"
        }else if vmodel.player == vmodel.com{
            vmodel.winner = "nobody"
        }else if vmodel.player == 0 && vmodel.com == 2{
            vmodel.winner = "com"
        }else if vmodel.player == 1 && vmodel.com == 0{
            vmodel.winner = "com"
        }else if vmodel.player == 1 && vmodel.com == 2{
            vmodel.winner = "player"
        }else if vmodel.player == 2 && vmodel.com == 0{
            vmodel.winner = "player"
        }else if vmodel.player == 2 && vmodel.com == 1{
            vmodel.winner = "com"
        }
    }
    
    var playerint: Int{
        vmodel.player
    }
    
    var comint: Int{
        vmodel.com
    }
    
    var winner: String{
        vmodel.winner
    }
  
    
    
    
    
    
    
    
    
}
