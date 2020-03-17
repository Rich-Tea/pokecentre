require_relative('../db/sql_runner')

class Nurse

  attr_accessor :nurse_name, :id

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @nurse_name = options['nurse_name']
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
   return results.map{|nurse| Nurse.new(nurse)}
 end

 def self.id(id)
   sql = "SELECT * FROM nurses WHERE id = $1"
   values = [id]
   results = SqlRunner.run(sql, values)
   return Nurse.new(results.first)
 end

 def self.delete_all()
   sql = "DELETE FROM nurses"
   SqlRunner.run(sql)
 end

 def delete
   sql = "DELETE FROM nurses WHERE id = $1"
   values = [@id]
   SqlRunner.run(sql, values)
 end


end
