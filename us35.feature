Feature: Seleccionar idioma de la app
  Como dueño de una pequeña empresa que habla español con dificultad,
  Quiero poder cambiar el idioma de la aplicación desde el menú de ajustes,
  Para visualizar todos los textos, botones y mensajes del sistema en el idioma de mi preferencia.

  Scenario Outline: Cambiar idioma exitosamente
    Given el usuario accede a la sección <seccion-configuracion>
    And selecciona el apartado <apartado-idioma>
    When selecciona el idioma <idioma-seleccionado>
    And presiona el botón <boton-confirmar>
    Then el sistema actualiza automáticamente todos los textos, botones y mensajes de la interfaz al idioma seleccionado
    And muestra el mensaje <mensaje-exito>

    Examples: Variables de entrada
      | seccion-configuracion | apartado-idioma | idioma-seleccionado | boton-confirmar |
      | "Configuración"       | "Idioma"        | "Inglés"            | "Confirmar"     |

    Examples: Variables de salida
      | mensaje-exito                     |
      | "Idioma cambiado correctamente"   |