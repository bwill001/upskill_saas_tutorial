class Contact < ActiveRecord::Base
  #don't need to rewrite what is written in db file in Rails
  validates :name, presence: true
  validates :email, presence: true
  validates :comments, presence: true
end