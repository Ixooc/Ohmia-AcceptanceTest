Feature: Interfaz accesible
  Como gerente de una pequeña empresa con poca experiencia tecnológica,
  Quiero que la app tenga botones claros y texto legible,
  Para poder comprender y utilizar sus funciones sin necesidad de asistencia externa.

  Scenario Outline: Visualización clara de botones y textos
    Given accede al <menu-principal> de la aplicación
    And se muestran los botones principales de navegación
    When observa los nombres y símbolos de cada botón
    Then los textos son legibles, con tamaño y contraste adecuados
    And cada botón tiene un ícono identificable y un color que resalta su función

    Examples: Variables de entrada
      | menu-principal    |
      | "menú principal"  |

  Scenario Outline: Navegación comprensible en cualquier pantalla
    Given se encuentra en una pantalla de la app
    When desea desplazarse a otra sección
    Then el menú y los iconos mantienen el mismo orden y estilo
    And los textos y botones tienen el mismo diseño en todas las pantallas

    Examples: Variables de entrada
      | condicion-navegacion        |
      | "cualquier pantalla de la app" |