FactoryBot.define do
	factory :cast_member do
		name { "Kelly Monroe" }
		age  { 29 }

		after(:build) do |cast_member|
			cast_member.movies { [create_list(:movie, 2)] }
			cast_member.podcasts { [create_list(:podcast, 3)] }
		end
	end
end