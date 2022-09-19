//
//  ContentView.swift
//  Students Info
//
//  Created by AIR on 19/09/2022.
//

import SwiftUI

struct StudentsDetails : Identifiable {
    let id = UUID ()
    let fullName: String
    let year: Int
    let age: Int
}

struct ContentView: View {
    @State var Students = [StudentsDetails(fullName: "Ahmed", year: 3, age: 21),StudentsDetails(fullName: "Sara", year: 2, age: 20),StudentsDetails (fullName: "Noor", year: 1, age: 18)]
    
    
    
    var body: some View {
        VStack {
            Image ("id")
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            Text ("سجل الطلبة")
                .font(.title)
                .fontWeight(.semibold)
            
            ScrollView{
                VStack{
                    ForEach(Students) {
                        student in
                        
                        Text(student.fullName)
                        Text("\(student.year )")
                        Text("\(student.age )")
                            
                        
                       
                        
                    }
                }
            }
            Spacer()
            Text("عدد الطلبة المسجلين: ٣")
                .font(.title)
                .fontWeight(.medium)
                
            
        }
        
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
