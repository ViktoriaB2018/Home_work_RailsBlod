# frozen_string_literal: true

class Comment < ApplicationRecord
  validates :body, presence: true
  validates_length_of :body, in: 5..4000

  belongs_to :article
end
