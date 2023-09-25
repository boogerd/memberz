class CsvImportTransactionService
    require 'csv'

    def call(file)
        opened_file = File.open(file)
        options = { headers: true, col_sep: ';'}
        CSV.foreach(opened_file, **options) do |row|
            
            transaction_hash = {}
            transaction_hash [:transaction_date] = row['Datum']
            transaction_hash [:description] = row['Omschrijving']
            if row['AfBij'] == 'Af'
                transaction_hash [:transaction_amount] = row['Bedrag'] *-1
            else 
                transaction_hash [:transaction_amount] = row['Bedrag']
            end
            transaction_hash [:transaction_text] = row['Mededelingen']
            transaction_hash [:iban] = row['Rekening']
            transaction_hash [:counter_iban] = row['Tegenrekening']
            transaction_hash [:transaction_code] = row['Code']
            transaction_hash [:transaction_type] = row['Mutatiesoort']

        Transaction.find_or_create_by!(transaction_hash)

        end
    end
end