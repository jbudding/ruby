require 'sqlite3'
require 'find'

class DbHandler

    attr_reader :database_info

    def initialize(database_name)
        @database_info = Hash.new
        @database_info[:name] = database_name
        @database_info[:path] = "./db/#{@database_info[:name]}.db"
        @database_info[:db_file] = get_db
    end

    def get_db

        if File.exists?(@database_info[:path])
            puts "Opening #{@database_info[:name]} database"
            return SQLite3::Database.open(@database_info[:path])
        else
            puts "Created new database for #{@database_info[:name]}."
            return SQLite3::Database.new(@database_info[:path])
        end
    end
end

ajb = DbHandler.new('See-saw')
