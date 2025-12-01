Feature: Visualización de política de privacidad en la landing page
  Como dueño de una PyME que está preocupado por la seguridad de la información de su negocio,
  Quiero ver en la landing page una explicación clara sobre cómo se protege y maneja mi información,
  Para sentir tranquilidad y confianza al usar la aplicación. 

  Scenario Outline: Visualizar política de privacidad
    Given el usuario se encuentra en la landing page
    When se desplaza hasta el <ubicacion-enlace> de la página
    Then visualiza un enlace llamado <enlace-privacidad>
    And al seleccionarlo, el sistema redirige a una <pagina-dedicada>
    And se muestra información clara, breve y comprensible sobre <contenido-recopilacion>, <contenido-uso>, <contenido-derechos>, <contenido-seguridad>

    Examples: Variables de entrada
      | ubicacion-enlace | enlace-privacidad          | pagina-dedicada   | contenido-recopilacion            | contenido-uso                     | contenido-derechos        | contenido-seguridad              |
      | "final"          | "Política de Privacidad"   | "página dedicada" | "la información que recopilamos"  | "cómo usamos y compartimos esa información" | "sus derechos" | "la seguridad y retención de datos" |

  Scenario Outline: Acceder a Política de Privacidad desde un dispositivo móvil
    Given el usuario visita la landing page desde su <tipo-dispositivo>
    When desliza hacia el <ubicacion-enlace>
    Then visualiza el enlace <enlace-privacidad> sin necesidad de hacer zoom
    And al seleccionarlo, la <pagina-dedicada> se adapta correctamente al tamaño de la pantalla
    And el contenido se muestra sin desplazamientos laterales ni cortes de texto

    Examples: Variables de entrada
      | tipo-dispositivo | ubicacion-enlace | enlace-privacidad        | pagina-dedicada   |
      | "smartphone"     | "pie de página"  | "Política de Privacidad" | "página dedicada" |