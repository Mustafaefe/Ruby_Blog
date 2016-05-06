class Comment < ActiveRecord::Base
	belongs_to :post
	validates :email, presence: true
		,format: { with: /\A[^@\s]+@([^@.\s]+\.)*[^@.\s]+\z/ }
end
