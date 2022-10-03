require 'rails_helper'

RSpec.describe CastMember, type: :model do
  subject { FactoryBot.create(:cast_member) }

  it 'is valid' do
    expect(subject).to be_valid
  end
end
