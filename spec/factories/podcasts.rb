FactoryBot.define do
	factory :podcast do
		title { "No Sleep Podcast" }
		description  { "Horror podcast" }
		year { "2010" }
		curator { ["Horace Neil"] }
		cast { ["Tony Saber", "Gina Davis"] }
		mood { ["Horror"] }
	end
end