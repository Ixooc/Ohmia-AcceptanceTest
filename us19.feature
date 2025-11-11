Feature: Ver consumo individual en grupo multifamiliar
  Como miembro de una vivienda multifamiliar,
  Quiero visualizar el consumo individual de cada familia dentro del grupo,
  Para identificar diferencias en el uso de energía y promover un reparto más justo del gasto mensual.

  Scenario Outline: Visualizar listado de consumos por familia
    Given el usuario pertenece a un grupo multifamiliar
    When accede a la sección <seccion-consumo-familiar-individual>
    Then el sistema muestra una lista con cada familia del grupo
    And junto al nombre de cada familia aparece su consumo total mensual expresado en kWh y en monto estimado en soles

    Examples: Variables de entrada
      | seccion-consumo-familiar-individual |
      | "Consumo familiar individual"       |

  Scenario Outline: Comparar consumo entre familias
    Given el usuario está en la sección <seccion-consumo-familiar-individual>
    And existen al menos dos usuarios en la familia registrados en el grupo
    When selecciona la opción <opcion-comparar-consumo>
    Then el sistema muestra una lista ordenada que representa el consumo mensual de cada integrantes con colores diferenciados
    And permite identificar visualmente las diferencias en gasto energético

    Examples: Variables de entrada
      | seccion-consumo-familiar-individual | opcion-comparar-consumo |
      | "Consumo familiar individual"       | "Comparar consumo"      |