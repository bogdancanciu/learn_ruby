class Dictionary
    attr_reader :entries

    def initialize
        @entries = Hash.new
    end

    def add(entry)
        if entry.is_a?(Hash)
          @entries.merge!(entry)
        else
          @entries[entry] = nil
        end
    end

    def printable
        @entries.map { |key, value| "[#{key}] \"#{value}\"" }.sort.join("\n")
    end

    def keywords
        @entries.keys.sort
    end

    def find(entry)
        @entries.select { |key, _| key == entry || key.start_with?(entry) }
    end

    def include?(key)
        return @entries.key?(key)
    end
end