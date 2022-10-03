FactoryBot.define do
	factory :favorite do
		account_id { create(:account) }
		after(:build) do |favorite|
			favorite.movies { [create_list(:movie, 3)] }
			favorite.podcasts { [create_list(:podcast, 2)] }
		end
	end
end