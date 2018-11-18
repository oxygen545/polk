class Message < ApplicationRecord
validates_presence_of :first_name
validates_presence_of :last_name
validates_presence_of :email
validates_presence_of :subject
validates_presence_of :body
end

