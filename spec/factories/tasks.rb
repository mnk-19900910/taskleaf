FactoryBot.define do
  factory :task do
    name { 'テスト投稿' }
    description { 'RSpec&Capybara&FactoryBotを準備する' }
    user
  end
end