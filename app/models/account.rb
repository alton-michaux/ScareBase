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
end
