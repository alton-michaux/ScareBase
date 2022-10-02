FactoryBot.define do
	factory :movie do
			title { "Nightmare on Elm Street" }
			description  { "Cool movie about a guy kicking ass for a dog" }
			year { '1981' }
			director { FactoryBot.create(:director) }
			cast { FactoryBot.create_list(:cast, 5) }
			mood { 'Horror' }
	end
end