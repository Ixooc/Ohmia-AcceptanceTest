Feature: Ver gráfico circular de consumo por dispositivo
  Como dueño de una tienda que desea visualizar de manera sencilla qué aparatos impactan más en mi recibo,
  Quiero ver un gráfico circular,
  Para entender la distribución de mi consumo y tomar decisiones rápidas sin necesidad de revisar tablas largas.

  Scenario Outline: Mostrar gráfico circular con desglose por dispositivo
    Given el usuario tiene al menos un dispositivo registrado
    And está en la sección <seccion-consumo-dispositivo>
    When selecciona la opción <opcion-grafico-circular>
    Then el sistema genera un gráfico circular que muestra el porcentaje de consumo de cada dispositivo
    And cada segmento tiene un color diferente y una etiqueta con el nombre del dispositivo y su porcentaje de consumo

    Examples: Variables de entrada
      | seccion-consumo-dispositivo    | opcion-grafico-circular  |
      | "Consumo por dispositivo"      | "Ver gráfico circular"   |

  Scenario Outline: Caso con un solo dispositivo
    Given el usuario solo tiene registrado un dispositivo
    When selecciona la opción <opcion-grafico-circular>
    Then el sistema muestra un gráfico circular con un único segmento al 100% con el nombre del dispositivo

    Examples: Variables de entrada
      | opcion-grafico-circular  |
      | "Ver gráfico circular"   |

  Scenario Outline: Caso sin dispositivos registrados
    Given el usuario no tiene dispositivos registrados
    When intenta acceder a la opción <opcion-grafico-circular>
    Then el sistema muestra el mensaje <mensaje-sin-datos>

    Examples: Variables de entrada
      | opcion-grafico-circular  |
      | "Ver gráfico circular"   |

    Examples: Variables de salida
      | mensaje-sin-datos                                                                     |
      | "No hay datos suficientes para generar el gráfico. Agrega dispositivos primero."     |