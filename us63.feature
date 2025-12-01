Feature: Acceder a página exclusiva de Términos y Condiciones
  Como responsable del hogar que quiere usar la aplicación sin riesgos ni dudas legales,
  Quiero acceder a una página exclusiva de Términos y Condiciones,
  Para conocer las reglas de uso, las responsabilidades del usuario y del servicio, y asegurarme de que entiendo las condiciones antes de utilizar la aplicación.

  Scenario Outline: Acceder al enlace de Términos y Condiciones desde la landing page
    Given el usuario está en la landing page
    And se encuentra en el <ubicacion-enlace>
    When selecciona el enlace <enlace-terminos>
    Then se redirige a una <pagina-dedicada> con el documento completo
    And el contenido se muestra de forma clara, legible y comprensible

    Examples: Variables de entrada
      | ubicacion-enlace | enlace-terminos             | pagina-dedicada           |
      | "pie de página"  | "Términos y Condiciones"    | "página dedicada"         |

  Scenario Outline: Acceder al documento de Términos y Condiciones desde la página de registro
    Given el usuario está en la <pagina-registro>
    And visualiza el <formulario-registro> completo de creación de cuenta
    And debajo del formulario se muestra el enlace <enlace-terminos>
    When selecciona el enlace <enlace-terminos>
    Then se redirige a una <pagina-dedicada> con el documento completo
    And el contenido se muestra de forma clara, legible y comprensible

    Examples: Variables de entrada
      | pagina-registro     | formulario-registro | enlace-terminos             | pagina-dedicada   |
      | "página de registro"| "formulario"        | "Términos y Condiciones"    | "página dedicada" |

  Scenario Outline: Visualizar correctamente la página de Términos y Condiciones
    Given el usuario accedió a la <pagina-terminos>
    When revisa el <contenido-documento>
    Then se muestran las <seccion-reglas-uso> del servicio
    And se detallan las <seccion-responsabilidades> del usuario y de la empresa
    And se muestran las <seccion-limitaciones> y restricciones legales del uso de la aplicación
    And el usuario puede regresar a la landing page mediante un <elemento-navegacion> visible

    Examples: Variables de entrada
      | pagina-terminos                   | contenido-documento        | seccion-reglas-uso  | seccion-responsabilidades | seccion-limitaciones           | elemento-navegacion    |
      | "página de Términos y Condiciones"| "contenido del documento"  | "reglas de uso"     | "responsabilidades"       | "limitaciones y restricciones" | "enlace o botón"       |