FactoryBot.define do
	factory :curator do
		name { "Sebastian Stan" }
		age  { 41 }
		
		after(:build) do |curator|
			curator.podcasts { [create_list(:podcast, 4)] }
		end
	end
end