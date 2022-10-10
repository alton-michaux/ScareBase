# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Favorite, type: :model do
  let!(:account) { Account.create(username: 'Horror_Fan', email: 'admin@gmail.com', password: 'Password1!') }
  let!(:favorite) { Favorite.create(account: account) }

  it 'is valid' do
    expect(favorite).to be_valid
  end

  it 'is not valid without an account' do
    expect(favorite.account).to eq(account)
    
    favorite.account_id = nil
    expect(favorite).to_not be_valid
  end

  it 'accepts an array as attributes' do
    expect(favorite.movies).to_not be_nil
    expect(favorite.movies).to be_kind_of(ActiveRecord::Associations::CollectionProxy)
  end
end
