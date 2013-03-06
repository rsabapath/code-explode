class Project < ActiveRecord::Base
  attr_accessible :author, :content, :image, :link, :repo, :title
end
