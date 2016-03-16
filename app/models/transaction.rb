class Transaction < ActiveRecord::Base
  has_many :books
end
