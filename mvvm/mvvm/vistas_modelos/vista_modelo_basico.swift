//
//  File.swift
//  mvvm
//
//  Created by alumno on 3/14/25.
//

import Foundation
@Observable
class VistaModeloBasico{
    var series_registradas: Array<InformacionSerie> = []
    func agregar_serie() -> Void{
        print("si funciona desde el controlador")
        series_registradas.append(InformacionSerie(nombre: "prueba", tipo: "prueba", fecha_estreno: 2017, sinopsis: "prueba de una sinopsis muy larga", caratula: "imagen_fake_no1"))
    }
}
