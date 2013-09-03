class HomeController < ApplicationController
  def index
    render :file => 'app/views/resume/uploadfile.rhtml'
  end

  def uploadFile
    post = DataFile.save(params[:upload])
    render :text => "Your resume has been uploaded successfully. We'll be in touch. Good luck!"
  end
end
