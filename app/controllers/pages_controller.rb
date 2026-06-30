class PagesController < ApplicationController
  def home
    @services = Service.limit(3)
    @projects = Project.order(created_at: :desc).limit(3)
  end

  def company
  end

  def aviso_legal
  end

  def politica_privacidad
  end

  def politica_cookies
  end

  def terminos
  end
end
