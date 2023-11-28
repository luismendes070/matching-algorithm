# app/models/interest.rb
class Interest < ApplicationRecord
    has_and_belongs_to_many :users
  
    # Your model associations and validations go here
  end
  