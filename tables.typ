#let tables = (
  items_list: [
    #let csv_table = csv("items.csv")
    #figure(
  table(
    columns: 5,
    table.header(
      [*Equipo*], [*Costo* (MXN)], [*Cantidad*], [*Proveedor*], [*Link*]
    ),
    ..csv_table.flatten()
  ),
  caption: [Tabla de equipos cotizados]
  )]
)
