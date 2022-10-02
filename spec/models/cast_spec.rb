require 'rails_helper'

RSpec.describe Cast, type: :model do
  subject { FactoryBot.create(:cast) }

  it 'is valid' do
    expect(subject).to be_valid
  end
end
