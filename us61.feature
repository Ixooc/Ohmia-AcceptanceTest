Feature: Visualización de testimonios reales en la landing page
  Como responsable del hogar que aún duda de la efectividad de nuevas aplicaciones,
  Quiero ver testimonios reales y opiniones positivas de usuarios,
  Para sentir confianza antes de instalar la app.

  Scenario Outline: Visualización de testimonios en slider interactivo
    Given se han presentado los prototipos y la aplicación a usuarios reales
    And el usuario se encuentra navegando en la landing page
    When se desplaza hacia la sección <seccion-testimonios>
    Then se muestra un slider interactivo con comentarios y apreciaciones
    And cada testimonio incluye el <campo-nombre> y la <campo-foto> del usuario correspondiente

    Examples: Variables de entrada
      | seccion-testimonios | campo-nombre | campo-foto |
      | "Testimonios"       | "nombre"     | "foto"     |

  Scenario Outline: Interacción con el slider de testimonios
    Given el usuario se encuentra en la sección <seccion-testimonios> de la landing page
    When hace clic en los botones <boton-navegacion>
    Then el slider muestra el testimonio siguiente o anterior de forma suave
    And mantiene visibles el <campo-nombre> y la <campo-foto> del usuario correspondiente

    Examples: Variables de entrada
      | seccion-testimonios | boton-navegacion         | campo-nombre | campo-foto |
      | "Testimonios"       | "Siguiente o Anterior"   | "nombre"     | "foto"     |

  Scenario Outline: Visualización en dispositivos móviles
    Given el usuario ingresa a la landing page desde un <tipo-dispositivo>
    When llega a la sección <seccion-testimonios>
    Then el slider se ajusta al ancho de pantalla del dispositivo
    And los textos y fotos se mantienen legibles sin necesidad de zoom

    Examples: Variables de entrada
      | tipo-dispositivo    | seccion-testimonios |
      | "dispositivo móvil" | "Testimonios"       |