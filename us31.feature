Feature: Descargar datos de consumo en formato Excel
  Como dueño de una tienda,
  Quiero descargar mis datos de consumo en formato Excel,
  Para poder hacer mis propios cálculos y filtrar está información otorgada.

  Scenario Outline: Exportar datos a Excel
    Given el usuario tiene consumo registrado en su cuenta
    And desee exportar está información
    When selecciona la opción de <opcion-exportar>
    And escoja la opción de <formato-excel>
    Then el sistema genera un archivo con las fechas, dispositivos, consumos
    And lo descarga automáticamente en un archivo de formato <extension-archivo>

    Examples: Variables de entrada
      | opcion-exportar | formato-excel |
      | "Exportar"      | "Excel"       |

    Examples: Variables de salida
      | extension-archivo |
      | ".xlsx"           |