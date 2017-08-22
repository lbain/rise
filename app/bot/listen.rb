require "facebook/messenger"
include Facebook::Messenger

Facebook::Messenger::Subscriptions.subscribe(access_token: Figaro.env.facebook_page_access_token)
Bot.on :message do |message|
    Bot.deliver({
        recipient: message.sender,
        message: {
          text: message.text
        }
      }, access_token: Figaro.env.facebook_page_access_token)
end

Bot.on :optin do |optin|
    puts optin.sender
    puts optin.recipient
    puts optin.sent_at
    puts optin.ref
end

