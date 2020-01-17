class Mp3Importer
  attr_reader :import, :files

  def initialize(import)
    @import = import
    @files = Dir.entries(path).grep(/.*\.mp3/)
  end

  def import
    @files.each {|file| Song.new_by_filename(file)}
  end

end 