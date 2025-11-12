Feature: Registro directo desde la landing page
  Como dueño de una PyME que se siente más cómodo trabajando desde una computadora que desde un celular,
  Quiero poder crear mi cuenta directamente desde la landing page,
  Para comenzar a usar la aplicación sin tener que pasar por procesos complicados desde el teléfono.

  Scenario Outline: Registro desde la landing page
    Given el usuario se encuentra en la landing page
    When hace clic en el botón <boton-crear-cuenta>
    Then se muestra un formulario con campos <campo-nombre>, <campo-correo> y <campo-contrasena>
    When completa los campos y selecciona <boton-registrar>
    Then aparece el mensaje <mensaje-cuenta-creada>
    And se redirige a la pantalla de inicio de sesión

    Examples: Variables de entrada
      | boton-crear-cuenta | campo-nombre | campo-correo | campo-contrasena | boton-registrar |
      | "Crear cuenta"     | "Nombre"     | "Correo"     | "Contraseña"     | "Registrar"     |

    Examples: Variables de salida
      | mensaje-cuenta-creada       |
      | "Cuenta creada con éxito"   |

  Scenario Outline: Envío de código para confirmación de correo
    Given el usuario está registrándose
    And ingresa un correo electrónico válido
    When presiona el botón <boton-registrar>
    Then el sistema envía un código de confirmación al correo
    And aparece una ventana flotante donde dice <mensaje-codigo-enviado>

    Examples: Variables de entrada
      | boton-registrar |
      | "Registrar"     |

    Examples: Variables de salida
      | mensaje-codigo-enviado                                         |
      | "Código enviado al correo, ingresa aquí el código"             |

  Scenario Outline: Confirmar el correo electrónico
    Given el usuario ha recibido el código al correo
    When ingresa el código en la caja de texto
    And presiona el botón <boton-validar>
    Then se cierra la ventana flotante
    And aparece el mensaje <mensaje-registro-exitoso>

    Examples: Variables de entrada
      | boton-validar |
      | "Validar"     |

    Examples: Variables de salida
      | mensaje-registro-exitoso           |
      | "Cuenta registrada correctamente"  |