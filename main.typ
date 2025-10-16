#import "figures.typ": figures
#import "tables.typ": tables
#let consts = json("consts.json")
#import "@preview/oxifmt:1.0.0": strfmt
#let appendix(body) = {
  set heading(numbering: "A", supplement: [Appendix])
  counter(heading).update(0)
  body
}
#let money_format_mxn(number) = strfmt("${} MXN", number, fmt-thousands-separator: ",")
#let total_items_cost = csv("items.csv").map(row => decimal(row.at(1)) * decimal(row.at(2))).sum()
#let total_hosts = (( (consts.host_calc.capacity_a.student_number + consts.host_calc.capacity_a.teacher_number) * consts.host_calc.devices_per_person ) * consts.host_calc.capacity_a.classroom_quantity) + (( (consts.host_calc.capacity_b.student_number + consts.host_calc.capacity_b.teacher_number) * consts.host_calc.devices_per_person ) * consts.host_calc.capacity_b.classroom_quantity) + (consts.building_levels * consts.cctv_cameras_per_level) + (consts.voip_phones_per_level * consts.building_levels)
#import "conf.typ": conf
#show: conf
#show link: underline
= Introducción
Se busca diseñar una red para el edificio de aulas (edificio A), de la Facultad de Informática (FIF) de la Universidad Autónoma de Querétaro (UAQ), la cual permita una red estable, segura y confiable con los conocimientos adquiridos en la clase de Diseño y Soporte de Redes
== Resumen del Caso
Se tiene un presupuesto de #money_format_mxn(consts.budget), con el cual se pretende implementar la red del edificio A. Con los conocimientos adquiridos en clase, se tienen que implementar los siguientes requerimientos:
- Presupuesto: #money_format_mxn(consts.budget)
  - Hacer una conexión entre el edificio hacia el edificio de innovación
    - El enlace será de fibra óptica (son más de 100 metros, medido desde OSM)
  - 1 nodo por cuarto (27 salones)
  - Red inalámbrica separada en:
    - Alumnos
    - Docentes
  - 4 Cámaras CCTV por piso (12 total)
  - Buscar lugar para el site
  - Poner teléfono VoIP para los siguientes cuartos:
    - Oficina SEFI
    - Oficina César
    - Sala de maestros
= Análisis del Caso
== Edificio
Desde el programa de mapeo para OpenStreetMap, JOSM, utilizando su utilidad de medición, el área del edificio se calcula en alrededor de 200m#super[2] @OpenStreetMap. Cada nivel del edificio contará con su propio switch
== Análisis Geográfico
=== Topografía
Para calcular la elevación sobre el nivel del mar del área donde se encuentran los edificios, se utilizó la herramienta de OpenTopography para conseguir los datos geográficos en el área (ver @heatmap)#footnote[El _dataset_ de altitudes será público desde el #link("https://github.com/jmacias1503/proyecto-final-redes")[repositorio del documento]].
#figures.heatmap_height
Para el desarrollo de @heatmap, se trazaron bloques de aproximadamente 30m#super[2] desde el punto geográfico 20° 42' 22.9981'' latitud norte y 100° 26' 47.7999'' longitud oeste, 26 bloques en vertical de norte a sur y 23 bloques en horizontal de oeste a este. La posición de los edificios se determinó desde el trazado al punto de origen en Google Earth @maciasearth. Al medir su valor hexadecimal de color de cada punto, se calculó que el edificio A (punto inferior) tiene una diferencia de 10m con el edificio de innovación (punto superior).

El suelo permitirá que parte del cableado de fibra óptica permita estar bajo tierra para su mayor protección de los agentes externos (estudiantes, humedad, vientos, lluvias, rayos solares, etc.), sin embargo, parte de este tendrá que ser expuesto debido al desconocimiento estructural de ambos edificios en su cimentación
== Estimación de Capacidad de Equipos
=== Switch principal
Para el _switch_ principal de distribución, se necesitan saber cuántos hosts simultáneos se pueden tener a capacidad máxima del edificio. Se tomarán en cuenta #consts.host_calc.capacity_a.classroom_quantity salones con capacidad de #consts.host_calc.capacity_a.student_number alumnos y #consts.host_calc.capacity_a.teacher_number docente, #consts.host_calc.capacity_b.classroom_quantity salones con capacidad de #consts.host_calc.capacity_b.student_number alumnos y #consts.host_calc.capacity_b.teacher_number docente cada uno, #consts.voip_phones_per_level teléfonos voz sobre IP (VoIP) por nivel y #consts.cctv_cameras_per_level cámaras de videovigilancia por cada nivel. Cada persona se estima que cuenta con al menos #consts.host_calc.devices_per_person dispositivos conectados a la red.


Se estiman un máximo de #total_hosts hosts conectados simultáneamente, por lo tanto, se buscará un _switch_ con una capacidad de al menos #calc.ceil(total_hosts * 1.2) _hosts_ para la distribución de la red hacia el edificio de innovación
=== Switches HC
Se tendrá un _switch_ de acceso por nivel, los cuales deberán de contar con al menos 2 puertos SFP para la distribución del _backbone_ para operar a una velocidad estable. Se tomará como promedio #calc.ceil((total_hosts * 1.2) / consts.building_levels) hosts por nivel del edificio
= Propuestas de Diseño
= Cotización
== Consideraciones iniciales
Para la siguiente obra, se tomarán en cuenta sólo proveedores autorizados por la UAQ en su catálogo de registro del padrón de proveedores, del apartado de bienes y servicios @proveedoresuaq. Se buscaron a los proveedores que contaran con los siguientes giros de empresa listados:
#for elem in consts.company_activities {
  [- #elem]
}
En caso de que los proveedores no cuenten con un precio del producto, se tomará como referencia el precio listado por el mismo producto en el sitio web de venta de equipos electrónicos CyberPuerta, y se les añadirá un 30% al costo total, debido a la comisión por la que cobran los proveedores
#tables.items_list
El costo total es de #money_format_mxn(calc.round(total_items_cost, digits: 2)). Y nos queda #money_format_mxn(calc.round(consts.budget - total_items_cost, digits: 2))
== Mano de Obra
#pagebreak()
#bibliography("sources.bib", style: "apa")
