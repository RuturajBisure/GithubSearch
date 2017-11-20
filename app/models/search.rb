class Search < ActiveRecord::Base
  validates :username, :presence => true
end
