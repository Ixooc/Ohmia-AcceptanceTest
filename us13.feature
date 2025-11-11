Feature: Crear habitación para organizar mejor el consumo
  Como miembro de hogar multifamiliar que busca mantener su casa organizada,
  Quiero crear una habitación en la aplicación,
  Para clasificar mis dispositivos por espacios y así entender mejor qué áreas de la casa consumen más energía.

  Scenario Outline: Crear una nueva habitación exitosamente
    Given el usuario está en la sección <seccion-gestion-espacios>
    When le da click al botón <boton-agregar-espacio>
    And ingresa el nombre <nombre-espacio> en el apartado <apartado-nombre-espacio>
    And le da click al botón <boton-guardar>
    Then aparece el mensaje <mensaje-exito>
    And el nuevo espacio <nombre-espacio> aparece en la lista de espacios

    Examples: Variables de entrada
      | seccion-gestion-espacios | boton-agregar-espacio   | nombre-espacio          | apartado-nombre-espacio | boton-guardar |
      | "Gestión de espacios"    | "Agregar nuevo espacio" | "Habitación principal"  | "Nombre de espacio"     | "Guardar"     |

    Examples: Variables de salida
      | mensaje-exito              |
      | "Nuevo espacio registrado" |

  Scenario Outline: Intentar crear una habitación sin nombre
    Given el usuario está en la sección <seccion-gestion-espacios>
    When presiona el botón <boton-agregar-espacio>
    And deja el campo <campo-nombre-espacio> vacío
    And presiona el botón <boton-guardar>
    Then el sistema muestra el mensaje <mensaje-error>
    And no se registra el espacio

    Examples: Variables de entrada
      | seccion-gestion-espacios | boton-agregar-espacio   | campo-nombre-espacio  | boton-guardar |
      | "Gestión de espacios"    | "Agregar nuevo espacio" | "Nombre de espacio"   | "Guardar"     |

    Examples: Variables de salida
      | mensaje-error                           |
      | "El nombre del espacio es obligatorio." |

  Scenario Outline: Evitar nombres duplicados
    Given el usuario ya tiene un espacio llamado <nombre-existente>
    When intenta crear una nuevo espacio con el nombre <nombre-duplicado>
    And presiona el botón <boton-guardar>
    Then el sistema muestra el mensaje <mensaje-error>
    And no se registra el espacio duplicado

    Examples: Variables de entrada
      | nombre-existente | nombre-duplicado | boton-guardar |
      | "Cocina"         | "Cocina"         | "Guardar"     |

    Examples: Variables de salida
      | mensaje-error                          |
      | "Ya existe un espacio con ese nombre." |

  Scenario Outline: Límite de espacios en la versión gratuita
    Given el usuario está usando la versión gratuita
    And ya tiene <cantidad-espacios> espacios creados
    When intenta registrar un nuevo espacio
    Then el sistema muestra el mensaje <mensaje-limite>
    And el espacio no se registra

    Examples: Variables de entrada
      | cantidad-espacios |
      | 5                 |

    Examples: Variables de salida
      | mensaje-limite                                                                               |
      | "Has alcanzado el límite de espacios en tu plan. Actualiza a Premium para más espacios."    |