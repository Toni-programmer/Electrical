class PagesController < ApplicationController
  def home
    @services = Service.limit(3)
    @projects = Project.limit(3)
  end

  def company
  end
end
