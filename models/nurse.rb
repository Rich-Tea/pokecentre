require_relative('../db/sql_runner')

class Nurse

  attr_accessor :trainer_name, :records
  attr_reader :id

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @trainer_name = options['trainer_name']
    @notes = options['notes']
 end

def save()
  sql = "INSERT INTO pkmns
           (trainer_name, records)
           VALUES
           ($1, $2)
           RETURNING id"
  values = [@trainer_name, @records]
  @id = SqlRunner.run(sql, values).first['id'].to_i

end
