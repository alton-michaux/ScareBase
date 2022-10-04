# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Account, type: :model do
  let!(:account) { Account.create(username: 'Horror_Fan', email: 'admin@gmail.com', password: 'password') }

  it 'is valid' do
    expect(account).to be_valid
  end

  it 'is not valid without a username' do
    account.username = nil
    expect(account).to_not be_valid
  end

  it 'is not valid without an email' do
    account.email = nil
    expect(account).to_not be_valid
  end

  it 'is not valid without a password' do
    account.password = nil
    expect(account).to_not be_valid
  end
end
