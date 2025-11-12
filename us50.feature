Feature: Explicación accesible del producto
  Como encargado del hogar que no usa aplicaciones con frecuencia y puede sentirse confundido con la tecnología,
  Quiero entender claramente qué hace la aplicación,
  Para saber si me será útil en mi hogar.

  Scenario Outline: Visualizar sección de presentación
    Given el usuario accede a la landing page
    When observa la parte superior de la pantalla
    Then se muestra una sección introductoria
    And el texto explica en <cantidad-frases> frases qué hace la aplicación
    And se muestra un ejemplo visual de su funcionalidad principal

    Examples: Variables de entrada
      | cantidad-frases |
      | "2-3"           |

  Scenario Outline: Leer beneficios clave
    Given el usuario se desplaza hacia abajo en la landing page
    When llega a la sección <seccion-beneficios>
    Then se muestran de forma clara <cantidad-beneficios> beneficios en viñetas
    And el lenguaje es sencillo y comprensible

    Examples: Variables de entrada
      | seccion-beneficios               | cantidad-beneficios |
      | "¿Por qué usar esta aplicación?" | "3 a 5"             |