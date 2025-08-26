object galvan {
  var sueldo = 15000
  var deuda  = 0
  var dinero = 0

  method deuda()  = deuda
  method sueldo() = sueldo
  method dinero() = dinero

  method sueldo(monto) {
    sueldo = monto
  }
  method gastar(cantidad) {
    if(cantidad <= dinero){
        dinero = dinero - cantidad
    }
    else{
        deuda = deuda + cantidad - dinero
        dinero = 0
    }
  }
  method cobrarSueldo() {
    if(deuda>sueldo) {
        deuda = deuda - sueldo
        dinero = 0
    }
    else {
        dinero = dinero + sueldo - deuda
        deuda = 0
    }
  }
}

object baigorria {
  var empanadasVendidas = 0
  var totalAcumulado = 0

  method vender(cantidad){
    empanadasVendidas = empanadasVendidas + cantidad
  }
  method sueldo() {
    return empanadasVendidas * 15
  }
  method totalCobrado() {
    return totalAcumulado
  }
  method cobrarSueldo() {
    totalAcumulado = totalAcumulado + self.sueldo()
    empanadasVendidas = 0
  }
}

object gimenez {
  var fondo = 300000

  method fondo() = fondo

  method pagarSueldo(empleado) {
    fondo = fondo - empleado.sueldo()
    empleado.cobrarSueldo()
  }
}