//
//  SwiftUIView.swift
//  mvvm
//
//  Created by alumno on 3/19/25.
//

import SwiftUI

struct AgregarSerie: View {
    @Environment(VistaModeloBasico.self) private var controlador
    @State var nombre_de_la_serie: String = ""
    @State var tipo_de_la_serie: String = ""
    @State var plataformas: [Plataforma] = [
        Plataforma(nombre : "Hulu", icono: "Icono plus"),
    ]
    @State var indicar_problemas: Bool = false
    var body: some View {
        Text("Hola mundo")
        TextField("El nombre de la serie", text: $nombre_de_la_serie)
        if indicar_problemas{
            Text("Hay un problema con tu serie. No tiene nombre")
        }
        TextField("Tipo", text: $tipo_de_la_serie)
        Spacer()
        ScrollView{
            Text("Plataformas")
            HStack{
                ForEach(plataformas){ plataforma in
                    Text(plataforma.nombre)
                    
                }
            }
        }
        
        Button("Agregar Plataforma"){
            print("Falta implementar")
        }
        Button("Agregar serie"){
            print("agregando serie")
            
            var serie_nueva = InformacionSerie(nombre: nombre_de_la_serie, tipo: tipo_de_la_serie, plataformas: plataformas,fecha_estreno: 1, sinopsis: "Pues... una aleatoria", caratula: "Foto chuchi piruchi")
            indicar_problemas = !controlador.agregar_serie(serie: serie_nueva)
            
        }
        
    }
}
/*
 struct InformacionSerie: Identifiable{
     var id = UUID() //
     
     var nombre: String
     var tipo: String
     
     var plataforma: [String] = [] //Aqui tengo una deuda tecnica para indicar otras plataformas de forma más fácil
     
     var fecha_estreno: Int
     var sinopsis: String
     
     var tenporadas: [Temporada] = []
     
     var caratula: String
     
 }
 */
#Preview {
    AgregarSerie()
        .environment(VistaModeloBasico())
}
