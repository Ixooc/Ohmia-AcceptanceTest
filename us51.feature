Feature: Navegación accesible en la landing page
  Como miembro de un hogar multifamiliar que no está muy familiarizado con la navegación web,
  Quiero que la landing page tenga un menú superior claro y sencillo,
  Para desplazarme fácilmente entre las secciones sin confundirme ni perderme.

  Scenario Outline: Navegación desde el menú superior
    Given el usuario se encuentra en la landing page
    When visualiza la parte superior del sitio
    Then se muestran claramente las opciones <opcion-inicio>, <opcion-caracteristicas>, <opcion-planes>, <opcion-testimonios> y <opcion-descargar>
    And cada opción es clickeable

    Examples: Variables de entrada
      | opcion-inicio | opcion-caracteristicas | opcion-planes | opcion-testimonios | opcion-descargar |
      | "Inicio"      | "Características"      | "Planes"      | "Testimonios"      | "Descargar"      |

  Scenario Outline: Regresar al inicio de la página
    Given el usuario se encuentra en la sección <seccion-actual>
    When presiona el ícono de la aplicación en el menú superior de navegación
    Then el sistema muestra el inicio del sitio web

    Examples: Variables de entrada
      | seccion-actual |
      | "Planes"       |