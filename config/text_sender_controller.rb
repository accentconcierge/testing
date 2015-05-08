class SendTextController < ApplicationController
  def index
  end
 
  def send_text_message
    number_to_send_to = params[:number_to_send_to]
 
    twilio_sid = "ACbe40b78a993a27422bacb58c7700a9e7"
    twilio_token = "cd09fb565fa8ae28949cd943f6efdd79"
    twilio_phone_number = "+17704673769"
 
    @twilio_client = Twilio::REST::Client.new twilio_sid, twilio_token
 
    @twilio_client.account.sms.messages.create(
      :from => "+1#7704673769",
      :to => number_to_send_to,
      :body => "This is an message. It gets sent to #{number_to_send_to}"
    )
  end
end