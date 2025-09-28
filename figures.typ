#let consts = json("consts.json")
#import "@preview/lilaq:0.5.0" as lq
#let figures = (
  heatmap_height: [
    #let map_data = csv("map-data.csv").map(row => row.map(cell => float(cell)))
    #let num_cols = map_data.at(0).len()
    #let num_rows = map_data.len()
    #let x_coords = range(1, 657, step: 29)
    #let y_coords = range(800, 0, step: -31)
    #let heatmap = lq.colormesh(
      x_coords, y_coords, map_data.rev(),
      map: gradient.linear(rgb(0, 0, 0), rgb(255,255,255))
    )
    #figure([
      #lq.diagram(heatmap,
      lq.plot(
        (282, 320), (244, 434),
        stroke: none,
        xerr: (30, 34),
        yerr: (9, 10)
      ),
    )
      #let heatmap = lq.colormesh(
        x_coords, y_coords, map_data.rev(),
        map: gradient.linear(rgb(255, 255, 255), rgb(0,0,0),)
      )
      #lq.colorbar(heatmap)
    ],
    caption: [Mapa de calor de altura de la zona. Datos extraidos de #cite(<topomap>, form: "prose")]
  ) <heatmap>
],
)
