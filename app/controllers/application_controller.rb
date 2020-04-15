class ApplicationController < ActionController::API
  include ActionController::MimeResponds
  respond_to :json
  def index
    render plain: '/root'
  end
end
