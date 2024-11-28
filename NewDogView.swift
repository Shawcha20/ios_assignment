//
//  NewDogView.swift
//  projectB
//
//  Created by Gaming Lab on 21/11/24.
//

import SwiftUI
// shawcha code
struct NewDogView: View {
    @EnvironmentObject var dataManager: DataManager
    @State private var newDog = ""

    var body: some View {
        VStack{
            TextField("Dog", text: $newDog)
            Button{
                dataManager.addDogs(dogBreed: newDog)
            }label:{
                Text("save")
            }
        }.padding()
    }
}

#Preview {
    NewDogView()
}
