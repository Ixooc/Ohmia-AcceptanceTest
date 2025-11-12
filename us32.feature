Feature: Compartir reporte con miembros del grupo
  Como miembro de un grupo multifamiliar,
  Quiero poder compartir mi reporte de consumo con los demás integrantes,
  Para fomentar la transparencia entre los miembros.

  Scenario Outline: Compartir reporte desde la sección "Consumo"
    Given el usuario está en un grupo multifamiliar
    And tiene un reporte mensual generado
    When selecciona la opción <opcion-compartir-grupo>
    Then el sistema envía una notificación a todos los miembros del grupo con el enlace del reporte
    And los destinatarios pueden visualizarlo desde la sección <seccion-reportes-compartidos>

    Examples: Variables de entrada
      | opcion-compartir-grupo  | seccion-reportes-compartidos |
      | "Compartir con grupo"   | "Reportes compartidos"       |