require "capybara"  # importando capybara
require "capybara/rspec"  # importando rspec
require "selenium-webdriver"  # importando selenium


RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.shared_context_metadata_behavior = :apply_to_host_groups

  config.include Capybara::DSL  # incluindo todos metodos e recursos do Capybara no Rspec

  config.before(:example) do  # definindo resolução do navegador webdriver
    page.current_window.resize_to(1280,800)  
  end

  config.after(:example) do |e|   # obtendo screenshot onde o argumento'e' é o exemplo do q esta sendo executado
    nome = e.description.gsub(/[^A-Za-z0-9 ]/, '').tr(' ', '_')  # 
    page.save_screenshot('evidencias/' + nome + '.png')  # obtendo prints do caso de teste e salvando na pasta 'evidencias'
    page.save_screenshot('evidencias/' + nome + '.png') if e.exception  # obtendo prints do caso de teste apenas em falhas '
end


end

Capybara.configure do |config|
  config.default_driver = :selenium_chrome  # projeto sera executado no edge
  # definindo como selenium_chrome_headless o navegador é executado em segundo plano
  config.default_max_wait_time = 5  # definindo tempo q o Capybara tem para encontrar elemento, substituindo sleep
  config.app_host = 'https://training-wheels-protocol.herokuapp.com'  # definindo URL padrão
end