class PostMailer < ActionMailer::Base
  def report_notification(user, post, request)
    setup_email(user, post, request)
    @subject    += 'Inappropriate content report'
  end
  
  protected
    def setup_email(user, post, request)
      @recipients     = INAPPROPRIATE_CONTENT_EMAIL
      @from           = INAPPROPRIATE_CONTENT_EMAIL
      @subject        = "[Tripfriends forum] "
      @sent_on        = Time.now
      @body[:user]    = user
      @body[:post]    = post
      @body[:request] = request
    end
end
