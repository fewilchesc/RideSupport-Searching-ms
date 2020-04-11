class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  skip_before_action :verify_authenticity_token, only:[:create,:update,:destroy] #Lo puse yo para hacer POST,PUT Y DELETE en postman, me estaba pidiendo autenticación
end
