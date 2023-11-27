function demoencrypt(p, k, r)
    F = Set()
    printvec(p)
    for i in 1:r
        K = spin(k,i)
        p = demoencode(p,K,F)
        p = reverse(p)
        printvec(p)
    end
    @printf("permutations/symbols = %3d/%3d\n", length(F), r*length(p)) 
    p
end

function demodecrypt(p, k, r)
    printvec(p)
    for i in 1:r
        K = spin(k,r + 1 - i)
        p = reverse(p)
        p = decode(p,K)
        printvec(p)
    end
    p
end