FactoryBot.define do
	factory :podcast do
		title { "No Sleep Podcast" }
		description  { "Horror podcast" }
		year { "2010" }
		curator { FactoryBot.create(:curator) }
		cast { FactoryBot.create_list(:cast, 5) }
		mood { "Horror" }
	end
end