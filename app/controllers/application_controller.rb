class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  # before_action :must_have_format

  # Impose HTML format on all URLs
  def default_url_options(options = nil)
    {:format => "html"}
  end

  private
    # Restrict URLs only with specific format
    def must_have_format
      raise ActionController::RoutingError.new('VulVal URL!') if params[:format].nil?
    end
end
