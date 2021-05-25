//
//  ContentView.swift
//  lab09
//
//  Created by Fung on 2021/5/24.
//

import SwiftUI



struct ContentView: View {
    @ObservedObject var vm: vm
    
    var body: some View {
        
        VStack(spacing:50){
            
                Text("猜拳遊戲")
                    .font(.system(size: 24))
                    .bold()
              
            
            .padding([.top],30)
            
                HStack{
                    Image("monster09")
                        .resizable()
                    chooseicon(input: vm.comint)
                    
                    
                    
                }
                .padding([.top],20)
                .frame(width: 300, height: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                
            
        ZStack{
                Image("line")
            
            vsstate(winner: vm.winner)
                    .resizable()
                    .frame(width: 200, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            
            
        }
        
                
          
                HStack{
                    Image("energy_ha")
                        .resizable()
                    chooseicon(input: vm.playerint)
                    
                    
                    
                }
                .frame(width: 300, height: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                Button(action: {
                    vm.startgame()
                }, label: {
                    Image("ball")
                })
                .frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                
            HStack{
                Text("結果:")
                if vm.winner == ""{
                    Text("請猜拳！")
                }else if vm.winner == "player"{
                    Image("energy_ha")
                        .resizable()
                        .frame(width:50,height:50)
                }else if vm.winner=="com"{
                    Image("monster09")
                        .resizable()
                        .frame(width:50,height:50)
                }else{
                    Image("try")
                        .resizable()
                        .frame(width:50,height:50)
                }
            }
            
                Spacer()
            
           
            }
        
       
     
        
            
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(vm: vm())
    }
}


func chooseicon(input: Int) -> Image{
    switch input {
    case 0:
        return Image("rock")
            .resizable()
    case 1:
        return Image("scissor")
            .resizable()
    case 2:
        return Image("paper")
            .resizable()
    default:
        return Image("rock")
            .resizable()
    }
}


func vsstate(winner: String) -> Image{
    switch winner {
    case "nobody":
        return Image("try")
    case "player":
        return Image("win")
    case "com":
        return Image("lose")
    default:
        return Image("vs")
    }
}
