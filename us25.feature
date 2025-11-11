Feature: Marcar cumplimiento de objetivos
  Como gerente de una PyME que busca medir su progreso en eficiencia energética,
  Quiero poder marcar si es que se realizó un objetivo,
  Para hacer seguimiento de los avances e historial de los logros.

  Scenario Outline: Actualizar estado de cumplimiento
    Given el usuario tiene objetivos guardados en su lista
    When selecciona el botón <boton-cumplido> junto a un objetivo
    Then el sistema actualiza el estado del objetivo a <estado-completado>
    And refleja el progreso general en porcentaje o barra de avance
    And ajusta el consumo energético del objetivo seleccionado

    Examples: Variables de entrada
      | boton-cumplido |
      | "Cumplido"     |

    Examples: Variables de salida
      | estado-completado |
      | "Completado"      |