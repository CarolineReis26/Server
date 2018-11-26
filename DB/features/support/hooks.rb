require 'selenium-webdriver'
require 'report_builder'


Before do
  if File.exists?("./reports/new_report/ReportBuilder.json")
    File.delete("./reports/new_report/ReportBuilder.json")
  end
end



Before do |scn|
  Capybara.server_port = 8888 + ENV['TEST_ENV_NUMBER'].to_i
  $item_tipo = []


@paginaProduto = Realiza_compra.new
@paginaEntrega = Valida_compra.new




###################### reseta sessão
 Capybara.current_session.driver.browser.manage.delete_all_cookies
 page.driver.quit


##################### Resolução da tela
 Capybara.page.driver.browser.manage.window.maximize
 @scn_name = "#{scn.name + Time.now.strftime('%H-%M-%S-%L')}"
end

After do |step|
  sleep 2
  save_screenshot("data/screenshot/#{@scn_name}/#{@data}#{@hora}.png")
  if step.failed?
    sleep 2
    save_screenshot("data/screenshot/failed/#{@scn_name}/#{@data}#{@hora}.png")
    embed("data/screenshot/failed/#{@scn_name}/#{@data}#{@hora}.png", "image/png", "Erro")
  end

end
