class Post < ApplicationRecord
  validates_presence_of :name, :title, :content
end
