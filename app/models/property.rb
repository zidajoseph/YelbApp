class Property < ApplicationRecord

    has_many_attached :images, dependent: :destroy
    
    monetize :price_cents
    after_validation :get_price_cents
    
    geocoded_by :address
    after_validation :geocode
    # , if: -> { latitude.blank? && longitude.blank? }

    def address
        # [address_1, address_2, city, state, country].compact.join(', ')
        [state, country].compact.join(', ')
    end

    def get_price_cents
        price_cents.to_i * 100
    end

    def default_image
        images.first
    end
end
