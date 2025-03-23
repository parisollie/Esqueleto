//
//  ContentView.swift
//  Esqueleto
//
//  Created by Paul F on 22/03/25.
//

import SwiftUI

struct ContentView: View {
    //paso ,State hace que podamos cambiar la variable de false a true dentro del body.
    @State var showExchangeInfo = false
    
    var body: some View {
        
        //Paso 1.0 si queremos por el background
        ZStack{
            //V-9, Step 1.1 ,Background image
            Image(.background)
            //Es para hacer la imagen mas pequeña
                .resizable()
                .ignoresSafeArea()
            
            VStack{
                //Step 1.2,Prancing pony image
                Image(.prancingpony)
                    .resizable()
                //con este modifier no se modifica la imagen: .scaledToFit()
                    .scaledToFit()
                //Le ponemos un tamaño
                    .frame(height: 300)
                
                //Step 1.3,Currency exchange text
                Text("Currency Exchange")
                    .font(.largeTitle)
                    .foregroundStyle(.white)
                
                //Conversion section
                HStack{
                    //Left conversion section
                    VStack{
                        
                        //Currency
                        HStack{
                            //Step 1.4, Curency image
                            Image(.silverpiece)
                                .resizable()
                                .scaledToFit()
                                .frame(height: 33)
                            
                            
                            //Step 1.5, Currency text
                            Text("Silver Piece")
                                .font(.headline)
                                .foregroundStyle(.white)
                            
                        }
                        
                        //Paso 1.6,Text field
                        Text("Texfield")
                            .foregroundStyle(.white)
                        
                    }//Final V-Stack
                    
                    
                    //Step 1.7,Equal sign- SF SYMBOLS
                    Image(systemName: "equal")
                    //Para símbolos podemos usar las propiedades de Texto e imagén
                        .font(.largeTitle)
                        .foregroundStyle(.white)
                    //le ponemos una animación al simbolo
                        .symbolEffect(.pulse)
                    
                    // Right conversion section
                    
                    VStack{
                        
                        //Currency
                        HStack{
                            //Step 1.8, Currency text
                            Text("Gold Piece")
                                .font(.headline)
                                .foregroundStyle(.white)
                            
                            //Step 1.9, Curency image
                            Image(.goldpiece)
                                .resizable()
                                .scaledToFit()
                                .frame(height: 33)
                        }
                        
                        //Text field
                        
                        //Paso 1.10,Text field
                        Text("Texfield")
                            .foregroundStyle(.white)
                    }//Final V-Stack
                    
                }//Final HStack
                .border(.red)
                //Paso 1.13, ese spacer empuja todo ⬆️
                Spacer()
                
                //Paso 1.11,Info button
                /*Image(systemName: "info.circle.fill")
                 .font(.largeTitle)
                 .foregroundStyle(.white)*/
                
                //Paso 1.14
                HStack {
                    //El spacer empujará todo hacia ➡️
                    Spacer()
                    //V-10 ,oasi , Info button
                    Button{
                        //paso ,toggle cambia la propiedad de false a true al dar click.
                        showExchangeInfo.toggle()
                        print("showExchangeInfo value: \(showExchangeInfo)")
                        
                    }
                    //Paso 1.15
                    label:{
                        //Step 1.11
                        Image(systemName: "info.circle.fill")
                            .font(.largeTitle)
                            .foregroundStyle(.white)
                    }
                    //esto mueve hacia a la izquierda ⬅️ desde la esquina del botón de ⓘ
                    .padding(.trailing)
                    
                   
                }//Final Hstack

            }//Final V-stack
            //Paso 1.12, ponemos las lineas guias
            .border(.blue)
            
        }//Final-Z
    }
}


#Preview {
    ContentView()
}
