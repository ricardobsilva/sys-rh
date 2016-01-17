class Frequency < ActiveRecord::Base
  belongs_to :person

  def self.to_csv(options = {})
    CSV.generate(options) do |csv|
      csv << column_names
      all.each do |product|
        csv << product.attributes.values_at(*column_names)
      end
    end
  end

  def self.by_month_and_year(month,year)
    where('extract(month from created_at) = ? and extract(year from created_at) = ?', month,year)
  end
end
