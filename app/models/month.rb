class Month < ApplicationRecord
  scope :months_between, lambda {|start_date, end_date| where("mes_ano >= ? AND mes_ano <= ?", start_date, end_date )}
end
