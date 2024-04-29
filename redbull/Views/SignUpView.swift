//
//  SiginView.swift
//  redbull
//
//  Created by Hilal Öner on 4/27/24.
//

import SwiftUI

struct SignUpView: View {
    @State private var username: String = ""
    @State private var password: String = ""
    @State private var isSignedUp: Bool = false
    @State private var email: String = ""
    @State private var navigateToCategoryView = false
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.logininview
                    .edgesIgnoringSafeArea(.all)
                
                VStack {
                    Text("YOU READY!")
                        .foregroundColor(.gray)
                        .font(.largeTitle)
                        .bold()
                        .padding(.top, 100)
                    
                    Spacer()
                    
                    TextField("Username", text: $username)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .padding(.horizontal)
                        .padding(.vertical, 15)
                        .colorInvert()
                    
                    TextField("Email", text: $email)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .padding(.horizontal)
                        .padding(.vertical, 15)
                        .colorInvert()
                    
                    SecureField("Password", text: $password)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .padding(.horizontal)
                        .padding(.vertical, 15)
                        .colorInvert()
                    
                    Spacer()
                    
                    Button(action: signUp) {
                        Text("Sign Up")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.blue)
                            .cornerRadius(15)
                            .padding(.horizontal)
                    }
                    .disabled(isSignedUp)
                }
                .padding()
                .navigationBarHidden(true)
                .alert(isPresented: $isSignedUp) {
                    Alert(title: Text("Sign Up"), message: Text("Successfully signed up as \(username)!"), dismissButton: .default(Text("OK"), action: {
                        navigateToCategoryView = true
                    }))
                }
                .background(
                    NavigationLink(destination: CategoryView(), isActive: $navigateToCategoryView) {
                        EmptyView()
                    }
                )
            }
            .navigationTitle("")
            .navigationBarBackButtonHidden(true)
            .navigationBarHidden(true)
            
        }
    }
    
    func signUp() {
        if !username.isEmpty && !password.isEmpty && !email.isEmpty {
            isSignedUp = true
        } else {
            let alertMessage = "Please fill in all fields."
            showAlert(message: alertMessage)
        }
    }
    
    func showAlert(message: String) {
        // Code for showing an alert
    }
              
}
    


struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
