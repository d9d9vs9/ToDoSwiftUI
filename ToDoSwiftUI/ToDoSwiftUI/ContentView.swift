//
//  ContentView.swift
//  ToDoSwiftUI
//
//  Created by Дмитрий Чумаков on 03.10.2020.
//

import SwiftUI

struct ContentView: View {
    
    fileprivate var models: [Model] = [.init(id: "0",
                                             title: "Sdaasdas"),
                                       .init(id: "1",
                                             title: "Sdasadasddasd"),
                                       .init(id: "2",
                                             title: "Sdaasdasdasdasdas")]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(models) { model in
                    Text(model.title)
                }
            }
            .navigationBarTitle("Model")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Model: Equatable, Identifiable {
    
    let id: String
    let title: String
    
    init(id: String, title: String) {
        self.id = id
        self.title = title
    }
    
}
