class AppController < ApplicationController

  def index
    @equation = Equation.new
  end

  def test
    # Parse data
    @xml = Nokogiri::XML(params[:xml_data])
    @equation_params = {}

    # Get params
    @xml.search('xml arg').each_with_index do |param, index|
      @equation_params["param_#{index.next}"] = param.content
    end
    # Get type
    @equation_params[:equation_type] = @xml.search('xml type').first.content

    # Initialize new equation
    @equation = Equation.new(@equation_params)

    render :layout => false
  end

end
