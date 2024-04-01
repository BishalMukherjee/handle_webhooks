class Webhook < ApplicationRecord
  after_save :schedule_webhook_job

  validates :name, :message, presence: true
  validates :name, uniqueness: true

  private

  def schedule_webhook_job
    WebhookJob.perform_later(self) if previous_changes
  end
end
