require 'twilio-ruby'

account_sid = ENV['ACCT_SID'] # Your Account SID from www.twilio.com/console
auth_token = ENV['AUTH_TKN']   # Your Auth Token from www.twilio.com/console

@client = Twilio::REST::Client.new account_sid, auth_token
message = @client.messages.create(
    body: "It is Wednesday My Dudes",
    to: ENV['NUMBER'],    # Replace with your phone number
    from: ENV['FROM_NUM'],  # Replace with your Twilio number
    media_url: "http://ih0.redbubble.net/image.94777491.1109/flat,1000x1000,075,f.u1.jpg"
  )
puts message.sid
