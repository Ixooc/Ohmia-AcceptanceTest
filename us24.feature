Feature: Consultar lista de objetivos personales
  Como responsable del hogar que sigue metas de ahorro energético,
  Quiero consultar una lista de objetivos que me he establecido a mi mismo,
  Para mantenerme enfocado en mis propios compromisos de ahorro.

  Scenario Outline: Evaluación al cierre del mes
    Given el usuario llega al final del mes
    When accede a la sección <seccion-recomendaciones>
    Then el sistema le muestra sus objetivos registrados
    And le pregunta si aplicó alguna de las sugerencias guardadas
    And ajusta el cálculo del ahorro estimado en base a las respuestas

    Examples: Variables de entrada
      | seccion-recomendaciones |
      | "Recomendaciones"       |