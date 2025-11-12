Feature: Envío automático de reportes mensuales al correo
  Como miembro de hogar multifamiliar con cuenta "Pro" de Ohmia,
  Quiero recibir mi reporte mensual de consumo en formato PDF automáticamente al correo registrado,
  Para tener un respaldo accesible y revisar mi evolución energética sin la necesidad de ingresar a la aplicación.

  Scenario Outline: Envío automático de reporte mensual
    Given el usuario tiene una cuenta <tipo-cuenta> activa
    And no tiene tiempo para ingresar a la aplicación
    When finaliza el último día del mes
    Then el sistema genera automáticamente el reporte mensual en <formato-reporte>
    And lo envía al correo electrónico asociado a la cuenta

    Examples: Variables de entrada
      | tipo-cuenta | formato-reporte |
      | "premium"   | "PDF"           |