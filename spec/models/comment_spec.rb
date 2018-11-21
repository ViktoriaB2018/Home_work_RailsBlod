# frozen_string_literal: true

require 'rails_helper'

describe Comment do
  it { should belong_to :article }
  it { should validate_length_of(:body).is_at_least(5).is_at_most(4000) }
end
