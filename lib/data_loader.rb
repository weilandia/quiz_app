require_relative 'question_repository'

class DataLoader
  attr_reader :questions

  def self.from_csv(data = csv_files_hash)
    data = DataLoader.new
    data.load_data(data, :csv)
    sales_engine.relationships
    sales_engine
  end

  def initialize(data={})
    instantiate_repositories(data)
    relationships
  end

  def instantiate_repositories(tst_data)
    @items ||= ItemRepository.new(tst_data[:items] || [])
    @merchants ||= MerchantRepository.new(tst_data[:merchants] || [])
    @invoices ||= InvoiceRepository.new(tst_data[:invoices] || [])
    @invoice_items ||= InvoiceItemRepository.new(tst_data[:invoice_items] || [])
    @transactions ||= TransactionRepository.new(tst_data[:transactions] || [])
    @customers ||= CustomerRepository.new(tst_data[:customers] || [])
  end

  def from_csv(data, repository)
    CSV.open(data, headers: true, header_converters: :symbol).each do |row|
      repository.create_instance(row.to_hash)
  end

  def load_csv_data(data)
    from_csv(data[:items], items)
    from_csv(data[:merchants], merchants)
    from_csv(data[:invoices], invoices)
    from_csv(data[:invoice_items], invoice_items)
    from_csv(data[:transactions], transactions)
    from_csv(data[:customers], customers)
  end


  def self.csv_files_hash
    { questions: './data/merchants.csv',
      items: './data/items.csv',
      invoices: './data/invoices.csv',
      invoice_items: './data/invoice_items.csv',
      transactions: './data/transactions.csv',
      customers: './data/customers.csv' }
  end
end
