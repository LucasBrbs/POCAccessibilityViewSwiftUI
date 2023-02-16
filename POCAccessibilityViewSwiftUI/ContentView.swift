//
//  ContentView.swift
//  POCAccessibilityViewSwiftUI
//
//  Created by Lucas Barbosa de Oliveira on 13/02/23.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        VStack {
            Text("a")
        }
        .accessibilityRepresentation{
            Text("b")
        }

    }

//    @State var customAlert = false
//    @State var HUD = false
//    @State var password = ""
//
//    var body: some View {
//        ZStack{
//            VStack(spacing: 25){
//                Button(action: {
//                    alertView()
//                }){
//                    Text("Native Alert With TextFields")
//                }
//                Text(password)
//                    .fontWeight(.bold)
//
//                Button(action: {
//                    HUD.toggle()
//                }){
//                    Text("HUD Progress View")
//                }
//                Button(action: {
//                    customAlert.toggle()
//                }){
//                    Text("Custom Alert View")
//                }
//            }
//
//            if HUD {
//                HUDProgressView(placeHolder: "Please Wait", show: $HUD)
//
//            }
//
//            if customAlert {
//
//                CustomAlertView(show: $customAlert)
//
//            }
//
//        }.edgesIgnoringSafeArea(.all)
//    }
//    func alertView(){
//        let alert = UIAlertController(title: "Login", message: "Enter your password", preferredStyle: .alert)
//
//        alert.addTextField{ (pass) in
//            pass.placeholder = "Password"
//            pass.isSecureTextEntry = true
//
//        }
//        //action buttons
//
//        let login = UIAlertAction(title: "Login", style: .default) { (_) in
//
//            //do your own stuff
//
//            //retreving password
//            password = alert.textFields![0].text!
//        }
//        let cancel = UIAlertAction(title:"cancel", style: .destructive) { (_) in
//            //same
//        }
//        // adding into alertview...
//        alert.addAction(cancel)
//
//        alert.addAction(login)
//        //presenting alertview
//
//        UIApplication.shared.windows.first?.rootViewController?.present(alert, animated: true, completion: {
//            // do your own stuff...
//        })
//    }
}
//
//struct HUDProgressView : View{
//    var placeHolder : String
//    @Binding var show : Bool
//    @State var animate = false
//
//    var body: some View {
//
//        VStack(spacing: 28) {
//            Circle()
//                //for dark mode adoption
//                .stroke(AngularGradient(gradient: .init(colors: [Color.primary, Color.primary.opacity(0)]), center: .center))
//                .frame(width:80, height: 80)
//            //animating
//                .rotationEffect(.init(degrees: animate ? 360 : 0))
//
//            Text(placeHolder)
//                .fontWeight(.bold)
//
//        }
//        .padding(.vertical,25)
//        .padding(.horizontal,35)
//        .background(BlurView())
//        .cornerRadius(20)
//        .frame(maxWidth: .infinity , maxHeight: .infinity)
//        .background(Color.primary.opacity(0.35)
//            .onTapGesture {
//                withAnimation{
//                    show.toggle()
//                }
//            }
//        )
//        .onAppear{
//            withAnimation( Animation.linear(duration: 1.5).repeatForever(autoreverses: false)){
//                animate.toggle()
//            }
//        }
//    }
//}
//
//    //backgroundView ...
//struct BlurView: UIViewRepresentable {
//    func makeUIView(context: Context) -> some UIView {
//        let view = UIVisualEffectView(effect: UIBlurEffect(style: .systemThinMaterial))
//        return view
//    }
//    func updateUIView(_ uiView: UIViewType, context: Context) {
//        //a
//
//    }
//}
//
//
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
//
//struct CustomAlertView : View {
//    @Binding var show: Bool
//
//    var body: some View {
//        ZStack(alignment: Alignment(horizontal: .trailing, vertical: .top)){
//
//            VStack(spacing: 25){
//                Image("trophy")
//
//                Text("Congratulations")
//                    .font(.title)
//                    .foregroundColor(.pink)
//
//                Text("You've succesfully done the work")
//
//                Button(action: {}){
//                    Text("Back to Home")
//                        .foregroundColor(.white)
//                        .fontWeight(.bold)
//                        .padding(.vertical,10)
//                        .padding(.horizontal,10)
//                        .background(Color.purple)
//                        .clipShape(Capsule())
//                }
//            }
//            .padding(.vertical,25)
//            .padding(.horizontal,30)
//            .background(BlurView())
//            .cornerRadius(25)
//
//            Button(action: {
//
//                withAnimation{
//                    show.toggle()
//                }
//
//            }) {
//                Image(systemName: "xmarc.circle")
//                    .font(.system(size: 28,weight: .bold))
//                    .foregroundColor(.purple)
//            }
//            .padding()
//        }
//        .frame(maxWidth: .infinity , maxHeight: .infinity)
//        .background(Color.primary.opacity(0.35))
//    }
//}
