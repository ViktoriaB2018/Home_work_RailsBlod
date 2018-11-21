# frozen_string_literal: true

class Article < ApplicationRecord
  validates :title, presence: true
  validates :text, presence: true
  validates_length_of :title, in: 6..100
  validates_length_of :text, in: 10..4000
  has_many :comments

  def subject
    title
  end

  def last_comment
    comments.last
  end
end
