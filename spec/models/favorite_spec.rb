# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Favorite, type: :model do
  let!(:account) { Account.create(username: 'Horror_Fan', email: 'admin@gmail.com', password: 'password') }
  let!(:favorite) { Favorite.create(account: account) }

  it 'is valid' do
    expect(favorite).to be_valid
  end

  it 'is not valid without a user' do
    favorite.account_id = nil
    expect(favorite).to_not be_valid
  end
end
