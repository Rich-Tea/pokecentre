require_relative('../db/sql_runner')

class Pokemon

  attr_accessor :pkmn_name, :pkmn_type, :pkmn_level
  attr_reader :id

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @pkmn_name = options['pkmn_name']
    @pkmn_type = options['pkmn_type']
    @pkmn_level = options['pkmn_level'].to_i
 end

 def save()
   sql = "INSERT INTO pkmns
            (pkmn_name, pkmn_type, pkmn_level)
            VALUES
            ($1, $2, $3)
            RETURNING id"
   values = [@pkmn_name, @pkmn_type, @pkmn_level]
   @id = SqlRunner.run(sql, values).first['id'].to_i
 end

 def self.all()
    sql = "SELECT * FROM pkmns"
    results = SqlRunner.run(sql)
    return results.map{|pkmn| Pokemon.new(pkmn)}
  end


end
