Feature: Guardar recomendaciones en lista de objetivos
  Como responsable del hogar que quiere organizar mejor sus hábitos de consumo,
  Quiero guardar recomendaciones en mi lista mensual,
  Para tener metas claras y sentir que avanzo paso a paso hacia un menor gasto eléctrico.

  Scenario Outline: Guardar recomendaciones en lista de objetivos
    Given el usuario está en la sección <seccion-recomendaciones>
    When presiona los tres puntos a la derecha de la recomendación
    And selecciona la opción <opcion-agregar-objetivos> en una recomendación
    Then el sistema guarda la recomendación en la lista <lista-objetivos>
    And el usuario puede visualizarla después en la sección <seccion-objetivos>

    Examples: Variables de entrada
      | seccion-recomendaciones | opcion-agregar-objetivos | lista-objetivos | seccion-objetivos |
      | "Recomendaciones"       | "Agregar a objetivos"    | "Objetivos"     | "Objetivos"       |