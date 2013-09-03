class HomeController < ApplicationController
  def index
    render :file => 'app/views/home/index.html.erb'
  end

  def upload
    post = DataFile.save(params[:upload])
    render :text => "Your resume has been uploaded successfully. We'll be in touch. Good luck!"
  end
end
