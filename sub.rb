require "google/cloud/pubsub"

project_id = "xxxxx"
subscription_name = "xxxxx"

pubsub       = Google::Cloud::Pubsub.new project: project_id
subscription = pubsub.subscription subscription_name

puts "Messages pulled:"
subscription.pull.each do |message|
  # Message(String)
  puts message.data
  # Attributes(Hash)
  puts message.attributes
  puts 'foo :' + message.attributes['foo']
  puts 'this:' + message.attributes['this']
  # Ack
  message.acknowledge!
end
