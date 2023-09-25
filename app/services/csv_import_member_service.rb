class CsvImportMemberService
    require 'csv'

    def call(file)
        opened_file = File.open(file)
        options = { headers: true, col_sep: ';'}
        CSV.foreach(opened_file, **options) do |row|

            member_hash = {}
            member_hash [:salutation] = row['Aanhef']
            member_hash [:name] = row['Naam']
            member_hash [:street] = row['Adres']
            member_hash [:postal_code] = row['Postcode']
            member_hash [:place] = row ['Woonplaats']
            member_hash [:email] = row ['Email']
            member_hash [:phone] = row ['Telefoon']
            member_hash [:direct_debit] = row ['Incasso']
            member_hash [:mandate_code] = row ['Mandaatcode']
            member_hash [:mandate_date] = row ['Mandaatdatum']
            member_hash [:iban] = row ['Iban']
            member_hash [:member_group_id] = row ['Groep']
            member_hash [:start_date] = row ['Startdatum']
            member_hash [:end_date] = row ['Einddatum']
            member_hash [:account_holder] = row['Rekeninghouder']
            member_hash [:terms] = row['Termijnen']
            member_hash [:organisation_id] = row ['Organisatie']

            Member.find_or_create_by!(member_hash)
        end
    end
end