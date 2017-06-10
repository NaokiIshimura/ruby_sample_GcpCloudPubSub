require "google/cloud/pubsub"

project_id = "xxxxx"
topic_name = "xxxxx"

pubsub = Google::Cloud::Pubsub.new project: project_id
topic  = pubsub.topic topic_name


# topic.publish "A Message"

topic.publish "Message & Attributes",
              foo: 'bar',
              this: 'that'
