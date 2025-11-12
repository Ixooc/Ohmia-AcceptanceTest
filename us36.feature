Feature: Configuración de tema claro u oscuro
  Como responsable del hogar,
  Quiero poder cambiar entre un modo claro y un modo oscuro dentro de la aplicación,
  Para adaptar la visualización a mis preferencias y reducir la fatiga visual según la iluminación de mi entorno.

  Scenario Outline: Activar modo oscuro desde ajustes
    Given el usuario accede a la sección <seccion-configuracion>
    And ingresa a la opción de <opcion-tema-color>
    When selecciona la opción <modo-oscuro>
    Then la interfaz cambia automáticamente a una paleta de colores oscuros
    And todos los textos y botones se adaptan para mantener legibilidad

    Examples: Variables de entrada
      | seccion-configuracion | opcion-tema-color  | modo-oscuro    |
      | "Configuración"       | "tema de color"    | "Modo oscuro"  |

  Scenario Outline: Cambiar al modo claro
    Given el usuario quiere cambiar el color
    And tiene activado el modo oscuro
    When ingrese a la opción de <opcion-tema-color>
    And seleccione la opción <modo-claro>
    Then el sistema aplica el diseño con fondo claro y contraste adecuado
    And todos los textos y botones se adaptan para mantener legibilidad

    Examples: Variables de entrada
      | opcion-tema-color  | modo-claro     |
      | "tema de color"    | "Modo claro"   |