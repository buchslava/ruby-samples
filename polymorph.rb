class BaseQuery
  def filter_to_sql
    generate_query_filter
  end

  def generate_query_filter
    <<~S
      some sql
    S
  end

  def generate_query_filter_for(param)
    <<~S
      some sql with #{param}
    S
  end
end

class SummaryQuery < BaseQuery
end

class WebSummaryQuery < SummaryQuery
  def generate_query_filter
    generate_query_filter_for('web')
  end
end

all = SummaryQuery.new
puts all.filter_to_sql

web = WebSummaryQuery.new
puts web.filter_to_sql
