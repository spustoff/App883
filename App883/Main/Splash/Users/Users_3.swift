//
//  Users_3.swift
//  App883
//
//  Created by Вячеслав on 9/14/24.
//

import SwiftUI

struct Users_3: View {
    
    @AppStorage("status") var status: Bool = false

    var body: some View {
        ZStack {
            
            Color("bg")
                .ignoresSafeArea()
            
            VStack {
                
                Image("users_3")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                Spacer()
                
                VStack(alignment: .center, spacing: 6, content: {
                    
                    Text("NOTIFICATION")
                        .foregroundColor(Color("primary"))
                        .font(.system(size: 16, weight: .regular))
                        .multilineTextAlignment(.center)
                    
                    Text("Don’t miss anything")
                        .foregroundColor(.white)
                        .font(.system(size: 23, weight: .semibold))
                        .multilineTextAlignment(.center)
                })
                
                Button(action: {
                    
                    status = true
                    
                }, label: {
                    
                    Text("Finish")
                        .foregroundColor(.white)
                        .font(.system(size: 15, weight: .medium))
                        .frame(maxWidth: .infinity)
                        .frame(height: 50)
                        .background(RoundedRectangle(cornerRadius: 15).fill(Color("primary")))
                        .padding()
                })
            }
            .ignoresSafeArea(.all, edges: .top)
        }
    }
}

#Preview {
    Users_3()
}
