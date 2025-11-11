Feature: Añadir dispositivo manualmente
  Como responsable del hogar,
  Quiero registrar un nuevo dispositivo electrónico,
  Para calcular su consumo mensual.

  Scenario Outline: Registrar un dispositivo electrónico
    Given el usuario está en la sección <seccion-dispositivos>
    When presiona el botón <boton-agregar>
    And completa los campos <campo-nombre>, <campo-consumo> y <campo-horas>
    And presiona el botón <boton-guardar>
    Then el sistema muestra el mensaje <mensaje-exito>
    And el dispositivo aparece en el apartado <apartado-lista>

    Examples: Variables de entrada
      | seccion-dispositivos | boton-agregar         | campo-nombre            | campo-consumo | campo-horas      | boton-guardar |
      | "Dispositivos"       | "Agregar dispositivo" | "Nombre de dispositivo" | "Consumo"     | "Horas de uso"   | "Guardar"     |

    Examples: Variables de salida
      | mensaje-exito           | apartado-lista            |
      | "Dispositivo agregado"  | "Lista de dispositivos"   |