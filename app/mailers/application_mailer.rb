class ApplicationMailer < ActionMailer::Base
  default from: ENV['MESSAGE_ADMIN_EMAIL']
  layout 'mailer'
end