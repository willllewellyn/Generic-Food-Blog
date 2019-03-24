# frozen_string_literal: true

class GeneralPageView < ApplicationRecord
  belongs_to :abouts
  attr_accessor :PageName, :SessionId

  def self.to_csv
    attributes = %w[id page_name session_id created_at updated_at]

    CSV.generate(headers: true) do |csv|
      csv << attributes

      all.each do |website_hits|
        csv << attributes.map { |attr| website_hits.send(attr) }
      end
    end
  end
end
