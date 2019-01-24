=begin         
some
=end

# block comments are full line comments..
# how funny is that? :)

class Toast # simple line comment

    def cheese( args )
        @mogg = args
        schlupp = 'rupp'
        schnuff = "hussle #{hummel}"
    end

    def huzzle( thiz, that )
        @@schmogg = @mogg + thiz * that
        %Q!rumsel #{pumsel} testerle!
        %Q{rumsel \#\{pumsel\} testerle}
    end

end
