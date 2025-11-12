Feature: Actualización de información de cuenta
  Scenario Outline: Actualización de correo
    Given el usuario tiene un correo asociado a su cuenta
    When accede a <seccion-configuracion>
    And presiona en la opción <opcion-cuenta>
    And presiona la opción <opcion-correo-electronico>
    And modifica el correo ya registrado
    And presiona el botón <boton-guardar-cambios>
    Then el sistema muestra el mensaje <mensaje-correo-actualizado>
    And cuando el usuario ingresa nuevamente a la opción se visualiza el nuevo correo

    Examples: Variables de entrada
      | seccion-configuracion | opcion-cuenta | opcion-correo-electronico | boton-guardar-cambios |
      | "Configuración"       | "Cuenta"      | "Correo electrónico"      | "Guardar cambios"     |

    Examples: Variables de salida
      | mensaje-correo-actualizado                 |
      | "El correo fué cambiado exitosamente"      |

  Scenario Outline: Actualización de contraseña
    Given el usuario ya ha registrado una contraseña
    When accede a <seccion-configuracion>
    And presiona en la opción <opcion-cuenta>
    And presiona la opción <opcion-contrasena>
    And ingresa la nueva contraseñas y su confirmación
    And presiona el botón <boton-guardar-cambios>
    Then el sistema muestra el mensaje <mensaje-contrasena-actualizada>

    Examples: Variables de entrada
      | seccion-configuracion | opcion-cuenta | opcion-contrasena | boton-guardar-cambios |
      | "Configuración"       | "Cuenta"      | "Contraseña"      | "Guardar cambios"     |

    Examples: Variables de salida
      | mensaje-contrasena-actualizada             |
      | "La contraseña fué cambiada exitosamente"  |