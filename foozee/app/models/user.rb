class User < ActiveRecord::Base
  has_secure_password

    validates_uniqueness_of :email
    validates_length_of :password, minimum: 6, too_short: 'please enter at least 6 characters'
    has_many :photos
  #TODO : Use bcrypt to store hashed passwords and authenticate users
end
