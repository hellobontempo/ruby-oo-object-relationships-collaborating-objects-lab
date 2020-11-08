
class MP3Importer
    attr_accessor :artist, :name, :path

    
    def initialize(files)
        @files = files
        @path = "./spec/fixtures/mp3s"
    end
   
    def files
        Dir.chdir(@path) {|path| Dir.glob("*.mp3")}
    end

    def import
        self.files.each {|file| Song.new_by_filename(file)}
    end



end