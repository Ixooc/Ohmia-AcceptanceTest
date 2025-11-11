Feature: Ver consumo mensual total
  Como responsable del hogar que se preocupa por los gastos de mi familia,
  Quiero ver mi consumo mensual total y desglosado por dispositivos,
  Para identificar qué aparatos generan más gasto y así planificar cómo reducir mi factura.

  Scenario Outline: Ver el consumo mensual en la página principal
    Given el usuario ha iniciado sesión
    And el sistema ya tiene dispositivos registrados con su consumo
    When el usuario accede a la <pagina-principal>
    Then el sistema muestra en la parte superior el gráfico de <grafico-consumo>
    And el valor total del consumo en kWh y su costo estimado

    Examples: Variables de entrada
      | pagina-principal  |
      | "página principal" |

    Examples: Variables de salida
      | grafico-consumo      |
      | "Consumo mensual"    |

  Scenario Outline: Acceder al desglose del consumo mensual
    Given el usuario está en la <pagina-principal>
    And se muestra el gráfico de <grafico-consumo>
    When el usuario presiona el gráfico
    Then el sistema lo redirige a la sección <seccion-consumo>
    And se muestra un desglose por dispositivo, con nombre, kWh consumidos y costo estimado

    Examples: Variables de entrada
      | pagina-principal   | grafico-consumo   |
      | "página principal" | "Consumo mensual" |

    Examples: Variables de salida
      | seccion-consumo |
      | "Consumo"       |

  Scenario Outline: Acceder al desglose desde un botón alternativo
    Given el usuario está en la <pagina-principal>
    When presiona el botón <boton-ver-desglose>
    Then el sistema lo redirige a la sección <seccion-consumo>
    And se muestra un desglose por dispositivo, con nombre, kWh consumidos y costo estimado

    Examples: Variables de entrada
      | pagina-principal   | boton-ver-desglose |
      | "página principal" | "Ver desglose"     |

    Examples: Variables de salida
      | seccion-consumo |
      | "Consumo"       |