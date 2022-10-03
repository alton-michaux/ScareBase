FactoryBot.define do
	factory :movie do
			title { "Nightmare on Elm Street" }
			description  { "Freddy will haunt your dreams" }
			year { '1981' }
			mood { ['Horror'] }

			after(:build) do |movie|
				movie.director { create(:movie) }
				movie.cast_members { [create_list(:cast_member, 3)] }
			end
	end
end