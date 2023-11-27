function demoencode(p,k,F)
    l = length(p)
    c = zeros(Symbol,l)
    n = size(k)[begin]
    s = zeros(Symbol,n)
    for i in 1:l
        f = getf(k,s)
        c[i] = f[p[i]]
        f = circshift(f,p[i])
        push!(F,f)
        for j in 1:n s[j] = (f[j]+s[j])%n end
    end
    c
end

function demodecode(p,k)
    l = length(p)
    c = zeros(Symbol,l)
    n = size(k)[begin]
    s = zeros(Symbol,n)
    for i in 1:l
        f = getf(k,s)
        g = inverse(f)
        c[i] = g[p[i]]
        f = circshift(f,c[i])
        for j in 1:n s[j] = (f[j]+s[j])%n end
    end
    c
end