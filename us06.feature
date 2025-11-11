Feature: Seleccionar consumo desde base de datos
  Como responsable del hogar,
  Quiero elegir el consumo de un dispositivo desde la base de datos,
  Para ahorrar tiempo.

  Scenario Outline: Seleccionar un dispositivo con marca, modelo y año
    Given el usuario está en la sección <seccion-agregar>
    And elige la opción <opcion-base-datos>
    When selecciona en el primer desplegable <desplegable-dispositivo>
    And selecciona en el segundo desplegable <desplegable-marca>
    And selecciona en el tercer desplegable <desplegable-modelo>
    And selecciona en el cuarto desplegable <desplegable-anio>
    Then el sistema completa automáticamente el campo <campo-consumo> con el valor exacto del dispositivo en ese año
    And muestra el mensaje <mensaje-exito>

    Examples: Variables de entrada
      | seccion-agregar        | opcion-base-datos              | desplegable-dispositivo                   | desplegable-marca | desplegable-modelo | desplegable-anio | campo-consumo |
      | "Agregar dispositivo"  | "Seleccionar de base de datos" | "Dispositivo electrónico: Refrigeradora"  | "Marca: LG"       | "Modelo: X123"     | "Año: 2020"      | "Consumo"     |

    Examples: Variables de salida
      | mensaje-exito                            |
      | "Consumo cargado desde la base de datos" |

  Scenario Outline: Seleccionar un dispositivo sin modelo ni año
    Given el usuario está en la sección <seccion-agregar>
    And elige la opción <opcion-base-datos>
    When selecciona <desplegable-dispositivo>
    And selecciona <desplegable-marca>
    And deja vacío el campo <campo-modelo>
    And deja vacío el campo <campo-anio>
    Then el sistema carga el consumo promedio de lavadoras Samsung
    And muestra el mensaje <mensaje-exito>

    Examples: Variables de entrada
      | seccion-agregar        | opcion-base-datos              | desplegable-dispositivo              | desplegable-marca  | campo-modelo | campo-anio |
      | "Agregar dispositivo"  | "Seleccionar de base de datos" | "Dispositivo electrónico: Lavadora"  | "Marca: Samsung"   | "Modelo"     | "Año"      |

    Examples: Variables de salida
      | mensaje-exito                            |
      | "Consumo cargado desde la base de datos" |

  Scenario Outline: Seleccionar un dispositivo solo con marca y año
    Given el usuario está en la sección <seccion-agregar>
    And elige la opción <opcion-base-datos>
    When selecciona <desplegable-dispositivo>
    And selecciona <desplegable-marca>
    And deja vacío el campo <campo-modelo>
    And selecciona <desplegable-anio>
    Then el sistema carga el consumo promedio de televisores Sony del 2015
    And muestra el mensaje <mensaje-exito>

    Examples: Variables de entrada
      | seccion-agregar        | opcion-base-datos              | desplegable-dispositivo               | desplegable-marca | campo-modelo | desplegable-anio |
      | "Agregar dispositivo"  | "Seleccionar de base de datos" | "Dispositivo electrónico: Televisor"  | "Marca: Sony"     | "Modelo"     | "Año: 2015"      |

    Examples: Variables de salida
      | mensaje-exito                            |
      | "Consumo cargado desde la base de datos" |

  Scenario Outline: Seleccionar un dispositivo solo con año
    Given el usuario está en la sección <seccion-agregar>
    And elige la opción <opcion-base-datos>
    When selecciona <desplegable-dispositivo>
    And deja vacío el campo <campo-marca>
    And deja vacío el campo <campo-modelo>
    And selecciona <desplegable-anio>
    Then el sistema carga el consumo promedio de televisores del 2015
    And muestra el mensaje <mensaje-exito>

    Examples: Variables de entrada
      | seccion-agregar        | opcion-base-datos              | desplegable-dispositivo               | campo-marca | campo-modelo | desplegable-anio |
      | "Agregar dispositivo"  | "Seleccionar de base de datos" | "Dispositivo electrónico: Televisor"  | "Marca"     | "Modelo"     | "Año: 2015"      |

    Examples: Variables de salida
      | mensaje-exito                            |
      | "Consumo cargado desde la base de datos" |

  Scenario Outline: Dispositivo no encontrado
    Given el usuario está en la sección <seccion-agregar>
    And elige la opción <opcion-base-datos>
    When selecciona <desplegable-dispositivo>
    And deja vacío el campo <campo-marca>
    And deja vacío el campo <campo-modelo>
    And deja vacío el campo <campo-anio>
    And no encuentra coincidencia en la base de datos
    Then el sistema muestra el mensaje <mensaje-error>

    Examples: Variables de entrada
      | seccion-agregar        | opcion-base-datos              | desplegable-dispositivo                | campo-marca | campo-modelo | campo-anio |
      | "Agregar dispositivo"  | "Seleccionar de base de datos" | "Dispositivo electrónico: Microondas"  | "Marca"     | "Modelo"     | "Año"      |

    Examples: Variables de salida
      | mensaje-error                                                |
      | "Dispositivo no encontrado, ingresa el consumo manualmente"  |