Feature: Protección de datos personales y de consumo
  Como dueño de una mediana empresa que confía su información a la aplicación,
  Quiero que mis datos personales y de consumo estén protegidos mediante encriptación,
  Para garantizar mi privacidad y sentir seguridad al utilizar el sistema.

  Scenario Outline: Encriptación de datos en almacenamiento
    Given el usuario registra información personal o de consumo energético
    And le dé al botón de <boton-confirmar>
    When el sistema guarda estos datos en la base de datos
    Then la información se encripta utilizando un estándar de seguridad reconocido (como <estandar-encriptacion>)
    And solo los procesos autorizados del sistema pueden acceder a los datos desencriptados

    Examples: Variables de entrada
      | boton-confirmar | estandar-encriptacion |
      | "confirmar"     | "AES-256"             |