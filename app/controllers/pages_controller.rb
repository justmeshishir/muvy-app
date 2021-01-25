class PagesController < ApplicationController
  require 'muvy'


  def index

  end

  def create
    muvy = Muvy::Media.new(params[:url][:youtube], { tmp_dir: 'public/uploads/5/' }).run
  end

  # def show
  #   @muvy = Muvy::Image.new('public/uploads/', {path: })
  # end
  #
  def test

  end
end
