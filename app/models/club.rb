# -*- encoding : utf-8 -*-
class Club < ActiveRecord::Base
  attr_accessible :address, :gmaps, :latitude, :longitude, :title, :city

  geocoded_by :address
  acts_as_gmappable :check_process => false,
                    :msg => "Извините, но мы не нашли ваш адрес"
  #validates :address, :presence => true,
  #          :format   => { :with => address_regex }

  def gmaps4rails_address
    "#{self.city}, #{self.address}"
    #"#{self.street}, #{self.city}, #{self.country}"
  end

  def gmaps4rails_infowindow
    "<h1>#{title}</h>"
  end


  # Easy adding picture to club
  #def gmaps4rails_marker_picture
   #{
    #"picture" => ,          # string,  mandatory
     #"width" =>  ,          # integer, mandatory
     #"height" => ,          # integer, mandatory
     #"marker_anchor" => ,   # array,   facultative
     #"shadow_picture" => ,  # string,  facultative
     #"shadow_width" => ,    # string,  facultative
     #"shadow_height" => ,   # string,  facultative
     #"shadow_anchor" => ,   # string,  facultative
     #"rich_marker" =>   ,   # html, facultative
                            ## If used, all other attributes skipped except "marker_anchor". This array is used as follows:
                            ## [ anchor , flat ] : flat is a boolean, anchor is an int.
                            ## See doc here: http://google-maps-utility-library-v3.googlecode.com/svn/trunk/richmarker/docs/reference.html
   #}
  #end

end
