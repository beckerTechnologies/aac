class ApplicationController < ActionController::Base
  require 'nokogiri'

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :configure_permitted_parameters, if: :devise_controller?


	def configure_permitted_parameters
		devise_parameter_sanitizer.for(:sign_up) do |u|
			u.permit :email, :password, :password_confirmation, :name, :address, :role_id, :city, :state, :zip, :phone_number, :admin
			end
			devise_parameter_sanitizer.for(:sign_in) do |u|
			u.permit(:email, :password, :remember_me) 
			end
			devise_parameter_sanitizer.for(:account_update) do |u| 
			u.permit :email, :password, :password_confirmation, :name, :address, :role_id, :city, :state, :zip, :phone_number, :admin
		end
	end

	def after_sign_in_path_for(resource)
       	dashboard_index_path
    end
  # place me inside your base controller class
  ActionView::Base.field_error_proc = Proc.new do |html_tag, object|
    html = Nokogiri::HTML::DocumentFragment.parse(html_tag)
    html = html.at_css("input") || html.at_css("textarea")
    unless html.nil?
      css_class = html['class'] || ""
      html['class'] = css_class.split.push("error").join(' ')
      html['data-error'] = object.error_message.join(". ")
      html_tag = html.to_s.html_safe
    end
    html_tag
  end


end
