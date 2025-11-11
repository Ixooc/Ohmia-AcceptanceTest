Feature: Iniciar sesión
  Como responsable del hogar,
  Quiero iniciar sesión con mi correo y contraseña,
  Para acceder a toda mi información sobre el consumo eléctrico.

  Scenario Outline: Iniciar sesión con los datos registrados
    Given el responsable del hogar ya se registró y tiene una cuenta
    And tiene la aplicación abierta
    When llena los apartados <campo_correo> y <campo_contrasena>
    And presiona el botón <boton_iniciar_sesion>
    Then el usuario es dirigido a la sección <seccion_destino>

    Examples: Variables de entrada
      | campo_correo | campo_contrasena | boton_iniciar_sesion |
      | "Correo"     | "Contraseña"     | "Iniciar sesión"     |

    Examples: Variables de salida
      | seccion_destino  |
      | "Menú principal" |

  Scenario Outline: Iniciar sesión con Google
    Given el responsable del hogar ya se registró y tiene una cuenta
    And tiene la aplicación abierta
    When presiona el botón <boton_google>
    Then el usuario es dirigido a la sección <seccion_destino>

    Examples: Variables de entrada
      | boton_google                |
      | "Iniciar sesión con Google" |

    Examples: Variables de salida
      | seccion_destino  |
      | "Menú principal" |