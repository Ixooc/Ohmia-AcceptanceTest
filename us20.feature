Feature: Ver porcentaje de mi familia en el grupo
  Como miembro de una vivienda multifamiliar,
  Quiero conocer el porcentaje de consumo eléctrico que representa mi familia dentro del grupo total,
  Para comprender nuestra contribución al gasto común y tomar decisiones que ayuden a equilibrar el uso de la energía.

  Scenario Outline: Mostrar porcentaje de consumo de mi familia
    Given el usuario forma parte de un grupo multifamiliar con consumos registrados
    When accede a la sección <seccion-consumo-familiar-general>
    And selecciona la opción <opcion-ver-participacion>
    Then el sistema calcula el porcentaje que representa el consumo de su familia respecto al total del grupo
    And muestra un gráfico circular o de barras donde se resalta visualmente su porción dentro del total

    Examples: Variables de entrada
      | seccion-consumo-familiar-general | opcion-ver-participacion        |
      | "Consumo familiar general"       | "Ver participación de mi familia" |

  Scenario Outline: Ver detalle del consumo asociado al porcentaje
    Given el usuario visualiza el porcentaje de su familia en el grupo
    When selecciona el botón <boton-ver-detalle>
    Then el sistema despliega una tabla con los dispositivos y el consumo individual que componen ese porcentaje
    And debajo se muestra el total en kWh y el monto estimado

    Examples: Variables de entrada
      | boton-ver-detalle |
      | "Ver detalle"     |