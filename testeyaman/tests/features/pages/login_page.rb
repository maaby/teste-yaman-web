# frozen_string_literal: true

class Login < SitePrism::Page
  set_url '/'

  
   element :entrar,          "a[rel='nofollow']"  #a[class='prv-action ns-void-link']"
   element :login,           "a[href='/login']"
   element :email,           '#username'
   element :senha,           '#password'
   element :btnAcessarConta, '#login-button'
   element :close_notification, '#pnosp_div_close'
  

  def logar
    if (page.has_selector? "div[id='pnosp_div_close']", wait: 5)
      Kernel.puts 'notificação presente'
      close_notification.click
    end

    entrar.click
    wait_until_login_visible(wait:6)
    login.click
    email.click
    email.set 'maabymandira@gmail.com'
    senha.set'Julia041016'
    btnAcessarConta.click
  end
end