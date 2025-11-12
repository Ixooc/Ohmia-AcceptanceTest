Feature: Actualización de tarifas eléctricas
  Como dueño de una pequeña empresa que desea tener cálculos actualizados,
  Quiero modificar el valor del costo por kWh dentro de la aplicación,
  Para que los reportes de consumo reflejen correctamente el monto real de la factura eléctrica.

  Scenario Outline: Colocar tarifa eléctrica
    Given conoce el costo de la tarifa eléctrica por kWh
    When selecciona la sección <seccion-configuracion>
    And presiona la opción <opcion-tarifa-electrica>
    And llena el apartado de <apartado-tarifa-actual>
    And presiona <boton-guardar>
    Then la aplicación muestra el mensaje <mensaje-tarifa-guardada>
    And los nuevos cálculos se hacen a partir de la nueva tarifa

    Examples: Variables de entrada
      | seccion-configuracion | opcion-tarifa-electrica | apartado-tarifa-actual | boton-guardar |
      | "Configuración"       | "Tarifa eléctrica"      | "Tarifa actual"        | "Guardar"     |

    Examples: Variables de salida
      | mensaje-tarifa-guardada      |
      | "Nueva tarifa guardada"      |