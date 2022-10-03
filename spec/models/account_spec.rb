require 'rails_helper'

RSpec.describe Account, type: :model do
  let!(:account) { Account.create(username: "Horror_Fan", first_name: "Jake", last_name: "Tapper", email: "admin@gmail.com") }

  it 'is valid' do
    expect(account).to be_valid
  end
end
