class Address < ActiveRecord::Base
  belongs_to :city
  belongs_to :district
  belongs_to :province
  belongs_to :question
end
