class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  def earth
    @planets = Planet.all
	@num_of_planets = @planets.length
    render :layout => "space"
  end
  
  def mercury
    render :layout => "space"
  end
  
  def mars
    render :layout => "space"
  end
  
  def venus
    render :layout => "space"
  end
  
  def doctor
    render :layout => "space"
  end
  
  
  
end
