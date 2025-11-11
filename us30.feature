Feature: Comparar con meses anteriores
  Como responsable del hogar,
  Quiero visualizar la evolución de mi consumo eléctrico a lo largo del tiempo,
  Para identificar patrones o tendencias de uso y tomar decisiones que me ayuden a optimizar mi gasto energético.

  Scenario Outline: Visualizar el historial de consumo mensual
    Given el usuario está en el <menu-principal>
    And selecciona la opción <opcion-consumo>
    When accede a la sección <seccion-datos-historicos>
    And tiene un registro de <cantidad-meses> meses de consumo mensual en la aplicación
    Then el sistema muestra un gráfico comparativo del consumo de los últimos <cantidad-meses> meses
    And punto representa el consumo mensual en kWh
    And el sistema muestra también el promedio general de los meses indicados

    Examples: Variables de entrada
      | menu-principal    | opcion-consumo | seccion-datos-historicos | cantidad-meses |
      | "Menú principal"  | "Consumo"      | "Datos históricos"       | 6              |