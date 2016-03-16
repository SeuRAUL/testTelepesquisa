class Book < ActiveRecord::Base
  belongs_to :transactions
end
