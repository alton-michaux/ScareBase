require 'rails_helper'

RSpec.describe Favorite, type: :model do
  let!(:account) { Account.create(username: "Horror_Fan", first_name: "Jake", last_name: "Tapper", email: "admin@gmail.com") }
  let!(:favorite) { Favorite.create(account_id: account.id) }

  it 'is valid' do
    expect(favorite).to be_valid
  end
end
