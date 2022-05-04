//
//  DataManager.swift
//  SearchableDemo
//
//  Created by Umar Haroon on 5/3/22.
//

import Foundation

class DataManager: ObservableObject {
    var parentData: [String] = ["lorem", "ipsum", "dolor", "sit", "amet"]
    // since i don't have a network call i'm just using a parent array
    // the view just calls this function, irrespective of the filter string.
    // if there's nothign being searched it'll just return all the data
    // the view just has to call it and thats it
    
    func viewData(filterString: String?) -> [String] {
        if let filterString = filterString, filterString != "" {
            return parentData.filter { parentString in
                parentString.contains(filterString.lowercased())
            }
        } else {
            return parentData
        }
    }
}
