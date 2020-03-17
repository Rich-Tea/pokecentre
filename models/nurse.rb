require_relative('../db/sql_runner')

class Nurse

  attr_accessor :nurse_name, :records
  attr_reader :id

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @nurse_name = options['nurse_name']
    @notes = options['notes']
 end

  def save()
  sql = "INSERT INTO nurses
           (nurse_name)
           VALUES
           ($1)
           RETURNING id"
  values = [@nurse_name]
  @id = SqlRunner.run(sql, values).first['id'].to_i
  end

 def self.all()
   sql = "SELECT * FROM nurses"
   results = SqlRunner.run(sql)
   return results.map({|nurse| Nurse.new(nurse)}
 end

end
