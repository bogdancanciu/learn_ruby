class XmlDocument
    def initialize(indented = false)
        @indented = indented
        @indent_level = 0
    end

    def method_missing(symbol, attributes = {}, &block)
        xml = "<#{symbol}"
        attributes.each { |key, value| xml << " #{key}='#{value}'" }
        if block_given?
            if @indented
                @indent_level += 2
                xml << ">\n" << (" " * @indent_level) << yield << (" " * @indent_level) << "</#{symbol}>\n"
                @indent_level -= 2
            else
                xml << ">" << yield << "</#{symbol}>"
            end
        else
            xml << "/>"
            if @indented
                xml << "\n"
                @indent_level -= 2
            end
        end

        xml
    end
end