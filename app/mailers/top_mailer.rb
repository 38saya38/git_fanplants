class TopMailer < ActionMailer::Base
  default from: "koumedesse@gmail.com"   # 送信元アドレス
  default to: "koumedesse@gmail.com"     # 送信先アドレス
 
  def received_email(top)
    @top = top
    mail(:subject => 'お問い合わせを承りました')
  end
 
end