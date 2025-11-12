Feature: Protección de datos y seguridad
  Como dueño de una PyME que está preocupado por la seguridad de la información de su negocio,
  Quiero ver en la landing page una explicación clara sobre cómo se protege y maneja mi información,
  Para sentir tranquilidad y confianza al usar la aplicación.

  Scenario Outline: Visualizar política de privacidad
    Given el usuario está en la landing page
    When se desplaza al final de la página
    Then se muestra un enlace <enlace-politica-privacidad>
    And al seleccionarlo se muestra información clara, breve y comprensible sobre el manejo de datos del usuario y tecnologías empleadas para la seguridad de la información

    Examples: Variables de entrada
      | enlace-politica-privacidad  |
      | "Política de privacidad"    |