# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Account, type: :model do
  let!(:account) { Account.create(username: 'Horror_Fan', email: 'admin@gmail.com', password: 'Password1!') }

  it 'is valid' do
    expect(account).to be_valid
  end

  it 'is not valid without a username' do
    account.username = nil
    expect(account).to_not be_valid
  end

  context 'validates account password' do
    it 'is not valid without a password' do
      account.password = nil
      expect(account).to_not be_valid
    end

    it 'requires passwords to be formatted' do
      account.password = 'password'
      expect(account).to_not be_valid
    end
  end

  context 'validates email address' do
    it 'requires an email' do
      account.email = nil
      expect(account).to_not be_valid
    end

    it 'requires emails to be properly formatted' do
      account.email = 'wrongFormat'
      expect(account).to_not be_valid
    end
    it 'requires a unique email address' do
      account2 = Account.create(username: 'FakeAcct', email: 'admin@gmail.com', password: 'Password1!')
      expect(account2).to_not be_valid
    end
  end
end
