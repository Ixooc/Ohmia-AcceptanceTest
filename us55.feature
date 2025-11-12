Feature: Vista previa de la aplicación
  Como miembro de un hogar multifamiliar que valora la estética y facilidad de uso en las aplicaciones que instala,
  Quiero ver imágenes y una vista previa de la interfaz,
  Para asegurarme de que la aplicación sea visualmente agradable y sencilla antes de descargarla.

  Scenario Outline: Visualización de mockups
    Given el usuario está en la landing page
    When se desplaza a la sección <seccion-vista-previa>
    Then se muestran imágenes o capturas de la interfaz
    And éstas transmiten claridad y simplicidad

    Examples: Variables de entrada
      | seccion-vista-previa |
      | "Vista previa"       |