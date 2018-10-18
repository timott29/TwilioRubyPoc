require 'dotenv/load'
require_relative 'services/send_sms'

puts "Numéro de téléphone:"
number = gets.chomp!

puts "Message:"
message = gets.chomp!

request = Services::SendSms.call(number, message)

if request.sucess?
    puts 'Message envoyé !'
elsif request.failure?
    puts request.errors
end