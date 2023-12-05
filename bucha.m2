div = (f, flist, ord) -> (
    MonOrd:={Lex, GLex, GRevLex};
    T := QQ[x,y,z,w, MonomialOrder => MonOrd_ord];
    p := substitute(f, T)  ;   -- copy of polynomial f in ring T
    r := 0;
    q := 0;
    s := #flist;
    qtmp := for i from 1 to s list 0;
    qlist := new MutableList from qtmp;
    while p != 0 do (
	  i := 1;
	  divOcc := false;
	  while (i <= s) and (divOcc == false) do (
	  	  fi := substitute(flist_(i-1), T);  -- copy of fi in T
		  if leadTerm(p) % leadTerm(fi) == 0 then (
		  	  q = leadTerm(p) / leadTerm(fi);
			  q = substitute(q, T); -- get out of fraction field
--	must use # not _ 		  qlist_(i-1) = qlist_(i-1) + q;
			  qlist#(i-1) = qlist#(i-1) + q;
			  p = p - q*fi;		  
			  divOcc = true;
		  )
		  	  else i = i + 1;
  	  );
	  if divOcc == false then (
	     r = r + leadTerm(p);
	     p = p - leadTerm(p);
	  );
    );
--    print ("quotients = ", toList qlist);
--    << "quotients = " << toList qlist << endl;
    << "r = " << r << endl;
    return r;
)
       

--Spoly = {ord => 0} >> opt -> (f, g) -> (
-- optional arguments are a pain
Spoly = (f, g, ord) -> (
    MonOrd:={Lex, GLex, GRevLex};
    ind := ord;
    T := QQ[x,y,z,w, MonomialOrder => MonOrd_ind];
    fT := substitute(f, T);
    gT := substitute(g, T);
    xgam := lcm(leadMonomial(fT), leadMonomial(gT));
    ltf := leadTerm(fT);
    ltg := leadTerm(gT);
    S := xgam/ltf*fT - xgam/ltg*gT;
    return substitute(S, T);
)
    
    
--buch = {ord => 0} >> opt -> flist -> (    
bucha = (flist, ord) -> (    
    MonOrd:={Lex, GLex, GRevLex};
    ind := ord;
    
    T := QQ[x,y,z,w, MonomialOrder => MonOrd_ind];

--  Only appending, so don't need mutable lists
    G := for f in flist list substitute(f, T);
--    G := new MutableList from for f in flist list substitute(f, T);
    << "G = " << G << endl;
    Gprime := {};
--    Gprime := new MutableList from {};
    S := 0; r := 0;
    ic = 0;
    while (G != Gprime) do (
    	br = 0;
	Gprime = G;
    	for p in Gprime do (
	    for q in Gprime do (
		<< "p = " << p << " q = " << q << endl;
--    	    	if p == q then continue; -- why is sub() needed?
--              without it, error: no method to compare p,q
    	    	if sub(p, T) == sub(q, T) then continue;
	    	S = Spoly(p, q, ind);	
		S = sub(S, T);
		<< "S = " << S << " G = " <<G<< endl;		
    	    	r = div(S, Gprime, ind);   	    	
    	    	if r != 0 then  (
    	    	    << "********* adding r = " <<r<< endl;
		    G = append(G, r);
		    << "********* G = " <<G<< endl;
    	    	    br = 1;
		    break;
		    );
    	    	<< "G = " << G << endl;
		<< "Gprime = " << Gprime << endl;
            );
	    if br == 1 then break;
    	);
    );
    return G;    
)