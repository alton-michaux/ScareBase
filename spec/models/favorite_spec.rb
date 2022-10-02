require 'rails_helper'

RSpec.describe Favorite, type: :model do
  subject { FactoryBot.create(:favorite) }

  it 'is valid' do
    expect(subject).to be_valid
  end
end
