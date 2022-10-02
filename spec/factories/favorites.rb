FactoryBot.define do
	factory :favorite do
		movies { FactoryBot.create_list(:movie, 5) }
		podcast  { FactoryBot.create_list(:podcast, 2) }

		account_id { FactoryBot.create(:account) }
	end
end