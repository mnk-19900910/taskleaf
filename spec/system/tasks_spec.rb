require 'rails_helper'

describe 'タスク管理機能', type: :system do
  describe '一覧表示機能' do
    before do
      user_a = FactoryBot.create(:user, name: 'ユーザA', email: 'a@test.com') # ユーザAを作成しておく
      FactoryBot.create(:task, name: '最初のタスク', user: user_a) # 作成者がユーザAであるタスクを作成しておく
    end
    context 'ユーザAがログインしているとき' do
      before do
        visit login_path # ユーザAでログインする
        fill_in 'メールアドレス', with: 'a@test.com'
        fill_in 'パスワード', with: 'test'
        click_button 'ログインする'
      end

      it 'ユーザAが作成したタスクが表示される' do
        expect(page).to have_content '最初のタスク' # 作成済みのタスクの名称が画面上に表示されていることを確認
      end
    end
  end
end