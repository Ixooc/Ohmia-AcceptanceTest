Feature: Configurar moneda local
  Como gerente de una mediana empresa que tiene como moneda una distinta a la predeterminada en la aplicación,
  Quiero poder elegir mi moneda local,
  Para que los costos se muestren en valores reales y entender mejor cuánto estoy gastando en mi consumo eléctrico.

  Scenario Outline: Selección de moneda desde configuración
    Given el usuario accede a la sección <seccion-configuracion>
    And entra en la opción de <opcion-metodo-pago>
    When selecciona la opción <opcion-moneda-local>
    Then el sistema le permite elegir de una lista con todas las monedas disponibles
    And recalcula automáticamente los montos mostrados en toda la app, en base a la moneda seleccionada

    Examples: Variables de entrada
      | seccion-configuracion | opcion-metodo-pago  | opcion-moneda-local |
      | "Configuración"       | "método de pago"    | "Moneda local"      |