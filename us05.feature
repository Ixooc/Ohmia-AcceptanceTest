Feature: Seleccionar consumo por etiqueta
  Como responsable del hogar,
  Quiero registrar el consumo desde la etiqueta del dispositivo,
  Para no calcular manualmente su gasto mensual.

  Scenario Outline: Registrar dispositivo con datos de etiqueta
    Given el usuario está en la sección <seccion-dispositivos>
    And presiona el botón <boton-agregar>
    When selecciona la opción <opcion-etiqueta>
    And completa los campos <campo-nombre>, <campo-consumo-watts> y <campo-horas-diarias>
    And presiona el botón <boton-guardar>
    Then el sistema muestra el mensaje <mensaje-exito>
    And el nuevo dispositivo aparece en la <apartado-lista> con su consumo mensual calculado automáticamente

    Examples: Variables de entrada
      | seccion-dispositivos | boton-agregar         | opcion-etiqueta                | campo-nombre            | campo-consumo-watts      | campo-horas-diarias       | boton-guardar |
      | "Dispositivos"       | "Agregar dispositivo" | "Ingresar consumo por etiqueta" | "Nombre del dispositivo" | "Consumo en watts (W)"   | "Horas de uso diarias"    | "Guardar"     |

    Examples: Variables de salida
      | mensaje-exito                              | apartado-lista            |
      | "Dispositivo agregado con datos de etiqueta" | "Lista de dispositivos" |

  Scenario Outline: Error al no ingresar datos de la etiqueta
    Given el usuario está en la sección <seccion-dispositivos>
    And presiona el botón <boton-agregar>
    When selecciona la opción <opcion-etiqueta>
    And deja vacío el campo <campo-consumo-watts>
    And presiona el botón <boton-guardar>
    Then el sistema muestra el mensaje de error <mensaje-error>
    And el dispositivo no se guarda en la lista

    Examples: Variables de entrada
      | seccion-dispositivos | boton-agregar         | opcion-etiqueta                | campo-consumo-watts    | boton-guardar |
      | "Dispositivos"       | "Agregar dispositivo" | "Ingresar consumo por etiqueta" | "Consumo en watts (W)" | "Guardar"     |

    Examples: Variables de salida
      | mensaje-error                                                   |
      | "Por favor, ingrese el consumo en watts según la etiqueta"      |

  Scenario Outline: Editar dispositivo con datos de etiqueta
    Given el usuario ya registró un dispositivo usando datos de etiqueta
    And está en la sección <apartado-lista>
    When selecciona el dispositivo registrado
    And presiona el botón <boton-editar>
    And modifica el valor del campo <campo-consumo-watts>
    And presiona el botón <boton-guardar-cambios>
    Then el sistema muestra el mensaje <mensaje-exito>
    And el consumo mensual del dispositivo se recalcula y se actualiza en la lista

    Examples: Variables de entrada
      | apartado-lista            | boton-editar | campo-consumo-watts    | boton-guardar-cambios |
      | "Lista de dispositivos"   | "Editar"     | "Consumo en watts (W)" | "Guardar cambios"     |

    Examples: Variables de salida
      | mensaje-exito              |
      | "Dispositivo actualizado"  |