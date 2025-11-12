Feature: Autenticación con doble factor de seguridad
  Como miembro de hogar multifamiliar preocupado por la seguridad de su cuenta,
  Quiero iniciar sesión con un sistema de doble autenticación,
  Para asegurarme de que nadie acceda a mi cuenta sin mi autorización.

  Scenario Outline: Verificación a través de app de autenticación
    Given el usuario quiere iniciar sesión en la aplicación
    And coloca su correo y contraseña correctos
    When el sistema valida las credenciales
    Then muestra la sección <seccion-autenticacion-dos-factores>
    And se solicita al usuario ingresar el el código para completar su inicio de sesión
    And se muestran otras opciones para validar el inicio de sesión

    Examples: Variables de entrada
      | seccion-autenticacion-dos-factores     |
      | "Autenticación de dos factores"        |

  Scenario Outline: Verificación a través de correo electrónico
    Given el usuario quiere iniciar sesión en la aplicación
    And coloca su correo y contraseña correctos
    And no tiene o utiliza una aplicación de autenticación de dos factores
    And está en la sección <seccion-autenticacion-dos-factores>
    When presiona el botón <boton-mas-opciones>
    And presiona el botón <boton-enviar-codigo-correo>
    Then el sistema envía muestra la sección <seccion-verificacion-correo>

    Examples: Variables de entrada
      | seccion-autenticacion-dos-factores | boton-mas-opciones | boton-enviar-codigo-correo   | seccion-verificacion-correo            |
      | "Autenticación de dos factores"    | "Más opciones"     | "Enviar código a correo"     | "Verificación con correo electrónico"  |

  Scenario Outline: Envío de código al correo electrónico
    Given el usuario se encuentra en la sección <seccion-verificacion-correo>
    When completa el apartado de ingresar correo electrónico
    And presiona el botón <boton-enviar-codigo>
    Then el sistema envía el código al correo electrónico del usuario
    And el sistema muestra la sección para colocar y verificar el código enviado al correo

    Examples: Variables de entrada
      | seccion-verificacion-correo            | boton-enviar-codigo |
      | "Verificación con correo electrónico"  | "Enviar código"     |

  Scenario Outline: Verificación de código enviado al correo electrónico
    Given el usuario tiene el código de verificación enviado a su correo electrónico
    And está en la sección para colocar y verificar el código enviado al correo
    When ingresa el código enviado a su correo
    And presiona el botón <boton-verificar>
    Then el sistema muestra la sección <seccion-menu-principal>

    Examples: Variables de entrada
      | boton-verificar | seccion-menu-principal |
      | "Verificar"     | "Menú principal"       |