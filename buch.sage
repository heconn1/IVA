def div(f, flist, ord=None) :
    """ Divide the polynomial f by the polynomials specified in the list flist.
    
    Keyword arguments:

    ord -- 0 for lex, 1 for deglex (graded lex), 2 for degrevlex.

    If the ord argument is specified, the computation is performed in a
    local polynomial ring T in (up to) four variables, x > y > z > w.
    If ord is not specified, the computation is performed in the ring 
    inherited as f.parent()
    """
    if ord == None :
        T = f.parent()
    else :
        mon_ord=['lex', 'deglex', 'degrevlex'][ord]
        T = PolynomialRing(QQ, 4, 'xyzw', order=mon_ord)
    p = T(f)
#    print("p = ", p)
    r = 0
    s = len(flist)
    qlist=[0 for i in [1..s]]
    while p != 0 :
#        print(p)
        i = 1
        divOcc = false
        while (i <= s) & (divOcc == false) :
            fi = T(flist[i-1])
            if p.lt() % fi.lt() == 0 :
                q = p.lt() / fi.lt()
                q = q.numerator()    # get out of fraction field
#                print("q = ", q)
                qlist[i-1] = qlist[i-1] + q
                p = p - q*fi
#                print("p = ", p)
                divOcc = true
            else :
                i = i + 1
        if divOcc == false :
            r = r + p.lt()
#            print("r = ", r)
            p = p - p.lt()
#    print("quotients = ", qlist)
#    print()
    return r




def Spoly(f, g, ord=None) :
    """ Compute the S-polynomial of the two input polynomials f and g.
    
    Keyword arguments:

    ord -- 0 for lex, 1 for deglex (graded lex), 2 for degrevlex.

    If the ord argument is specified, the computation is performed in a
    local polynomial ring T in (up to) four variables, x > y > z > w.
    If ord is not specified, the computation is performed in the ring 
    inherited as f.parent()
    """
    if ord != None :
        mon_ord=['lex', 'deglex', 'degrevlex'][ord]
        T = PolynomialRing(QQ, 4, 'xyzw', order=mon_ord)
    else :
        T = f.parent()
    xgam = lcm(T(f).lm(),T(g).lm())
    ltf = T(f).lt()
    ltg = T(g).lt()
    S = xgam/ltf*f - xgam/ltg*g
    return S.numerator()



def buch(flist, ord=None):  
    """ Use Buchberger's algorithm to compute a Groebner basis for the ideal generated by the set of polynomials specified in the input list flist.
    
    Keyword arguments:

    ord -- 0 for lex, 1 for deglex (graded lex), 2 for degrevlex.

    If the ord argument is specified, the computation is performed in a
    local polynomial ring T in (up to) four variables, x > y > z > w.
    If ord is not specified, the computation is performed in the ring 
    inherited as flist[0].parent()
    """
    if ord == None :
        T=flist[0].parent()
    else :
        mon_ord=['lex', 'deglex', 'degrevlex'][ord]
        T = PolynomialRing(QQ, 4, 'xyzw', order=mon_ord)
    G = [T(f) for f in flist]
    Gprime = []
    while G != Gprime :
        Gprime = G
        for p in Gprime :
            for q in Gprime :
                if p == q : continue
                S = Spoly(p, q, ord)
#                print("For ", (p,q), " S = ", S, " G = ",G," Gp = ",Gprime)
                r = div(S, Gprime, ord)
#                print("r = ", r)
                if r != 0 :
#                    print("r = ", r)
                    G.append(r)
    return G                
