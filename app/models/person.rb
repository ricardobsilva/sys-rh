class Person < ActiveRecord::Base
  has_one :user
  has_many :frequencies
  GENRE = ["masculino","feminino"]
end
