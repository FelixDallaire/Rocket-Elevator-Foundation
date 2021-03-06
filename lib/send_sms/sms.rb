# Download the twilio-ruby library from twilio.com/docs/libraries/ruby
require 'twilio-ruby'

module SendSms
    class Sms
        def initialize
        end
        
        def send_sms(technician, elevator)
            account_sid = ENV["account_sid"]
            auth_token = ENV["auth_token"]
            client = Twilio::REST::Client.new(account_sid, auth_token)
            
            from = ENV['twilio_from'] # Your Twilio number
            to = ENV['twilio_to'] # Your mobile phone number
            
            client.messages.create(
            from: from,
            to: to,
            body: "!!! Hi #{technician}. The elevator: #{elevator} needs your attention."
            )
        end

        def is_intervention()
            self.status == 'Intervention'
        end
    end
end
