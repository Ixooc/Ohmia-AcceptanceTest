Feature: Centro de ayuda accesible
  Como miembro de un hogar multifamiliar que suele ayudar a otros familiares con la tecnología,
  Quiero acceder fácilmente a una sección de soporte o preguntas frecuentes,
  Para resolver dudas rápidamente y orientar a los demás sin complicaciones.

  Scenario Outline: Acceso a soporte
    Given el usuario está en la landing page
    When selecciona la opción <opcion-ayuda> o <opcion-preguntas-frecuentes>
    Then se muestra una sección con respuestas claras y simples

    Examples: Variables de entrada
      | opcion-ayuda | opcion-preguntas-frecuentes |
      | "Ayuda"      | "Preguntas frecuentes"      |