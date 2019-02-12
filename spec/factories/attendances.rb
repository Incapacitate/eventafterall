FactoryBot.define do
  factory :attendance do

  	user {FactoryBot.build(:user)}
  	event {FactoryBot.build(:event)}

  end
end
