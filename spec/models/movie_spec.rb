require 'rails_helper'

RSpec.describe Movie, type: :model do
  subject { FactoryBot.create(:movie) }

  it 'is valid' do
    expect(subject).to be_valid
  end
end
