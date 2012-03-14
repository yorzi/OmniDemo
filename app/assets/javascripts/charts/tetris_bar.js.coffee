window.tetris_colors = {color1: "gray", color2: "orange", color3: "red" }

window.drawTetrisChart = (dom_id, off_x, off_y, p1, p2, width=400, height=300, block_size=15) ->  
  renderer = new Highcharts.Renderer($(dom_id)[0], width, height)
  
  buildGrid(off_x, off_y, p1, p1+p2, renderer, block_size)
  displayData(off_x, off_y, renderer, p1, p2)
  
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
  

buildGrid = (off_x, off_y, dim1, dim2, renderer, size = 15) ->
  rows = 5
  cols = 20
  
  i = 0
  
  for j in [0...cols]
    x = (j*size) + off_x
    
    for k in [0...rows]
      i = i + 1
      
      if (i <= dim1)
        color = window.tetris_colors.color1
      else if (i > dim1 && i <= dim2)
        color = window.tetris_colors.color2
      else
        color = window.tetris_colors.color3

      y = (k*size) + off_y
      
      drawBox(x, y, size, size, color, renderer)
    
drawBox = (x, y, height, width, filled_color, renderer) ->
  renderer.rect(x, y, height, width, 1).attr
      "stroke-width": 1
      stroke: 'white'
      fill: filled_color
      zIndex: 3
    .add()
  

