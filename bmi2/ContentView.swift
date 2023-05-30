//
//  ContentView.swift
//  bmi2
//
//  Created by Schweppe on 30/5/2566 BE.
//

import SwiftUI

struct ContentView: View {
    @State var resultText:String = "BMI Calculator"
    @State var weight:String = ""
    @State var height:String = ""
    
    var body: some View {
        VStack {
          
            Text(resultText).font(.largeTitle)
                HStack {
                    Text("น้ำหนัก")
                    TextField("กิโลกรัม", text: $weight).keyboardType(.numberPad)
                }.padding()
                HStack {
                    Text("ส่วนสูง")
                    TextField("เซนติเมตร", text: $height).keyboardType(.numberPad)
                }.padding()
               
           
            Button("เริ่มคำนวน") {
                let result = Double(weight)! / pow(Double(height)!/100.0, 2)
                self.resultText = String(format: "%.2f",result)
                
            }.padding()
        }.padding()
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
