class PagesController < ApplicationController
  require 'muvy'


  def index
    path = Dir.glob('public/uploads/5/muvy*')
    if path.present?
      @image_url = "/" + path.first.split('/').pop(3).join('/')
    end
  end

  def create
    options = { tmp_dir: 'public/uploads/5/', path: 'public/uploads/5/' }.merge(params.permit(:style, :gradient, :arc, :height))
    options = options.reject {|k,v| v.blank? }
    Muvy::Media.new(params[:url][:youtube], options.symbolize_keys).run
    redirect_to root_path
  end
end
