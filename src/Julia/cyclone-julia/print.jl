function printsymbol(s)
    if s <= 26 
        print(Char(s+64)," ") 
    else
        print("_ ")
    end
end

function printvec(v)
    for i in 1:length(v)
        #@printf "%d " i
        printsymbol(v[i])
    end
    @printf "\n"
end

function printkey(k)
    for i in 1:size(k)[begin]
        printvec(k[i,:])
    end
end

