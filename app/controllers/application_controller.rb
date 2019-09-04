class ApplicationController < ActionController::Base

  before_action :set_visitor_uuid_cookie

  def default_url_options
  { host: ENV["http://workintech2.herokuapp.com/"] || "localhost:3000" }
  end

  def set_visitor_uuid_cookie
    cookies[:visitor_uuid] = SecureRandom.hex(25) unless cookies[:visitor_uuid].present?
  end

end
