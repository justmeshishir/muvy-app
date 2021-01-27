class PagesController < ApplicationController
  require 'muvy'


  def index
    path = Dir.glob('public/uploads/5/muvy*')
    if path.present?
      @image_url = "/" + path.first.split('/').pop(3).join('/')
    end
  end

  def create
    muvy = Muvy::Media.new(params[:url][:youtube], { tmp_dir: 'public/uploads/5/', path: 'public/uploads/5/' }.merge(params.permit(:style, :gradient, :arc, :height))).run
    redirect_to root_path
  end

  # def show
  #   @muvy = Muvy::Image.new('public/uploads/', {path: })
  # end
  #
  def test

  end
end
