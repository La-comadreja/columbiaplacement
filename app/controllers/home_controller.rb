class HomeController < ApplicationController
  def index
    render :file => 'app/views/home/index.html.erb'
  end

  def upload
    if params[:upload].nil?
      render :text => "There was an error uploading your resume. Try again."
    else
      post = Resume.save(params[:upload])
      render :text => "Your resume has been uploaded successfully. We'll be in touch. Good luck!"
    end
  end
end
