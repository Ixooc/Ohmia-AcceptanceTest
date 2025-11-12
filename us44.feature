Feature: Respaldo automático de datos
  Como responsable del hogar,
  Quiero que mis datos se respalden automáticamente cada 24 horas,
  Para evitar alguna pérdida de información personal ante fallas o cierres inesperados.

  Scenario Outline: Generación automática del respaldo diario
    Given el usuario registra un dispositivo nuevo en su cuenta
    And éste se almacena correctamente en la lista de dispositivos
    When han transcurrido <tiempo-respaldo> horas desde el último respaldo
    Then el sistema crea una copia de seguridad completa en el servidor seguro
    And registra la fecha y hora del respaldo en el historial del usuario

    Examples: Variables de entrada
      | tiempo-respaldo |
      | 24              |