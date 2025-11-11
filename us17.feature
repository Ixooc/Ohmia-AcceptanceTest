Feature: Descargar PDF de los datos comparativos
  Como administrador de una PyME,
  Quiero descargar un archivo PDF con los datos comparativos de consumo eléctrico,
  Para revisar y compartir la información de manera clara y organizada.

  Scenario Outline: Generar y descargar PDF de comparativos
    Given el usuario está en la sección <seccion-datos-comparativos>
    And el sistema muestra una lista con los consumos energéticos mensuales de cada área de la empresa
    When presiona el botón <boton-descargar-pdf>
    Then el sistema genera un archivo PDF con los datos mostrados del consumo mensual registrado de cada área
    And el archivo incluye el nombre de cada área, su consumo en kWh y el total general
    And el sistema muestra el mensaje <mensaje-exito>

    Examples: Variables de entrada
      | seccion-datos-comparativos | boton-descargar-pdf |
      | "Datos comparativos"       | "Descargar PDF"     |

    Examples: Variables de salida
      | mensaje-exito                  |
      | "El PDF se descargó con éxito" |

  Scenario Outline: Intentar descargar sin datos disponibles
    Given el usuario está en la sección <seccion-consumo>
    And no hay registros disponibles de consumo
    When presiona el botón <boton-descargar-pdf>
    Then el sistema muestra el mensaje <mensaje-error>

    Examples: Variables de entrada
      | seccion-consumo | boton-descargar-pdf |
      | "Consumo"       | "Descargar PDF"     |

    Examples: Variables de salida
      | mensaje-error                               |
      | "No hay datos disponibles para descargar"   |