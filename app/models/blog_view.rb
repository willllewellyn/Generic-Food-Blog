# frozen_string_literal: true

class BlogView < ActiveRecord::Base
  attr_accessor :UserId, :PageId, :PageName

  def self.to_csv
    attributes = %w[id user_id page_id created_at updated_at page_name]

    CSV.generate(headers: true) do |csv|
      csv << attributes

      all.each do |blogs_top10|
        csv << attributes.map { |attr| blogs_top10.send(attr) }
      end
    end
  end
end
