class Pin < ActiveRecord::Base
     belongs_to :user
     attr_accessor :image_file_name, :image_content_type, :image_file_size, :image_updated_at
     has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }
     validates_attachment_content_type :image, { content_type: ["image/jpg", "image/jpeg", "image/png"] }
end
