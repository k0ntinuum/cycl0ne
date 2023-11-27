function encrypt(p, k, r)
    for i in 1:r
        K = spin(k,i)
        p = encode(p,K)
        p = reverse(p)
    end
    p
end

function decrypt(p, k, r)
    for i in 1:r
        K = spin(k,r + 1 - i)
        p = reverse(p)
        p = decode(p,K)
    end
    p
end