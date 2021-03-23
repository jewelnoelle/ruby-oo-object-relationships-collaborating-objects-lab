class MP3Importer
   attr_accessor :path, :files
   
   def initialize(path)
    @path = path
   end

   def files
    self.files = Dir.glob("#{path}/*.mp3").collect { |file| file.gsub("#{@path}/", "") }
   end

   def import
    self.files.each { |file| Song.new_by_filename(path)}
   end
end