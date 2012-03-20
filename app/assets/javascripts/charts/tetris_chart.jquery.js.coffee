$ = jQuery

$.fn.tetrisChart = (options) ->
  
  defaults = 
    xOff: 15
    yOff: 25
    chartWidth: 400
    chartHeight: 300
    tetrisBlockSize: 15
    colors:
      color1: "gray"
      color2: "orange"
      color3: "red"
        
  options = $.extend(defaults, options)
    
  @each ->
    renderer = new Highcharts.Renderer(this, options.chartWidth, options.chartHeight) 
    buildGrid(18, 61, renderer, options)
    displayData(options.xOff, options.yOff, renderer, 18, 61)
    
    
###############################################################
displayData = (off_x, off_y, renderer, p1, p2) ->
  renderer.text((p1 + '%'), (off_x + 3*p1/2), (off_y - 10)).attr(zIndex: 5).add()
  renderer.image('/assets/arrow_down.png', (off_x + 3*p1/2 + 3), (off_y-8), 16, 16).attr(zIndex: 7).add()

  renderer.text((p2 + '%'), (off_x + 3*p2), (off_y - 10)).attr(zIndex: 5).add()
  renderer.image('/assets/arrow_down.png', (off_x + 3*p2 + 3), (off_y-8), 16, 16).attr(zIndex: 7).add()

  renderer.text(((100-p1-p2) + '%'), (off_x + 250), (off_y - 10)).attr(zIndex: 5).add()
  renderer.image('/assets/arrow_down.png', (off_x + 250 + 3), (off_y-8), 16, 16).attr(zIndex: 7).add()

  renderer.text("Low levels", off_x, (off_y + 90)).attr(zIndex: 5).add()
  renderer.text("Moderate", (off_x + 3*p2), (off_y + 90)).attr(zIndex: 5).add()
  renderer.text("High or<br />Very High", (off_x + 250), (off_y + 90)).attr(zIndex: 5).add()


buildGrid = (dim1, dim2, renderer, options) ->
  rows = 5
  cols = 20

  i = 0

  for j in [0...cols]
    x = (j*options.tetrisBlockSize) + options.xOff

    for k in [0...rows]
      i = i + 1

      if (i <= dim1)
        color = options.colors.color1
      else if (i > dim1 && i <= dim2)
        color = options.colors.color2
      else
        color = options.colors.color3

      y = (k*options.tetrisBlockSize) + options.yOff

      drawBox(x, y, options.tetrisBlockSize, options.tetrisBlockSize, color, renderer)

drawBox = (x, y, height, width, filled_color, renderer) ->
  renderer.rect(x, y, height, width, 1).attr
      "stroke-width": 1
      stroke: 'white'
      fill: filled_color
      zIndex: 3
    .add()


