Feature: Crear cuenta
  Como responsable del hogar,
  Quiero registrarme de forma rápida y sencilla,
  Para poder utilizar la aplicación sin complicaciones.

  Scenario Outline: Registrar cuenta a través de ingreso de datos por parte del usuario
    Given el usuario accede a la aplicación por primera vez
    And no tiene una cuenta para iniciar sesión
    When presiona el botón <boton-registrarse>
    And llena los apartados <campo-nombre>, <campo-correo> y <campo-contrasena>
    And presiona el botón <boton-registrar-cuenta>
    Then el sistema muestra el mensaje <mensaje-exito>
    And dirige al usuario a la <pantalla-destino>
    Examples: Variables de entrada
      | boton-registrarse | campo-nombre | campo-correo | campo-contrasena | boton-registrar-cuenta |
      | "Registrarse"     | "Nombre"     | "Correo"     | "Contraseña"     | "Registrar cuenta"     |

    Examples: Variables de salida
      | mensaje-exito       | pantalla-destino                        |
      | "Cuenta registrada" | pantalla principal de la aplicación     |

  Scenario Outline: Registrar cuenta a través de Google
    Given el usuario accede a la aplicación por primera vez
    And no tiene una cuenta para iniciar sesión
    When presiona el botón <boton-registrarse>
    And presiona el botón <boton-google>
    And otorga los permisos para utilizar la cuenta en la aplicación
    And presiona el botón <boton-permitir>
    Then el sistema mostrará el mensaje <mensaje-exito>
    And dirige al usuario a la <pantalla-destino>

    Examples: Variables de entrada
      | boton-registrarse | boton-google               | boton-permitir |
      | "Registrarse"     | "Registrarse con Google"   | "Permitir"     |

    Examples: Variables de salida
      | mensaje-exito       | pantalla-destino                        |
      | "Cuenta registrada" | pantalla principal de la aplicación     |