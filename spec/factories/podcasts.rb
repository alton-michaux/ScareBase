FactoryBot.define do
	factory :podcast do
		title { "No Sleep Podcast" }
		description  { "Horror podcast" }
		year { "2010" }
		mood { ["Horror"] }

		after(:build) do |podcast|
			podcast.curator { create(:curator) }
			podcast.cast_members { [create_list(:cast_member, 4)] }
		end
	end
end