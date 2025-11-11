Feature: Iniciar sesión
  Como responsable del hogar,
  Quiero iniciar sesión con mi correo y contraseña,
  Para acceder a toda mi información sobre el consumo eléctrico.

  Scenario Outline: Iniciar sesión con los datos registrados
    Given el responsable del hogar ya se registró y tiene una cuenta
    And tiene la aplicación abierta
    When llena los apartados <campo-correo> y <campo-contrasena>
    And presiona el botón <boton-iniciar-sesion>
    Then el usuario es dirigido a la sección <seccion-destino>

    Examples: Variables de entrada
      | campo-correo | campo-contrasena | boton-iniciar-sesion |
      | "Correo"     | "Contraseña"     | "Iniciar sesión"     |

    Examples: Variables de salida
      | seccion-destino  |
      | "Menú principal" |

  Scenario Outline: Iniciar sesión con Google
    Given el responsable del hogar ya se registró y tiene una cuenta
    And tiene la aplicación abierta
    When presiona el botón <boton-google>
    Then el usuario es dirigido a la sección <seccion-destino>

    Examples: Variables de entrada
      | boton-google                |
      | "Iniciar sesión con Google" |

    Examples: Variables de salida
      | seccion-destino  |
      | "Menú principal" |