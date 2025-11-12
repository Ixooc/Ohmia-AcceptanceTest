Feature: Descarga oficial desde la landing page
  Como responsable del hogar que navega por internet con poca frecuencia y puede sentirse confundido con la tecnología,
  Quiero que la landing page tiene botones claros y visibles para descargar la aplicación desde App Store y Play Store,
  Para asegurarme de instalar la versión correcta sin confundirme con opciones falsas o no oficiales.

  Scenario Outline: Descarga desde landing page
    Given el usuario se encuentra en la landing page
    When llega a la sección <seccion-descargar>
    Then se muestran dos botones: <boton-app-store> y <boton-google-play>
    And cada botón dirige a la tienda oficial correspondiente

    Examples: Variables de entrada
      | seccion-descargar | boton-app-store | boton-google-play |
      | "Descargar"       | "App Store"     | "Google Play"     |