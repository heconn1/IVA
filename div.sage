def div(f, flist, ord=0):  # default to lex order
#    print(f)
#    print(flist)
    mon_ord=['lex', 'deglex', 'degrevlex'][ord]
    T = PolynomialRing(QQ, 4, 'xyzw', order=mon_ord)
    p = T(f)     # copy of f living in ring T
    r = 0
    s = len(flist)
    qlist=[0 for i in [1..s]]
    while p != 0 :
        i = 1
        divOcc = false
        while (i <= s) & (divOcc == false) :
            fi = T(flist[i-1])
            if p.lt() % fi.lt() == 0 :
                q = p.lt() / fi.lt()
                q = q.numerator()    # get out of fraction field
                qlist[i-1] = qlist[i-1] + q
                p = p - q*fi
                divOcc = true
            else :
                i = i + 1
        if divOcc == false :
            r = r + p.lt()
            p = p - p.lt()
    print("quotients = ", qlist)
    print()
    return r
        
