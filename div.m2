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
    << "quotients = " << toList qlist << endl;
    return r;
)
       
