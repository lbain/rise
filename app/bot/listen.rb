require "facebook/messenger"
include Facebook::Messenger

Facebook::Messenger::Subscriptions.subscribe(access_token: Figaro.env.facebook_access_token)
Bot.on :message do |message|
    puts message.text
end