Feature: Acceso a redes oficiales
  Como dueño de una PyME que necesita comunicación directa con la empresa desarrolladora,
  Quiero ver enlaces a sus redes sociales oficiales en la landing page,
  Para poder hacer consultas, solicitar soporte o mantenerme informado sobre novedades de la aplicación.

  Scenario Outline: Acceso a redes sociales
    Given el usuario está en el pie de página de la landing page
    When visualiza la sección <seccion-siguenos>
    Then se muestran enlaces a redes oficiales validados
    And al hacer clic, se abren en una nueva pestaña

    Examples: Variables de entrada
      | seccion-siguenos |
      | "Síguenos"       |