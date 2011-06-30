# coding: utf-8

class Article < ActiveRecord::Base
  validates :title, :presence => true
  validates :body, :presence => true

  def multiline_body
    ERB::Util.h(self.body).gsub(/\r\n|\n/, '<br />').html_safe
  end
end
