//
//  ContentView.swift
//  SearchableDemo
//
//  Created by Umar Haroon on 5/3/22.
//

import SwiftUI

struct ContentView: View {
    @StateObject var dataManager: DataManager = DataManager()
    @State var searchString: String = ""
    var body: some View {
        NavigationView {
            // load datamanager view data from func, use a search string
            List(dataManager.viewData(filterString: searchString), id: \.self) { data in
                //load via text
                Text(data)
            }
            .searchable(text: $searchString, prompt: "Search")
            .navigationTitle("Search Demo")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
