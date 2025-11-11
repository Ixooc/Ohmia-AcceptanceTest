Feature: Comparar mes actual con anterior
  Como gerente de una PyME que busca optimizar el presupuesto,
  Quiero comparar el consumo del mes actual con el del mes anterior,
  Para identificar si mis esfuerzos de ahorro están funcionando y tomar mejores decisiones en el uso de la energía.

  Scenario Outline: Visualizar comparación mensual en el menú principal
    Given el usuario está en la sección <seccion-menu>
    And tiene consumo registrado de al menos dos meses consecutivos
    When presiona el botón que lo dirige al apartado <apartado-comparativo>
    Then el sistema muestra dos barras: una con el consumo del mes actual y otra con el consumo del mes anterior
    And debajo de las barras se muestra el porcentaje de aumento o disminución del consumo

    Examples: Variables de entrada
      | seccion-menu      | apartado-comparativo   |
      | "Menú principal"  | "Comparativo mensual"  |

  Scenario Outline: Comparación sin datos suficientes
    Given el usuario está en la sección <seccion-menu>
    And solo tiene consumo registrado de un mes
    When observa el apartado <apartado-comparativo>
    Then el sistema muestra el mensaje <mensaje-sin-datos>
    And debajo se muestra otro mensaje que dice <mensaje-registro>

    Examples: Variables de entrada
      | seccion-menu      | apartado-comparativo   |
      | "Menú principal"  | "Comparativo mensual"  |

    Examples: Variables de salida
      | mensaje-sin-datos                                  | mensaje-registro                                             |
      | "Aún no hay datos suficientes para comparar meses" | "siga registrando su consumo para habilitar esta función"    |