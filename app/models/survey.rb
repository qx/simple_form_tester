class Survey < ActiveRecord::Base
  has_one :question, dependent: :destroy
  accepts_nested_attributes_for :question

end
