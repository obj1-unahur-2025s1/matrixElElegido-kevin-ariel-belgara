object nave{
    const pasajeros = []
    method cantidadPasajeros() = pasajeros.size()
    method pasajeroDeMayorVitalidad()=
      pasajeros.max({p => p.vitalidad()})
    method estaEquilibrada(){
        return self.pasajeroDeMayorVitalidad().vitalidad() < self.pasajeroDeMenorVitalidad() *2
    }
    method pasajeroDeMenorVitalidad()= pasajeros.min({p => p.vitalidad()})
    method estaElElegido()= pasajeros.any({p => p.esElElegido()})
    method chocar(){
        pasajeros.forEach({p => p.saltar()})
        pasajeros.clear()
    }
    method pasajerosNoSonElElegido(){
        return pasajeros.filter({p => !p.esElElegido()})
    }
    method acelerar(){
      self.pasajerosNoSonElElegido().forEach({p => p.saltar()})

    }

}
object neo{
    var energia= 100
    method esElElegido ()= true 
    method saltar(){
        energia = energia / 2
    }
    method vitalidad() = energia * 0,1

}
object morfeo{
    var vitalidad = 0
    method vitalidad()= vitalidad
    var estaCansado = false
    method esElElegido()=false
    method saltar(){
        vitalidad = 0.max(vitalidad - 1)
        estaCansado = !estaCansado
    }
}
object trinity{
    method vitalidad()= 0
    method esElElegido()= false
    method saltar(){

    }
}
