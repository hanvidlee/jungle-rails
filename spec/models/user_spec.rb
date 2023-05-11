require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Validations' do
    it 'is valid with all required attributes' do
      user = User.new(
        first_name: 'John',
        last_name: 'Doe',
        email: 'john.doe@example.com',
        password: 'password',
        password_confirmation: 'password'
      )
      expect(user).to be_valid
    end
  end

  describe '.authenticate_with_credentials' do
    before do
      @user = User.create(
        first_name: 'John',
        last_name: 'Doe',
        email: 'john@example.com',
        password: 'password',
        password_confirmation: 'password'
      )
    end

    it 'should authenticate when given valid credentials' do
      expect(User.authenticate_with_credentials('john@example.com', 'password')).to eq(@user)
    end

    it 'should not authenticate when given an incorrect password' do
      expect(User.authenticate_with_credentials('john@example.com', 'wrongpassword')).to be_nil
    end

    it 'should not authenticate when given an incorrect email' do
      expect(User.authenticate_with_credentials('wrongemail@example.com', 'password')).to be_nil
    end

    it 'should authenticate when given an email with leading or trailing spaces' do
      expect(User.authenticate_with_credentials(' john@example.com ', 'password')).to eq(@user)
    end

    it 'should authenticate when given an email with different casing' do
      expect(User.authenticate_with_credentials('JoHn@exAmPlE.cOm', 'password')).to eq(@user)
    end
  end
end