configure :development do
 set :database, 'sqlite3:name.db'
 set :show_exceptions, true
end

configure :production do
 db = URI.parse(ENV['DATABASE_URL'] || 'postgres:///localhost/mydb')

 ActiveRecord::Base.establish_connection(
   :adapter  => db.scheme == 'postgres' ? 'postgresql' : db.scheme,
   :host     => db.host,
   :username => db.user,
   :password => db.password,
   :database => db.path[1..-1],
   :encoding => 'utf8'
 )
end

# APP_ROOT = Pathname.new(File.expand_path('../../', __FILE__))
# Dir[APP_ROOT.join('controllers', '*.rb')].each { |file| require file }