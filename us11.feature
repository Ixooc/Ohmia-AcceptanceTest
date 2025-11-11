Feature: Ver el dispositivo de mayor consumo
  Como responsable del hogar que busca reducir gastos innecesarios,
  Quiero identificar cuál de mis dispositivos consume más,
  Para priorizar acciones de ahorro sin afectar la comodidad de mi familia.

  Scenario Outline: Mostrar el dispositivo de mayor consumo en la vista principal
    Given el usuario está en la sección <seccion-menu>
    And tiene al menos un dispositivo registrado
    When el sistema calcula el consumo mensual de cada dispositivo
    Then en el apartado <apartado-mayor-consumo> aparece el nombre del dispositivo con mayor gasto
    And debajo se muestra su porcentaje respecto al consumo total del hogar

    Examples: Variables de entrada
      | seccion-menu      | apartado-mayor-consumo          |
      | "Menú principal"  | "Dispositivo de mayor consumo"  |

  Scenario Outline: Acceder a la lista ordenada por consumo
    Given el usuario está en la sección <seccion-menu>
    When selecciona el botón <boton-ver-lista>
    Then se muestra un gráfico redondo con el porcentaje de consumo eléctrico todos los dispositivos registrados
    And éstos están ordenados de mayor a menor consumo en una lista
    And el dispositivo con mayor consumo aparece resaltado en la parte superior

    Examples: Variables de entrada
      | seccion-menu      | boton-ver-lista                        |
      | "Menú principal"  | "Ver lista de consumo por dispositivo" |

  Scenario Outline: Caso sin dispositivos registrados
    Given el usuario está en la sección <seccion-menu>
    And no tiene dispositivos registrados
    When selecciona el botón <boton-ver-lista>
    Then el sistema muestra el mensaje <mensaje-sin-dispositivos>

    Examples: Variables de entrada
      | seccion-menu      | boton-ver-lista                        |
      | "Menú principal"  | "Ver lista de consumo por dispositivo" |

    Examples: Variables de salida
      | mensaje-sin-dispositivos                                                           |
      | "No hay dispositivos registrados. Agrega uno para comenzar a calcular el consumo." |

  Scenario Outline: Generar recomendaciones según el dispositivo de mayor consumo
    Given el usuario está en la sección <seccion-lista-consumo>
    And el sistema identifica el dispositivo <nombre-dispositivo> con el <porcentaje-consumo> del consumo total
    When presiona el botón <boton-generar-recomendaciones>
    Then el sistema muestra la recomendación <texto-recomendacion>
    And el usuario puede guardar esta recomendación en su lista de objetivos mensuales

    Examples: Variables de entrada
      | seccion-lista-consumo              | nombre-dispositivo | porcentaje-consumo | boton-generar-recomendaciones |
      | "Lista de consumo por dispositivo" | "Refrigeradora"    | "35%"              | "Generar recomendaciones"     |

    Examples: Variables de salida
      | texto-recomendacion                                                                                                            |
      | "Tu refrigeradora representa el 35% del consumo total. Considera revisar su eficiencia energética o reducir el tiempo de uso." |