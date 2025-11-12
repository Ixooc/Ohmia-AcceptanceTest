Feature: Alta disponibilidad del servicio
  Como responsable del hogar que usa de manera frecuente la aplicación,
  Quiero que esté disponible de forma continua, con al menos un 95% del tiempo activo,
  Para acceder sin interrupciones y confiar en la estabilidad del sistema.

  Scenario Outline: Mantenimiento programado
    Given existe una ventana de mantenimiento planificada
    And la aplicación va a entrar en modo de mantenimiento
    When el usuario intenta ingresar durante este tiempo de periodo
    Then el sistema muestra el mensaje <mensaje-mantenimiento>
    And registra la incidencia sin afectar los datos del usuario

    Examples: Variables de salida
      | mensaje-mantenimiento                                                           |
      | "El servicio está en mantenimiento programado. Inténtalo nuevamente más tarde." |