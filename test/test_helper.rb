require 'test/unit'
require 'rubygems'

require File.dirname(__FILE__) + '/../lib/recurly'

def config
  @@config ||= YAML::load(File.read(File.dirname(__FILE__) + "/config.yml"))
end

Recurly.configure do |c|
  c.username = config[:username]
  c.password = config[:password]
end

def create_account(account_code)
  account = Recurly::Account.create(
    :account_code => "#{Time.now.to_i}-#{account_code}",
    :first_name => 'Verena',
    :last_name => 'Test',
    :email => 'verena@test.com',
    :company_name => 'Recurly Ruby Gem')
end