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
    var estado_actual_de_la_aplicacion: EstadosDeLaAplicacion = .mostrando_series
    func agregar_serie(serie: InformacionSerie? = nil) -> Bool{
        if let serie_nueva = serie{
            if serie_nueva.nombre == ""{
                return false
            }
            series_registradas.append(serie_nueva)
        }else{
            series_registradas.append(InformacionSerie(nombre: "prueba", tipo: "prueba", fecha_estreno: 2017, sinopsis: "prueba de una sinopsis muy larga", caratula: "imagen_fake_no1"))
        }
        return true
    }
}
