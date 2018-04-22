class ParserController < ApplicationController


  # для получения контента через http
  require 'open-uri'

  # подключаем Nokogiri
  require 'nokogiri'

  def show
    source = 'http://rg4u.clan.su/tournaments/RU/List_IRGT_RU_2018.htm'

    # получаем содержимое веб-страницы в объект
    page = Nokogiri::HTML(open(source.to_s))

    # производим поиск по элементам с помощью css-выборки
    table = page.css("table[style=border-collapse]")

    table.css('tr').each do |trs|

      data = Hash.new

      data['text'] = link.content

      data['href'] = link['href']

    end
  end
end
