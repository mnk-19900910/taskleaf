FactoryBot.define do
  factory :user do
    name { 'テスト' }
    email { 'test@testtest' }
    password { 'test' }
  end
end