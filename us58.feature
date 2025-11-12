Feature: Adaptación a dispositivos móviles
  Como miembro de un hogar multifamiliar que navega principalmente desde el celular,
  Quiero que la landing page se adapte correctamente al tamaño de mi pantalla,
  Para poder leer y desplazarme sin dificultad ni tener que hacer zoom constantemente.

  Scenario Outline: Visualización en móvil
    Given el usuario accede desde un <tipo-dispositivo>
    When carga la landing page
    Then el diseño se adapta sin necesidad de hacer zoom
    And el contenido se mantiene legible y bien distribuido

    Examples: Variables de entrada
      | tipo-dispositivo      |
      | "dispositivo móvil"   |