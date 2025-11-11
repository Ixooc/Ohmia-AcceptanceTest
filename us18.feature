Feature: Ver consumo total del grupo
  Como miembro de una vivienda multifamiliar en la que varias familias compartimos el gasto de electricidad,
  Quiero ver el consumo general de todo el hogar,
  Para tener una visión completa del consumo eléctrico y conversar con los demás sobre cómo podemos organizarnos mejor para ahorrar.

  Scenario Outline: Visualizar consumo general mensual
    Given el usuario está en la sección <seccion-consumo>
    When accede a la sección <seccion-consumo-familiar-general>
    Then el sistema muestra el consumo total mensual separado por colores para cada familia
    And aparece expresado en kWh y en monto estimado en soles

    Examples: Variables de entrada
      | seccion-consumo | seccion-consumo-familiar-general |
      | "Consumo"       | "Consumo familiar general"       |

  Scenario Outline: Visualizar desglose por familia
    Given el usuario está en la sección <seccion-consumo-familiar-general>
    And ya se registró el consumo de un mes como mínimo
    When presiona el botón <boton-desglose-familia>
    And selecciona a una de las familias que pertenece al consumo
    Then el sistema muestra una tabla con el consumo mensual de la familia seleccionada
    And el consumo porcentual de cada dispositivo

    Examples: Variables de entrada
      | seccion-consumo-familiar-general | boton-desglose-familia  |
      | "Consumo familiar general"       | "Desglose por familia"  |