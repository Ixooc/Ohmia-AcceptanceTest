Feature: Crear cuenta
  Como responsable del hogar,
  Quiero registrarme de forma rápida y sencilla,
  Para poder utilizar la aplicación sin complicaciones.

  Scenario Outline: Registrar cuenta a través de ingreso de datos por parte del usuario
    Given el usuario accede a la aplicación por primera vez
    And no tiene una cuenta para iniciar sesión
    When presiona el botón <boton_registrarse>
    And llena los apartados <campo_nombre>, <campo_correo> y <campo_contrasena>
    And presiona el botón <boton_registrar_cuenta>
    Then el sistema muestra el mensaje <mensaje_exito>
    And dirige al usuario a la <pantalla_destino>

    Examples: Variables de entrada
      | boton_registrarse | campo_nombre | campo_correo | campo_contrasena | boton_registrar_cuenta |
      | "Registrarse"     | "Nombre"     | "Correo"     | "Contraseña"     | "Registrar cuenta"     |

    Examples: Variables de salida
      | mensaje_exito       | pantalla_destino                        |
      | "Cuenta registrada" | pantalla principal de la aplicación     |

  Scenario Outline: Registrar cuenta a través de Google
    Given el usuario accede a la aplicación por primera vez
    And no tiene una cuenta para iniciar sesión
    When presiona el botón <boton_registrarse>
    And presiona el botón <boton_google>
    And otorga los permisos para utilizar la cuenta en la aplicación
    And presiona el botón <boton_permitir>
    Then el sistema mostrará el mensaje <mensaje_exito>
    And dirige al usuario a la <pantalla_destino>

    Examples: Variables de entrada
      | boton_registrarse | boton_google               | boton_permitir |
      | "Registrarse"     | "Registrarse con Google"   | "Permitir"     |

    Examples: Variables de salida
      | mensaje_exito       | pantalla_destino                        |
      | "Cuenta registrada" | pantalla principal de la aplicación     |