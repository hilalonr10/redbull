//
//  LoginView.swift
//  redbull
//
//  Created by Hilal Öner on 4/27/24.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        
        
        @State var username = ""
        @State var password = ""
        
                    NavigationView {
                ZStack {
                    Color.logininview
                        .ignoresSafeArea()
                                    
                    
                    VStack {
                        Image("loginlogo")
                            .padding(.top, 60)
                            .padding(.bottom, 100)
                        
                        VStack {
                            // Form
                            Group {
                                TextField("Username", text: $username)
                                    .textFieldStyle(DefaultTextFieldStyle())
                                    .padding(.bottom, 10)
                                    .colorInvert()
                                   
                                SecureField("Password", text: $password)
                                    .textFieldStyle(PlainTextFieldStyle())
                                    .padding(.bottom, 10)
                                    .colorInvert()
                                Button( action:{
                                    // Action to perform when the login button is tapped
                                }) {
                                    ZStack {
                                        RoundedRectangle(cornerRadius: 20)
                                            .foregroundColor(.red)
                                            .frame(height: 50)
                                            .padding(.horizontal, 10)
                                        Text("Log in")
                                            .bold()
                                            .foregroundColor(.white)
                                    }
                                }
                            }
                            .padding(.horizontal)
                            .frame(maxWidth: 300)
                            
                            // Register or Create account section
                            VStack {
                                Text("Forgot Password?")
                                    .foregroundColor(.white)
                            }
                            .padding(.bottom,200)
                            
                            HStack {
                                Text("Don't you have an account?")
                                    .foregroundColor(.blue)
                                    .padding(.horizontal,30)
                                NavigationLink("Sign Up", destination: SignUpView())
                                    .font(.title2)
                                    .foregroundColor(.white)
                                    .background(.blue)
                                    .cornerRadius(10)
                            }
                        }
                    }
                    .padding()
                }
            }
                  
            .navigationTitle("")
                   .navigationBarBackButtonHidden(true)
                   .navigationBarHidden(true)
                   .ignoresSafeArea()
        }
    }

#Preview {
    LoginView()
    
}
