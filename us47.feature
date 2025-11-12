Feature: Seleccionar tipo de dispositivo a registrar
  Como encargado del hogar que busca controlar el consumo eléctrico de sus aparatos,
  Quiero seleccionar el tipo de dispositivo que deseo registrar,
  Para que la aplicación me muestre los campos específicos de consumo y uso según el tipo elegido.

  Scenario Outline: Seleccionar tipo de dispositivo
    Given que el usuario accede a la sección <seccion-agregar-dispositivo>
    When selecciona un tipo de dispositivo de la lista
    Then la aplicación debe mostrar el ícono del dispositivo y los campos de ingreso correspondientes a ese tipo y permitir continuar con el registro

    Examples: Variables de entrada
      | seccion-agregar-dispositivo |
      | "Agregar dispositivo"       |