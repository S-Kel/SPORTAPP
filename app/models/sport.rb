class Sport < ApplicationRecord
    
    # Cloudinary image Upload
    has_one_attached :image

    # Ensure name and description are presence
    validates :name, presence: true, uniqueness: true, length: {minimum: 3 }
    validates :description, presence: true, length: {maximum: 500}
    validates :image, presence: true

    
    
    ADMIN = true    # TODO: REPLACE THIS LINE LATER
end
