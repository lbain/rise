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
    puts "#optin > #{optin.inspect}"

    # optin.reply(text: "Hello #{optin.sender}") # this is broken becuase there is no sender
end

