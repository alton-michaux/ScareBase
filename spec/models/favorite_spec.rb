require 'rails_helper'

RSpec.describe Favorite, type: :model do
  let!(:account) { FactoryBot.create(:account) }
  let!(:favorite) { FactoryBot.create(:favorite, account_id: account.id) }

  it 'is valid' do
    expect(favorite).to be_valid
  end
end
