module Backend
  module FileSystem

    extend self

    def check! path, type = 'dir'
      
      unless present? path, type
        Rails.logger.warn("[FILESYSTEM] ********* #{path.upcase} #{label(type)} DOESN'T EXIST, CREATE NEW ONE *********")
        create! path, type
        
        unless present? path, type
          raise "[FILESYSTEM] ********* CREATION OF #{path.upcase} #{label(type)} FAILED *********"
        end
      end
    end
      
    private
    
    def create! path, type
      dir?(type) ? FileUtils.mkdir(path) : FileUtils.touch(path)
    end
   
    def present? path, type
      dir?(type) ? File.directory?(path) : File.file?(path)
    end
    
    def dir? type
      type == 'dir'
    end
   
    def label type
      dir?(type) ? 'DIRECTORY' : 'FILE'
    end

  end
end