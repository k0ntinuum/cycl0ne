function inverse(f)
    g = zeros(Symbol, length(f))
    for i in 1:length(f)
        g[i] = findfirst(isequal(i),f)
    end
    g
end

function safe(i,n)
    if i > n
        i = i - n
    end
    if i > n
        i = i - n
    end
    if i < 1
        i = i + n
    end
    i
end

function vecfromstring(s)
    n = length(s)
    v = zeros(Symbol,n)
    for i in 1:n
        if occursin(s[i:i],"ABCDEFGHIJKLMNOPQRSTUVWXYZ")
            v[i] = Symbol(codepoint(s[i]) - 64)
        else
            v[i] = Symbol(27)
        end
    end
    v
end

