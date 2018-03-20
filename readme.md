# Google Hangouts Chat Webhook Module

This module is designed to make it quick and easy to send messages via Google Hangouts Chat's Webhook feature. There are two kind of messages that can be sent via Webhook: Text and Cards

* **Text:** These messages are simple, they can include markdown style formatting for bold, italic, and strike-through styles. You can include line breaks as well.
* **Cards:** These messages are complex. They are constructed out of many items that build a Google style card with information. They can include inline images, can be broken up in to sections, and can contain hyperlinks. In the text, HTML is supported.

For more information on the types of widgets that can exist in a Card, check the [Hangouts Chat API Reference](https://developers.google.com/hangouts/chat/reference/message-formats/cards)

## Current Features
* Simple text message sending.

## Road Map
* Create commands that can be used inside of the `New-GHCCardMessage` command to construct a card to your liking.
