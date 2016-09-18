class StaticController < ApplicationController
  def index
    @actual_yield = (Company.select('sum(paid_percent) / sum(paid_debt) / avg(term) * 12 as value')
                        .where.not(paid_percent: nil, paid_debt: nil, term: nil)[0]).value
  end
end