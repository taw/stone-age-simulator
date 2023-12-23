module Colors
  def self.red(str)
    "\e[31m#{str}\e[0m"
  end

  def self.green(str)
    "\e[32m#{str}\e[0m"
  end

  def self.yellow(str)
    "\e[33m#{str}\e[0m"
  end
end
