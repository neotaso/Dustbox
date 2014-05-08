#!/usr/bin/env ruby
# encoding:utf-8
require 'rubygems'
require 'mechanize'

agent = Mechanize.new
url = 'http://yadex-mail.herokuapp.com/'
agent.get(url)
agent.page.form_with(:name => nil) do |form|
  form.click_button
end
puts agent.page.search('div.alert').to_s.gsub(/<("[^"]*"|'[^']*'|[^'">])*>/, "").gsub(/\s*\n*/, "")
