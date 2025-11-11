Feature: Eliminar dispositivo
  Como miembro de hogar multifamiliar,
  Quiero eliminar un dispositivo de mi lista,
  Para que no influya en los cálculos mensuales de consumo eléctrico.

  Scenario Outline: Eliminar un dispositivo de la lista
    Given el usuario está en la sección <seccion-dispositivos>
    And existe un dispositivo con nombre <nombre-dispositivo> en la lista
    When selecciona el dispositivo
    And presiona el botón <boton-eliminar>
    Then el sistema muestra un mensaje de confirmación <mensaje-confirmacion>
    And al confirmar, el dispositivo desaparece de la lista
    And el sistema muestra el mensaje <mensaje-exito>

    Examples: Variables de entrada
      | seccion-dispositivos         | nombre-dispositivo    | boton-eliminar          |
      | "Dispositivos registrados"   | "Refrigeradora LG"    | "Eliminar dispositivo"  |

    Examples: Variables de salida
      | mensaje-confirmacion                  | mensaje-exito                        |
      | "¿Desea eliminar este dispositivo?"   | "Dispositivo eliminado correctamente" |

  Scenario Outline: Cancelar eliminación de un dispositivo
    Given el usuario selecciona el dispositivo <nombre-dispositivo> en la lista
    When presiona el botón <boton-eliminar>
    And el sistema muestra el mensaje de confirmación <mensaje-confirmacion>
    And presiona el botón <boton-cancelar>
    Then el dispositivo permanece en la lista
    And no se modifica el consumo registrado

    Examples: Variables de entrada
      | nombre-dispositivo      | boton-eliminar          | boton-cancelar |
      | "Televisor Samsung"     | "Eliminar dispositivo"  | "Cancelar"     |

    Examples: Variables de salida
      | mensaje-confirmacion                  |
      | "¿Desea eliminar este dispositivo?"   |