require 'rails_helper'

RSpec.describe User, type: :model do
  it 'should return email ' do
    @user = FactoryBot.build(:user)
    expect(@user.email).to eq('abcd@example.com')
  end

  it 'should not return absence params' do
    @user = FactoryBot.build(:user, email: '', password: '')
  end

  it 'should return email in absence of name' do
    @user = FactoryBot.build(:user)
    expect(@user.email).to eq('abcd@example.com')
  end
end
