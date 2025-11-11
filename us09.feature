Feature: Ver consumo diario estimado
  Como responsable del hogar que busca reducir sus gastos,
  Quiero ver mi consumo diario de electricidad de manera clara y sencilla,
  Para identificar patrones de uso y darme cuenta en qué momentos estoy gastando más energía.

  Scenario Outline: Visualizar consumo diario en el menú principal
    Given el usuario está en la sección <seccion-menu>
    And tiene al menos un dispositivo registrado
    When observa el apartado <apartado-consumo-diario>
    Then el sistema muestra el consumo total del día en kWh
    And muestra el costo aproximado en moneda local

    Examples: Variables de entrada
      | seccion-menu      | apartado-consumo-diario |
      | "Menú principal"  | "Consumo diario"        |

  Scenario Outline: Acceder al desglose de consumo diario
    Given el usuario está en la sección <seccion-menu>
    And el sistema muestra el gráfico de consumo diario
    When el usuario selecciona el gráfico
    Then el sistema redirige a la sección <seccion-detalle>
    And se muestra la lista de dispositivos con su consumo en kWh y en porcentaje del total

    Examples: Variables de entrada
      | seccion-menu      |
      | "Menú principal"  |

    Examples: Variables de salida
      | seccion-detalle   |
      | "Detalle diario"  |

  Scenario Outline: Navegar entre diferentes días
    Given el usuario está en la sección <seccion-detalle>
    And se muestra el consumo correspondiente al día actual
    When el usuario presiona el botón <boton-anterior>
    Then el sistema muestra el consumo del día anterior
    And cuando presiona el botón <boton-siguiente>
    Then el sistema muestra el consumo del día siguiente, siempre que exista información registrada

    Examples: Variables de entrada
      | seccion-detalle  | boton-anterior | boton-siguiente |
      | "Detalle diario" | "<"            | ">"             |