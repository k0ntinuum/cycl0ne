function randomkey(n)
    k = zeros(Symbol, n, n)
    for i in 1:n
        k[i,:] = Random.randperm(n)
    end
    k
end

function getf(k,s)
    n = size(k)[begin]
    f = zeros(Symbol,n)
    for i in 1:n
        x = i
        for j in 1:n
            x = k[ j, safe(x+s[j],n)  ]
        end
        f[i] = x
    end
    f
end

function spin(k,r)
    n = size(k)[begin]
    s = zeros(Symbol,n)
    for i in 1:r
        f = getf(k,s)
        for j in 1:n
            s[j] = safe(f[j]+s[j],n)
        end
    end
    K = zeros(Symbol,(n,n))
    for j in 1:n
            K[j,:] = circshift(k[j,:],s[j])
    end
    K
end

function testspin(k,r)
    F = Set()
    n = size(k)[begin]
    s = zeros(Symbol,n)
    for i in 1:r
        f = getf(k,s)
        push!(F,f)
        for j in 1:n
            s[j] = safe(f[j]+s[j],n)
        end
    end
    K = zeros(Symbol,(n,n))
    for j in 1:n
            K[j,:] = circshift(k[j,:],s[j])
    end
    @printf "length-of-F / rounds = %3d /%3d\n" length(F) r
    K
end