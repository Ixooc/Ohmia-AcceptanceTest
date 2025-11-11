Feature: Ver gráfico circular del consumo familiar
  Como miembro de una vivienda multifamiliar,
  Quiero visualizar un gráfico circular que muestre el consumo de cada familia,
  Para analizar de manera visual cómo se distribuye el gasto total.

  Scenario Outline: Mostrar gráfico circular del consumo familiar
    Given el grupo cuenta con varias familias registradas
    When el usuario accede a la sección <seccion-consumo-familiar>
    Then el sistema muestra un gráfico circular con los porcentajes de consumo de cada familia
    And cada familia se representa con un color distinto

    Examples: Variables de entrada
      | seccion-consumo-familiar |
      | "Consumo familiar"       |