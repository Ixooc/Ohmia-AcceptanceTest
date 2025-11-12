Feature: Suscripción a novedades y actualizaciones
  Como dueño de una PyME que ya utiliza la aplicación y está interesado en futuras funciones con IoT,
  Quiero poder dejar mi correo en la landing page,
  Para recibir novedades, actualizaciones y consejos de ahorro sin perderme ninguna mejora.

  Scenario Outline: Registrar correo a newsletter
    Given el usuario está en la landing page
    When encuentra la sección <seccion-recibe-novedades>
    And escribe su correo en el campo indicado
    And presiona el botón <boton-suscribirme>
    Then aparece el mensaje <mensaje-suscripcion-exitosa>

    Examples: Variables de entrada
      | seccion-recibe-novedades | boton-suscribirme |
      | "Recibe novedades"       | "Suscribirme"     |

    Examples: Variables de salida
      | mensaje-suscripcion-exitosa |
      | "Suscripción exitosa"       |