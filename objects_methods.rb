class Computer

  @@users = {}

  def initialize(username, password)
    @username = username
    @password = password
    @files    = {}
    @@users[username] = password
  end

  def create(filename)
    time = Time.now
    @files[filename] = time
    puts "A new file was created! #{filename} , #{@username}"
  end

  def self.get_users
    @@users
  end
end

my_computer = Computer.new('fmauricios', '12345')
