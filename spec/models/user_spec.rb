require 'rails_helper'

describe User do
  let (:valid_user)     { User.new(name: "Example User", email: "user@example.com") }
  let (:invalid_user)   { User.new() }
  let (:invalid_emails) { %w[user@example,com
                             user_at_foo.org
                             user.name@example.
                             foo@bar_baz.com
                             foo@bar+baz.com] }

  context 'when valid ' do
    it 'has a name and email' do
      expect(valid_user).to be_valid
    end
  end

  context 'when invalid' do
    it 'has no name or email' do
      expect(invalid_user).to be_invalid
      expect(invalid_user.errors.messages).to include :name
      expect(invalid_user.errors.messages).to include :email
    end

   it 'rejects an invalid email address on save' do
      invalid_emails.each do |invalid_address|
        invalid_user.email = invalid_address
        invalid_user.save

        expect(invalid_user.errors.messages[:email]).to eq ["is invalid"]
      end
    end

   it 'rejects an email that already exists' do
     invalid_user.email = "Example User".upcase
     invalid_user.save

     expect(invalid_user.errors.messages[:email]).to eq ["is invalid"]
   end
  end
end
