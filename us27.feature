Feature: Recordatorio para registrar uso de dispositivos
  Como miembro de vivienda multifamiliar que a veces olvida actualizar el uso de sus dispositivos,
  Quiero recibir recordatorios automáticos después de cierto tiempo de inactividad,
  Para mantener mis datos de consumo actualizados y evitar cálculos inexactos.

  Scenario Outline: Envío de recordatorio automático
    Given que el usuario tiene al menos un dispositivo registrado
    And no ha actualizado las horas de uso en un periodo de <periodo-inactividad>
    When el sistema detecta esta inactividad
    Then el sistema envía una notificación recordando registrar los datos
    And la notificación incluye las opciones <opcion-actualizar> y <opcion-recordar>

    Examples: Variables de entrada
      | periodo-inactividad | opcion-actualizar   | opcion-recordar      |
      | "un mes"            | "Actualizar ahora"  | "Recordar más tarde" |