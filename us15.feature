Feature: Ver consumo por habitación
  Como usuario en una vivienda multifamiliar,
  Quiero visualizar el consumo energético de cada espacio registrado,
  Para identificar cuáles son los más demandantes y saber sobre dónde puedo reducir los gastos.

  Scenario Outline: Visualizar consumo total por habitación
    Given el usuario tiene registrado distintos espacios
    And tiene una gran variedad de dispositivos en cada habitación
    When selecciona una habitación en la sección <seccion-espacios>
    Then el sistema le muestra su consumo total de esa habitación en kWh
    And el monto estimado de consumo

    Examples: Variables de entrada
      | seccion-espacios |
      | "Espacios"       |