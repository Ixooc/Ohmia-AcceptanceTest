Feature: Carga optimizada de gráficos
  Como miembro de hogar multifamiliar,
  Quiero que los gráficos de consumo se muestren en menos de cinco segundos,
  Para consultar mis resultados de manera rápida y sin interrupciones.

  Scenario Outline: Carga rápida de gráficos de consumo
    Given el usuario accede a la sección <seccion-consumo-mensual>
    And quiere ver el gráfico de consumo
    When selecciona un período de tiempo
    Then el sistema genera el gráfico en un máximo de <tiempo-maximo-carga> segundos
    And muestra los datos sin pérdida de precisión

    Examples: Variables de entrada
      | seccion-consumo-mensual | tiempo-maximo-carga |
      | "Consumo mensual"       | 5                   |