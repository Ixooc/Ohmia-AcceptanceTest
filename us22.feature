Feature: Recibir recomendaciones personalizadas
  Como miembro de una vivienda multifamiliar que busca ahorrar en su recibo de luz,
  Quiero recibir recomendaciones personalizadas basadas en mis dispositivos,
  Para saber qué acciones concretas puedo tomar y reducir el consumo mensual sin tener que suponer por dónde empezar.

  Scenario Outline: Generación de recomendaciones automáticas
    Given el usuario tiene registrados al menos <cantidad-dispositivos> dispositivos en la sección <seccion-dispositivos>
    And uno o más dispositivos representan más del <porcentaje-consumo> del consumo total
    When accede a la sección <seccion-recomendaciones>
    Then el sistema muestra una lista de sugerencias específicas asociadas a los dispositivos con mayor consumo
    And cada recomendación incluye una breve explicación de su impacto estimado al final de mes

    Examples: Variables de entrada
      | cantidad-dispositivos | seccion-dispositivos | porcentaje-consumo | seccion-recomendaciones |
      | 3                     | "Dispositivos"       | "25%"              | "Recomendaciones"       |

  Scenario Outline: Recomendación al registrar nuevo dispositivo
    Given el usuario está registrando su <dispositivo-nuevo> en la sección <seccion-dispositivos>
    And tiene registrado previamente su <dispositivo-existente> entre sus dispositivos
    When presiona el botón <boton-guardar>
    Then el sistema analiza el dispositivo agregado
    And muestra una notificación con una recomendación <texto-recomendacion>

    Examples: Variables de entrada
      | dispositivo-nuevo | seccion-dispositivos | dispositivo-existente | boton-guardar |
      | "horno"           | "Dispositivos"       | "microondas"          | "Guardar"     |

    Examples: Variables de salida
      | texto-recomendacion                                                                                                   |
      | "Usar el microondas en vez del horno para calentar alimentos puede ahorrarte hasta 20 soles en tu recibo de electricidad" |