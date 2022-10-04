# frozen_string_literal: true

class Account < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one :favorite, dependent: :destroy # favorite model acts as link between account and movie/podcast models

  has_many :movies, through: :favorites
  has_many :podcasts, through: :favorites

    validates :username, presence: true
    validates :email, presence: true
    validates :password, presence: true
    validates :password, format: { with: /[a-z]+/, message: 'should have at least 1 lower case letter' }
    validates :password, format: { with: /[A-Z]+/, message: 'should have at least 1 upper case letter' }
    validates :password, format: { with: /\d+/, message: 'should have at least 1 digit' }
    validates :password, format: { with: /\W+/, message: 'should have at least 1 special character' }
    validates :password_confirmation, on: :update, presence: true, confirmation: true, allow_blank: true
end
