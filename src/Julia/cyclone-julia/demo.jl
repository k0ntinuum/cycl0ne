function singlekeydemo(n)
    hue = 155  
    r = 50
    K = randomkey(n)
    rgb(255,255,255)
    @printf "key\n\n"
    rgb(hue,hue,hue)
    printkey(K)
    @printf "\n"
    rgb(255,255,255)
    @printf "p\nc\n\n"
    for i in 1:10
        p = Random.randperm(n)
        c = encrypt(p,K,r)
        d = decrypt(c,K,r)
        #print("p  =  ")
        #rgb(255,0,0)
        rgb(hue,hue,hue)
        printvec(p)
        #print("c  =  ")
        #rgb(255,255,0)
        printvec(c)
        if p != d print("\nERROR\n") end
        @printf "\n"
    end
end

function roundsdemo(n)
    hue = 155  
    r = 50
    K = randomkey(n)
    rgb(255,255,255)
    @printf "key\n\n"
    rgb(hue,hue,hue)
    printkey(K)
    @printf "\n"
    rgb(255,255,255)
    @printf "p\nc\n\n"
    for i in 1:10
        p = vecfromstring("THIS_IS_THE_CYCLONE_SYMMETRIC_CRYPTO_SYSTEM_IN_ACTION")
        c = encrypt(p,K,i)
        d = decrypt(c,K,i)
        rgb(255,255,255)
        @printf "using %2d rounds : \n\n" i
        rgb(hue,hue,hue)
        printvec(p)
        #print("c  =  ")
        #rgb(255,255,0)
        printvec(c)
        if p != d print("\nERROR\n") end
        @printf "\n"
    end
end

function stepwisedemo(n)
    hue = 155  
    r = 40
    K = randomkey(n)
    rgb(255,255,255)
    @printf "key\n\n"
    rgb(hue,hue,hue)
    printkey(K)
    @printf "\n"
    p = vecfromstring("THIS_IS_THE_CYCLONE_SYMMETRIC_CRYPTO_SYSTEM_IN_ACTION")
    c = demoencrypt(p,K,r)
    @printf "\n"
    d = demodecrypt(c,K,r)
    if p != d print("\nERROR\n") end
    @printf "\n"
    rgb(255,255,255)
end