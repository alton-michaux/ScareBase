FactoryBot.define do
	factory :favorite do
		account_id { create(:account)['id'] }

		factory :favorite_with_content do |favorite|
			favorite.movies { [FactoryBot.create_list(:movie, 3)] }
			favorite.podcasts { [FactoryBot.create_list(:podcast, 2)] }
		end
	end
end