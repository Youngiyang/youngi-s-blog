# class Article < ActiveRecord::Base
#   has_many :comments, dependent: :destroy
#   validates :title, presence: true,
#                     length: { minimum: 5 }
# end

class Article < ActiveRecord::Base
	has_many :comments, dependent: :destroy
	validates :title, presence: true, length: { minimum: 3 }
	validates :text, presence: true
end