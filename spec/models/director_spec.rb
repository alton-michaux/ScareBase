require 'rails_helper'

RSpec.describe Director, type: :model do
  subject { FactoryBot.create(:director) }

  it 'is valid' do
    expect(subject).to be_valid
  end
end
