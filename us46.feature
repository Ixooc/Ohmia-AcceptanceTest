Feature: Métodos y procesos de pago sencillos y seguros
  Como dueño de una pequeña empresa que busca optimizar los costos energéticos de mi negocio,
  Quiero suscribirme al plan Premium seleccionando mi método de pago preferido y completando la transacción de forma segura,
  Para acceder a herramientas avanzadas de monitoreo y reportes que me permitan gestionar mejor el consumo eléctrico.

  Scenario Outline: Selección del método de pago
    Given el usuario ha decidido adquirir la versión Premium después de leer los beneficios
    When selecciona la opción <opcion-suscribirse>
    Then el sistema muestra una lista de métodos de pago disponibles que incluye tarjetas y billeteras digitales

    Examples: Variables de entrada
      | opcion-suscribirse |
      | "Suscribirse"      |

  Scenario Outline: Ingreso de datos de tarjeta
    Given el usuario selecciona el método de pago <metodo-pago>
    And el sistema le muestra la sección <seccion-datos-tarjeta>
    When ingresa correctamente los datos requeridos de su tarjeta
    Then el sistema que valida que la información brindada sea correcta
    And muestra un Check al lado de cada dato ingresado correcto

    Examples: Variables de entrada
      | metodo-pago | seccion-datos-tarjeta |
      | "Visa"      | "Datos de tarjeta"    |

  Scenario Outline: Confirmación del pago
    Given el usuario ha ingresado los datos correctos de su tarjeta
    And presiona el botón <boton-confirmar>
    When el sistema envía un correo con el código de confirmación de transacción
    And el usuario ingresa ese código en la caja de texto
    And presiona el botón <boton-validar>
    Then el sistema valida el código
    And muestra el mensaje <mensaje-validacion-exitosa>

    Examples: Variables de entrada
      | boton-confirmar | boton-validar |
      | "confirmar"     | "validar"     |

    Examples: Variables de salida
      | mensaje-validacion-exitosa        |
      | "Código validado correctamente"   |

  Scenario Outline: Emisión de boleta y confirmación final
    Given el usuario ha confirmado el pago
    When el sistema valida procesa el pago
    Then genera automáticamente una boleta digital y también la envía al correo del usuario
    And se muestra el mensaje <mensaje-premium-activo>
    And el usuario puede seguir creando más espacios para su negocio

    Examples: Variables de salida
      | mensaje-premium-activo       |
      | "Ya eres parte de premium"   |