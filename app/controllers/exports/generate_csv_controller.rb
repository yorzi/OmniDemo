class Exports::GenerateCsvController < ApplicationController
  before_filter :set_up_demo_data
  
  def export
    out = []
    @data.each{|d| out << [d.author, d.description, d.created_at].join(",")}
    out = out.join("\r\n")
    filename = "demo-generating-#{Time.now.to_date.to_s(:db)}" + ".csv"
    render_csv(out, filename)
  end
  
  private
  
  def render_csv(out, filename = nil)
    filename ||= params[:action] + ".csv"
    headers["Content-Type"] = 'text/csv; charset=UTF-8'
    headers["Content-Disposition"] = "attachment; filename=\"#{filename}\""
    render :text => out
  end
  
  def set_up_demo_data
    @data = Demo.last(5)
  end
  
end
