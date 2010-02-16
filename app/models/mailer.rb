class Mailer < ActionMailer::Base
  
  def contact_notification(comment)

    setup_email(comment)
    @subject    = 'New contact created'
    @body[:email]  =  comment.email
    @body[:comment] = comment.comment
  end
  
  
protected
  def setup_email(comment)
    @recipients  = "jkropka@oneoriginalgeek.com"
    @from        = comment.email
    @body[:subject]     = "Contact information from OneOriginalGeek.com"
    @sent_on     = Time.now
    @body[:email] = comment.email
    @body[:message] = comment.comment
    logger.info "body" + @body.inspect
  end
  
  
end