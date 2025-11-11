Feature: Notificación de consumo alto
  Como miembro de hogar multifamiliar,
  Quiero recibir una alerta automática cuando mi consumo eléctrico exceda mi promedio habitual,
  Para poder identificar el incremento a tiempo y tomar medidas de ahorro antes de finalizar el periodo mensual.

  Scenario Outline: Detección automática de consumo elevado
    Given que el usuario tiene un registro histórico de consumo mensual
    And el sistema monitorea el consumo en tiempo real
    When el consumo actual supera en más del <porcentaje-umbral> su promedio de los últimos dos meses
    Then el sistema envía una notificación inmediata con el mensaje: <mensaje-notificacion>
    And la notificación aparece tanto en la pantalla principal como en el panel de notificaciones push

    Examples: Variables de entrada
      | porcentaje-umbral |
      | "20%"             |

    Examples: Variables de salida
      | mensaje-notificacion                                                                                    |
      | "Tu consumo eléctrico es un 22% mayor que tu promedio. Revisa tus dispositivos para evitar sobrecostos" |