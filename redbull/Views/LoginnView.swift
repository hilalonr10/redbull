//
//  LoginnView.swift
//  redbull
//
//  Created by Hilal Öner on 4/27/24.
//

import SwiftUI

struct LoginnView: View {
    var body: some View {
        @State var email= ""
        @State var password= ""
        
        
           VStack{
                
                // header
              HeaderView()
                
                //form log in
                Form {
                    TextField("Email adress", text:$email )
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    SecureField("password", text=$password )
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                }
                
                
                //register
                
                
                
            }
        
    }
}

#Preview {
    LoginnView()
}
