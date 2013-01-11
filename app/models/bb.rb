class Bb < ActiveRecord::Base
  attr_accessible :address, :area, :city, :fax, :name, :phone, :state, :web, :zipcode, :image, :remote_image_url
  validates(:name, :address, :city, :zipcode, :area, :state, :phone, presence: true)
  validates_numericality_of :zipcode, :phone
  validates_numericality_of :fax, :allow_blank => true
  validates :web, :format => { :with => /(^$)|(^(http|https):\/\/[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(([0-9]{1,5})?\/.*)?$)/ix, :message => "Format not valid" }
  validate :validate_zip

  belongs_to :user

  def validate_zip
  	errors.add(:zipcode, "Format not valid") unless zipcode.to_s.length == 5
  end

  mount_uploader :image, ImageUploader
end
