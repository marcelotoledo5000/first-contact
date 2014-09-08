require "json"
require "selenium-webdriver"
require "rspec"
include RSpec::Expectations

##################################################################################
#Esta é a versão clean do arquivo HTML exportado para o formato da linguagem     #
#Ruby / Rspec / WebDriver, que é uma das opções padrões do próprio Selenium IDE. #
##################################################################################

describe "PesquisagoogleSpec" do

  before(:each) do
    @driver = Selenium::WebDriver.for :firefox
    @base_url = "http://www.google.com.br/"
    @driver.manage.timeouts.implicit_wait = 30
  end
  
  after(:each) do
    @driver.quit
  end
  
  it "test_pesquisagoogle_spec" do
    @driver.get(@base_url + "/")
    @driver.find_element(:id, "gbqfq").clear
    @driver.find_element(:id, "gbqfq").send_keys "Teste de Software"
    @driver.find_element(:id, "gbqfb").click
    sleep 5
  end

end