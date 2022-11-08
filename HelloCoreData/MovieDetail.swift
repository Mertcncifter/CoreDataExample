//
//  MovieDetail.swift
//  HelloCoreData
//
//  Created by mert can çifter on 7.11.2022.
//

import SwiftUI

struct MovieDetail: View {
    
    let movie: Movie
    
    @State private var movieName: String = ""
    let coreDM: CoreDataManager
    @Binding var needsRefresh: Bool
    
    var body: some View {
        VStack {
            TextField(movie.title ?? "", text: $movieName).textFieldStyle(RoundedBorderTextFieldStyle())
            
            Button("Update") {
                if !movieName.isEmpty {
                    movie.title = movieName
                    coreDM.updateMovie()
                    needsRefresh.toggle()
                }
            }
        }
    }
}

struct MovieDetail_Previews: PreviewProvider {
    static var previews: some View {
        let coreDM = CoreDataManager()
        let movie = Movie(context: coreDM.persistentContainer.viewContext)
    
        MovieDetail(movie: movie, coreDM: coreDM,needsRefresh: .constant(false))
    }
}
