require_relative('../db/sql_runner')

class Nurse

  attr_accessor :nurse_name, :records
  attr_reader :id

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @nurse_name = options['nurse_name']
    @notes = options['notes']
 end

# def save()
#   sql = "INSERT INTO pkmns
#            (nurse_name, records)
#            VALUES
#            ($1, $2)
#            RETURNING id"
#   values = [@nurse_name, @records]
#   @id = SqlRunner.run(sql, values).first['id'].to_i
#
# end
end
