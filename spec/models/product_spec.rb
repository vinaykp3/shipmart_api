require 'rails_helper'

RSpec.describe Product, type: :model do
  it { should belong_to(:user) }
  it { should have_many(:product_transactions) }
end
