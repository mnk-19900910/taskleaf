# userテストコード
user = User.create(name: '山田哲人', email: "test@test.com", password_confirmation: "digest", created_at: "2020-06-12 15:20:00", updated_at: "2020-06-12 15:20:00")
user2 = User.create(name: '青木宣親', email: "test2@test.com", password_confirmation: "digest", created_at: "2020-06-12 15:20:00", updated_at: "2020-06-12 15:20:00")
user3 = User.create(name: '川端慎吾', email: "test3@test.com", password_confirmation: "digest", created_at: "2020-06-12 15:20:00", updated_at: "2020-06-12 15:20:00")
user7 = User.create(id: '7',name: 'test', email: "test@test", password: 'test', password_confirmation: "test", created_at: "2020-06-12 15:20:00", updated_at: "2020-06-12 15:20:00")
# 管理者
admin = User.create(name: 'admin', email: "admin@admin", password: 'admin', password_confirmation: "admin", admin: true)