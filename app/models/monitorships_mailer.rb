class MonitorshipsMailer < ActionMailer::Base
  def topic_change_notification(user_email, topic)
    @subject        = "[Tripfriends forum] Topic:#{topic.title} has been updated"
    @recipients = user_email
    @url = topic_path(topic)
    @sent_on        = Time.now
    @from           = ADMIN_EMAIL
    @body[:topic]    = topic    
  end
end
