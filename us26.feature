Feature: Pregunta mensual sobre cambio de hábitos
  Como dueño de una cafetería que está intentando mejorar mis hábitos de consumo,
  Quiero recibir una notificación al finalizar cada mes que me recuerde registrar si realicé cambios en mis hábitos de uso,
  Para que el sistema mantenga actualizados mis datos de comportamiento y ajuste los análisis de consumo.

  Scenario Outline: Consulta mensual de hábitos
    Given que el mes calendario ha finalizado
    And el usuario cuenta con una cuenta activa y datos de consumo registrados
    When el sistema detecta el cambio de mes
    Then se envía una notificación push con el mensaje: <mensaje-notificacion>
    And se muestran las opciones <opcion-si>, <opcion-no> y <opcion-recordar>
    And si el usuario responde <opcion-si>, la próxima vez que inicie la aplicación, aparecerá en la sección dispositivos

    Examples: Variables de entrada
      | opcion-si | opcion-no | opcion-recordar     |
      | "Sí"      | "No"      | "Recordar más tarde" |

    Examples: Variables de salida
      | mensaje-notificacion                                              |
      | "¿Has realizado algún cambio en tus hábitos de consumo este mes?" |