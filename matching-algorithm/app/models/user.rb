# app/models/user.rb
class User < ApplicationRecord
    has_and_belongs_to_many :interests
  
    # Your model associations and validations go here
  end
  