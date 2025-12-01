Feature: Video explicativo de la aplicación
  Como dueño de una PyME que prefiere información visual y directa,
  Quiero ver un video explicativo integrado en la landing page,
  Para comprender rápidamente qué ofrece la aplicación y cómo puede ayudarme a reducir mis costos energéticos. 

  Scenario Outline: Visualizar el reproductor de video
    Given el usuario está en la landing page
    When se desplaza hacia la sección <seccion-video>
    Then se muestra un <texto-atraccion> para el usuario
    And se muestra un reproductor de video embebido de <plataforma-video>
    And el usuario puede <accion-reproducir>, <accion-pausar> y <accion-expandir>

    Examples: Variables de entrada
      | seccion-video                                      | texto-atraccion                      | plataforma-video | accion-reproducir | accion-pausar | accion-expandir |
      | "Tan simple como parece. Mira a Ohmia en acción"  | "pequeño texto de atracción"         | "YouTube"        | "reproducirlo"    | "pausarlo"    | "expandirlo"    |

  Scenario Outline: Reproducir el video desde un smartphone
    Given el usuario visita la landing page desde un <tipo-dispositivo>
    When ingresa a la sección que contiene el <elemento-video>
    Then el reproductor se adapta al tamaño de la pantalla
    And el usuario puede reproducirlo sin necesidad de hacer zoom
    And los controles del reproductor se mantienen visibles y accesibles

    Examples: Variables de entrada
      | tipo-dispositivo    | elemento-video        |
      | "dispositivo móvil" | "video explicativo"   |