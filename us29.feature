Feature: Comparar ahorro al aplicar recomendaciones
  Como responsable del hogar que es nuevo en seguir recomendaciones de ahorro energético del sistema,
  Quiero visualizar en un gráfico cómo cambia mi consumo antes y después de aplicarlas,
  Para comprobar si realmente estoy realizando algún cambio en mis gasto.

  Scenario Outline: Visualizar comparativo de ahorro
    Given el usuario aplique una o más recomendaciones de la app
    And desea comprobar estos cambios
    When accede a la opción <opcion-comparar-ahorro>
    Then el sistema muestra un gráfico que compara el consumo previo y posterior a las recomendaciones
    And resalta el porcentaje de reducción alcanzado

    Examples: Variables de entrada
      | opcion-comparar-ahorro |
      | "Comparar ahorro"      |