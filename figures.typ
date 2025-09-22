#let consts = json("consts.json")
#let figures = (
  heatmap_height: [#figure(
    [
      #image("height-heat-map.png", width: 20%)
      #block(width: 40%)[
        #int(consts.topography.min_height)m #box[#rect(width: 50%, height: 1em, fill: gradient.linear(oklch(0%,0,0deg), oklch(100%,0,0deg)), stroke: 1pt)] #int(consts.topography.max_height)m
      ]
    ],
    caption: [Mapa de calor de altura de la zona. Extraido de #cite(<topomap>, form: "prose")]
  ) <heatmap>]
)
