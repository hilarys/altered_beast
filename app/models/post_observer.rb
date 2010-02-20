class PostObserver < ActiveRecord::Observer
  def after_save(model)
    topic = model.topic
    topic.monitoring_users.each {|user| MonitorshipsMailer.deliver_topic_change_notification(user.email, topic) }

    #model.logger.info "THE POST OBSERVER NOTICED THAT - #{model.class.name} #{model.id} saved"
  end
end
  