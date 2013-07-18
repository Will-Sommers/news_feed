module Compare
  class ArticleDiff

    def initialize(previous_version, current_version)
      @previous_version = to_array(previous_version)
      @current_version = to_array(current_version)
    end


    def same_length?
      @previous_version.length == @current_version.length
    end

    def compare

      return if same_length?
      positions_array = []

      if @current_version.length > @previous_version.length 
        diff_sentences = @current_version - @previous_version
        
        diff_sentences.each do |sentence|
          positions_array << @current_version.index(sentence)
        end

      else
        diff_sentences = @previous_version - @current_version
        
        diff_sentences.each do |sentence|
          positions_array << @previous_version.index(sentence)
        end

      end

      return positions_array
    
    end

    private 

    def to_array(version)
      version = version.split('.')
    end

  end
end