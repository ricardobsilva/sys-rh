class Person < ActiveRecord::Base
  has_one :user
  GENRE = ["masculino","feminino"]
end
