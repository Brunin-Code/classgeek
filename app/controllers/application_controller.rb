class ApplicationController < ActionController::Base
    protect_from_forgery prepend: true

    before_action :configure_permitted_parameters, if:devise_controller?

    protected

    def configure_permitted_parameters
        devise_parameter_sanitizer(:sign_up, keys: [:username, :name])
    end
end
