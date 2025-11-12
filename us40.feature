Feature: Compatibilidad multiplataforma
  Como responsable del hogar,
  Quiero que la aplicación funcione de manera en Android, iOS y versión web,
  Para poder acceder a mi información desde cualquier dispositivo sin perder funcionalidad ni diseño.

  Scenario Outline: Sincronización unificada de datos
    Given el usuario realiza una modificación en su <dispositivo-origen>
    And quiera ver estos cambios en la <plataforma-destino>
    When inicia sesión en este otro dispositivo
    Then los cambios se reflejan gracias a la sincronización en la nube
    And no se presentan conflictos

    Examples: Variables de entrada
      | dispositivo-origen | plataforma-destino |
      | "celular"          | "web"              | 