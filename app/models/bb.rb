class Bb < ActiveRecord::Base
  attr_accessible :address, :area, :city, :fax, :name, :phone, :state, :web, :zipcode

  belongs_to :user
end
