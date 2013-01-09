class Bb < ActiveRecord::Base
  attr_accessible :address, :area, :city, :fax, :name, :phone, :state, :web, :zipcode

  belongs_to :user

  validates(:name, :address, :city, :zipcode, :area, :state, :phone, presence: true)

  validates_numericality_of :zipcode

  validate :validate_zip

  def validate_zip
  	errors.add(:zipcode, "Format not valid") unless zipcode.to_s.length == 5
  end

end
