Feature: Visualización clara de planes y precios
  Como dueño de una PyME que busca reducir los costos de energía en su negocio,
  Quiero visualizar claramente los planes disponibles junto con sus beneficios,
  Para decidir cuál opción se ajusta mejor a mis necesidades y capacidad económica.

  Scenario Outline: Visualizar planes
    Given el usuario navega por la landing page
    When llega a la sección <seccion-planes>
    Then se muestran los planes <plan-gratis> y <plan-premium>
    And se lista lo que incluye cada uno
    And se muestra claramente el costo del plan premium

    Examples: Variables de entrada
      | seccion-planes | plan-gratis | plan-premium |
      | "Planes"       | "gratis"    | "premium"    |