class Question < ActiveRecord::Base
  belongs_to :survey
  has_many :answers, dependent: :destroy
  has_many :addresses, dependent: :destroy
  accepts_nested_attributes_for :answers
  accepts_nested_attributes_for :addresses

end
