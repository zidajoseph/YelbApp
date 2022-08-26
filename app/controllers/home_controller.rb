class HomeController < ApplicationController
    def index
        @properties = Property.all
    end

    def show
        if current_user
          @favorite = current_user.favorites.find_by(property_id: @property.id)
        else
        end
    end
end
