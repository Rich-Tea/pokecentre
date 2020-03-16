require_relative('../db/sql_runner')

class Pkmn

  attr_accessor :pkmn_name, :pkmn_type, :pkmn_age
  attr_reader :id

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @pkmn_name = options['pkmn_name']
    @pkmn_type = options['pkmn_type']
    @pkmn_age = options['pkmn_age'].to_i
 end
