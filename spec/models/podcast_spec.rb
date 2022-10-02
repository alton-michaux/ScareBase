require 'rails_helper'

RSpec.describe Podcast, type: :model do
  subject { FactoryBot.create(:podcast) }

  it 'is valid' do
    expect(subject).to be_valid
  end
end
