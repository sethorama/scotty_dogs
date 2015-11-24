class Puppy < ActiveRecord::Base
    has_attached_file :image, styles: { large: "600x600>", thumb: "100x100>" }, default_url: "/assets/images/puppies/missing.png"
    validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
