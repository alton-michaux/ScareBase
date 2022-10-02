require 'rails_helper'

RSpec.describe Account, type: :model do
  subject { FactoryBot.create(:account) }

  it 'is valid' do
    expect(subject).to be_valid
  end
end
