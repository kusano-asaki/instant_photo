class PictureMailer < ApplicationMailer
  def contribution_mail(picture)
    @contribution = picture
    mail to: darumade4@icloud.com, subject: "投稿確認メール"
  end
end
