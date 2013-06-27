class SendTextController < ApplicationController

  def index
  end
 
  def send_text_message
    number_to_send_to = params[:number_to_send_to]
 
    twilio_sid = "ACf294bfba9f42422d838e9dc62cd227ff"
    twilio_token = "eebc4b834612d96e3836aff3b7ca3a8f"
    twilio_phone_number = "+1 401-626-4121"
 
    @twilio_client = Twilio::REST::Client.new twilio_sid, twilio_token
 
    @twilio_client.account.sms.messages.create(
      :from => "+1#{twilio_phone_number}",
      :to => number_to_send_to,
      :body => "This is an message. It gets sent to #{number_to_send_to}"
    )
  end
end