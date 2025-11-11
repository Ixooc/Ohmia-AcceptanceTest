Feature: Completar perfil
    Como usuario,
    Quiero indicar si soy responsable de hogar, miembro de hogar multifamiliar o dueño de una PyME,
    Para recibir recomendaciones adecuadas.

    Scenario Outline: Iniciar por primera vez en la aplicación
        Given el usuario está previamente registrado
        And el sistema muestra la sección <seccion-tipo-usuario>
        And se muestran las opciones <opcion-responsable>, <opcion-multifamiliar> y <opcion-pyme>
        When selecciona <tipo-seleccionado>
        And presiona el botón <boton-seleccionar>
        Then el sistema muestra en la sección <seccion-menu> las opciones <opcion-agregar-familia> <opcion-consumo-general> y <opcion-consumo-individual>

        Examples: Variables de entrada
            | seccion-tipo-usuario         | opcion-responsable      | opcion-multifamiliar             | opcion-pyme                 | tipo-seleccionado                | boton-seleccionar |
            | "¿Qué tipo de usuario eres?" | "Responsable del hogar" | "Miembro de hogar multifamiliar" | "Representante de una PyME" | "Miembro de hogar multifamiliar" | "Seleccionar"     |

        Examples: Variables de salida
            | seccion-menu     | opcion-agregar-familia | opcion-consumo-general | opcion-consumo-individual |
            | "Menú principal" | "Agregar Familia"      | "Ver consumo general"  | "Ver consumo individual"  |

    Scenario Outline: Cambiar tipo de usuario ya seleccionado
        Given el usuario ya seleccionó el tipo de usuario <tipo-anterior>
        And quiere cambiar al tipo <tipo-nuevo>
        When selecciona la sección <seccion-perfil>
        And selecciona la opción <opcion-cambiar>
        And selecciona de la lista desplegable <tipo-nuevo>
        And presiona el botón <boton-guardar>
        Then el sistema muestra el mensaje <mensaje-confirmacion>
        And las opciones en la sección <seccion-menu> las opciones <opcion-agregar-familia> <opcion-consumo-general> y <opcion-consumo-individual> desaparecen
        And solo se pueden ver las opciones de consumo <tipo-consumo>

        Examples: Variables de entrada
            | tipo-anterior                    | tipo-nuevo              | seccion-perfil | opcion-cambiar            | boton-guardar |
            | "Miembro de hogar multifamiliar" | "Responsable del hogar" | "Perfil"       | "Cambiar tipo de usuario" | "Guardar"     |

        Examples: Variables de salida
            | mensaje_confirmacion     | seccion-menu     | opcion-agregar-familia | opcion-consumo-general | opcion-consumo-individual | tipo-consumo  |
            | "Configuración cambiada" | "Menú principal" | "Agregar Familia"      | "Ver consumo general"  | "Ver consumo individual"  | "Unifamiliar" |