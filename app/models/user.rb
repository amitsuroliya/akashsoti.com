class User < ActiveRecord::Base
  attr_accessor :email, :password

  validates_presence_of :password, on: :sign_in
  validates_presence_of :email, on: :sign_in, message: "Can't be blank"

  has_many :posts

end
