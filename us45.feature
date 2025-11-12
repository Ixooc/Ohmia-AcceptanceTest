Feature: Visualización de beneficios Premium para ahorro energético
  Como encargado del hogar que busca reducir el gasto eléctrico mensual,
  Quiero que la aplicación me muestre los beneficios de pasarme a la versión premium,
  Para conocer qué funciones adicionales me ayudarían a optimizar mi consumo y ahorrar más energía.

  Scenario Outline: Evaluar beneficios de la versión Premium desde su uso
    Given que el usuario ya ha registrado <cantidad-espacios-registrados> espacios para medir su consumo
    And quiere agregar uno más
    And le aparece una ventana emergente con el mensaje <mensaje-limite-espacios>
    When presiona el botón <boton-suscribirse>
    Then el sistema lo redirige a la sección <seccion-unete-premium>
    And se muestra la lista de beneficios a las que accede el usuario si llegase a suscribirse

    Examples: Variables de entrada
      | cantidad-espacios-registrados | boton-suscribirse |
      | 5                             | "Suscribirse"     |

    Examples: Variables de salida
      | mensaje-limite-espacios                                                                      | seccion-unete-premium |
      | "Has alcanzado el límite de espacios en tu plan. Actualiza a Premium para más espacios"     | "Únete a premium"     |

  Scenario Outline: Evaluar beneficios de la versión Premium desde la configuración
    Given el usuario siente curiosidad por conocer qué ofrece el plan premium
    When se dirige a la sección <seccion-configuracion>
    And selecciona la opción <opcion-unirse-premium>
    Then el sistema lo redirige a la sección <seccion-unete-premium>
    And se muestra la lista de beneficios a las que accede el usuario si llegase a suscribirse

    Examples: Variables de entrada
      | seccion-configuracion | opcion-unirse-premium |
      | "Configuración"       | "Unirse a premium"    |

    Examples: Variables de salida
      | seccion-unete-premium |
      | "Únete a premium"     |