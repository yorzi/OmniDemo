$ ->
  
  # ajax to update page view for registed demos.
  $("a#add_page_view").trigger("click")
  
  $("#tetris_chart_via_plugin").tetrisChart
    series:
      data1:
        percent: 18
        above_text: '18%'
        below_text: 'Low'
        color: "gray"
      data2:
        percent: 45
        above_text: '45%'
        below_text: 'Middle'
        color: "green"
      data3:
        percent: 37
        above_text: '37%'
        below_text: 'High'
        color: "red"