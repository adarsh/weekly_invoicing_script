require_relative 'sum_weekly_invoices'
require_relative 'line_processor'

SumWeeklyInvoices.new('sales_this_week.md').add
