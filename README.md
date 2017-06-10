# GCP Cloud Pub/Sub

## クイックスタート
https://cloud.google.com/pubsub/docs/quickstart-cli#pubsub-pull-messages-ruby
https://cloud.google.com/pubsub/docs/reference/libraries

## 準備
```
$ gem install google-cloud-pubsub
```

```
$ gcloud init
$ gcloud components install beta
$ gcloud beta pubsub topics create myTopic
$ gcloud beta pubsub subscriptions create --topic myTopic mySubscription
```

## Pub
```
$ gcloud beta pubsub topics publish myTopic "hello"
```

## Sub
```
$ gcloud beta pubsub subscriptions pull --auto-ack mySubscription
┌───────┬─────────────────┬────────────┐
│  DATA │    MESSAGE_ID   │ ATTRIBUTES │
├───────┼─────────────────┼────────────┤
│ hello │ xxxxxxxxxxxxxxx │            │
└───────┴─────────────────┴────────────┘
```
