class WebhookJob < ApplicationJob
  queue_as :default

  def perform(webhook)
    puts "New webhook created or updated: #{webhook.id}"

    # Other operations can also be executed
  end
end
