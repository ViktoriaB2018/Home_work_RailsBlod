class Comment < ApplicationRecord
	validates :body, presence: true, length: { in: 5..4000 }
  belongs_to :article
end
