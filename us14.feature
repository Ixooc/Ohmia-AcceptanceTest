Feature: Asignar dispositivo a una habitación
  Como miembro de un hogar multifamiliar,
  Quiero asignar dispositivos a habitaciones,
  Para segmentar los consumos y entender mejor el gasto energético por espacio.

  Scenario Outline: Asignar dispositivo a espacio desde la sección Dispositivos
    Given el usuario tiene dispositivos registrados
    And está en la sección <seccion-dispositivos>
    When selecciona el dispositivo <nombre-dispositivo>
    And luego presiona el botón <boton-editar>
    And en la sección <seccion-espacio> selecciona <nombre-espacio>
    And presiona el botón <boton-guardar>
    Then el sistema muestra el mensaje <mensaje-exito>
    And el dispositivo aparece en la lista de dispositivos del espacio <nombre-espacio>

    Examples: Variables de entrada
      | seccion-dispositivos | nombre-dispositivo | boton-editar | seccion-espacio | nombre-espacio | boton-guardar |
      | "Dispositivos"       | "Televisor"        | "Editar"     | "Espacio"       | "Habitación"   | "Guardar"     |

    Examples: Variables de salida
      | mensaje-exito              |
      | "Dispositivo modificado"   |

  Scenario Outline: Asignar dispositivo a espacio desde la sección Espacios
    Given el usuario tiene dispositivos registrados
    And está en la sección <seccion-espacios>
    When selecciona el espacio <nombre-espacio-seleccionado>
    And luego presiona el botón <boton-gestionar>
    And luego presiona el botón <boton-asignar-dispositivo>
    And en la lista desplegable selecciona <nombre-dispositivo>
    And presiona el botón <boton-guardar>
    Then el sistema muestra el mensaje <mensaje-exito>
    And el dispositivo aparece en la lista de dispositivos del espacio <nombre-espacio-resultado>

    Examples: Variables de entrada
      | seccion-espacios | nombre-espacio-seleccionado | boton-gestionar | boton-asignar-dispositivo | nombre-dispositivo | boton-guardar |
      | "Espacios"       | "Habitación principal"      | "Gestionar"     | "Asignar dispositivo"     | "Televisor"        | "Guardar"     |

    Examples: Variables de salida
      | mensaje-exito          | nombre-espacio-resultado |
      | "Dispositivo agregado" | "Habitación"             |