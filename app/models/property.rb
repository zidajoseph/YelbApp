class Property < ApplicationRecord

    monetize :price_cents, allow_nil: true
    
    # geocoded_by :address
    # after_validation :geocode, if: -> { latitude.blank? && longitude.blank? }

    def address
        # [address_1, address_2, city, state, country].compact.join(', ')
        [state, country].compact.join(', ')
    end

    has_many_attached :images, dependent: :destroy

    def default_image
        images.first
    end
end
