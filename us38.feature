Feature: Soporte para múltiples dispositivos registrados
  Como dueño de una cafetería,
  Quiero que la aplicación pueda gestionar hasta 300 dispositivos registrados sin errores,
  Para utilizarlo en entornos empresariales con gran número de equipos eléctricos.

  Scenario Outline: Registro masivo de dispositivos
    Given el usuario tiene una empresa con más de <cantidad-equipos-inicial> equipos electrónicos
    And tiene una cuenta <tipo-cuenta>
    When registra progresivamente los nuevos dispositivos
    Then el sistema mantiene un rendimiento estable hasta alcanzar los <limite-dispositivos> equipos

    Examples: Variables de entrada
      | cantidad-equipos-inicial | tipo-cuenta | limite-dispositivos |
      | 35                       | "premium"   | 300                 |