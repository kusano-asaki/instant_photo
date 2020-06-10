class PictureMailer < ApplicationMailer
  def contribution_mail(picture)
    @contribution = picture
    mail to: picture.user.email, subject: "投稿確認メール"
  end
end
