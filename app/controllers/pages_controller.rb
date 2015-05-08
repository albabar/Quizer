class PagesController < ApplicationController

  skip_before_action :must_have_format

  def home
  end

  def about
  end

  def privacy
  end
end
