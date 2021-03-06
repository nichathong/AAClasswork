# == Schema Information
#
# Table name: users
#
#  id              :bigint           not null, primary key
#  username        :string           not null
#  email           :string           not null
#  password_digest :string           not null
#  session_token   :string           not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
class User < ApplicationRecord
    validates :username, presence: true, uniqueness: true
    validates :email, presence: true, uniqueness: true
    validates :password_digest, presence: { message: 'Password can\'t be blank'}
    validates :session_token, presence: true, uniqueness: true
    validates :password, length: {minimum: 6, allow_nil: true }
    after_initialize :ensure_session_token

    attr_reader :password

    def password=(password)
        @password = password
        self.password_digest = BCrypt::password.create(password)

    end

    def self.generate_session_token
        SecureRandom::urlsafe_base64
    end

    def reset_session_token!
        self.session_token = User.generate_session_token
        self.save!
        self.session_token
    end

    def ensure_session_token
        self.session_token ||= User.generate_session_token
    end

    def is_password?(password)
        password_object = BCRypt::Password.new(self.password_digest)
        password_digest.is_password?(password)
    end

    def self.find_by_credentials(username, password)
        user = User.find_by(username: username)

        if user && user.is_password?(password)
            user
        else
            nil
        end
    end




end
