class HomeController < ApplicationController
  def index
    expires_in 2.days
    person = Flickr.people.find("115383236@N07")
    photoList = person.get_public_photos(:sizes => :all)
    @photosHaut = photoList[5..8]
    @photosBas = photoList[9..21]
  end
  def about

  end

  def actu
  	
  end

  def instantanes
    expires_in 2.days
    @person = Flickr.people.find("115383236@N07")
    @sets = @person.get_sets
  end

  def humeur
    
  end

  def contact
  	
  end

  def livredor
    
  end
  
  def set
    expires_in 2.days
    person = Flickr.people.find("115383236@N07")
    sets= person.get_sets
    @set = sets.find(params[:setId])
    @photos = @set.get_photos(sizes: :all)
  end
  
  def photo
    expires_in 2.days
    person = Flickr.people.find("115383236@N07")
    sets= person.get_sets
    @set = sets.find(params[:setId])
    @photos = @set.get_photos(sizes: :all)
    @photo  = @photos.find(params[:photoId])
  end
end
