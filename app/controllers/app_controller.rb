class AppController < ApplicationController
  def index
  end

  def test
    render :layout => false
  end
end
