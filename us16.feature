Feature: Crear grupo familiar
  Como miembro de una vivienda multifamiliar en la que varias familias compartimos el gasto de electricidad,
  Quiero crear grupos familiares que representen los distintos núcleos dentro de la vivienda,
  Para comparar consumos entre ellos y entender qué parte de la familia consume más.

  Scenario Outline: Crear un grupo familiar en una vivienda compartida
    Given el usuario tiene una cuenta activa
    When accede a la sección <seccion-familia>
    And presiona la opción <opcion-agregar-familia>
    And registra el nombre del grupo <nombre-grupo>
    And presiona el botón <boton-agregar>
    Then el sistema muestra el mensaje <mensaje-exito>
    And en la sección <seccion-familia> aparece en la lista de familias agregadas

    Examples: Variables de entrada
      | seccion-familia | opcion-agregar-familia | nombre-grupo            | boton-agregar |
      | "Familia"       | "Agregar familia"      | "Familia Díaz - piso 1" | "Agregar"     |

    Examples: Variables de salida
      | mensaje-exito                         |
      | "Grupo familiar creado exitosamente." |

  Scenario Outline: Validar creación de familia sin nombre
    Given el usuario está en el formulario de <formulario-agregar-familia>
    When no completa el apartado <apartado-nombre>
    And presiona el botón <boton-agregar>
    Then el sistema muestra el mensaje <mensaje-error>
    And no se crea el grupo

    Examples: Variables de entrada
      | formulario-agregar-familia | apartado-nombre | boton-agregar |
      | "Agregar Familia"          | "Nombre"        | "Agregar"     |

    Examples: Variables de salida
      | mensaje-error                                                   |
      | "Debes ingresar un nombre para poder agregar una familia."      |

  Scenario Outline: Evitar duplicados
    Given el usuario ya creó un grupo llamado <nombre-existente>
    When intenta crear otra familia con el mismo nombre
    And presiona el botón <boton-agregar>
    Then el sistema muestra el mensaje <mensaje-error>
    And no se crea el grupo duplicado

    Examples: Variables de entrada
      | nombre-existente        | boton-agregar |
      | "Familia Díaz - piso 1" | "Agregar"     |

    Examples: Variables de salida
      | mensaje-error                         |
      | "Ya existe un grupo con ese nombre."  |

  Scenario Outline: Visualizar grupos de la vivienda
    Given el usuario ha creado uno o más grupos familiares
    When accede a la sección <seccion-familia>
    Then el sistema muestra la lista de los grupos creados
    And permite gestionarlos con las opciones editar, eliminar o añadir espacios a la familia

    Examples: Variables de entrada
      | seccion-familia |
      | "Familia"       |