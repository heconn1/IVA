<TeXmacs|1.99.20>

<style|generic>

<\body>
  Exercise 2.7.1

  Check that S( f i , f j ) = 0 for all pairs 1 \<leq\> i \<less\> j \<leq\>
  5 in Example 1.

  <\session|sage|default>
    <\output>
      SageMath version 9.2, Release Date: 2020-10-24

      \;
    </output>

    <\input>
      \<gtr\>\<gtr\>\<gtr\>\ 
    <|input>
      R.\<less\>x,y\<gtr\>=PolynomialRing(QQ,2,order='deglex')\ 

      \;
    </input>

    <\input>
      \<gtr\>\<gtr\>\<gtr\>\ 
    <|input>
      F=[x^3-2*x*y, x^2*y-2*y^2+x, -x^2, -2*x*y, -2*y^2+x]<next-line>
    </input>

    <\input>
      \<gtr\>\<gtr\>\<gtr\>\ 
    <|input>
      \;
    </input>

    <\input>
      \<gtr\>\<gtr\>\<gtr\>\ 
    <|input>
      load("buch.sage")
    </input>

    <\unfolded-io>
      \<gtr\>\<gtr\>\<gtr\>\ 
    <|unfolded-io>
      for i in [1..5] :

      \ \ \ \ for j in [i+1..5] :

      \ \ \ \ \ \ fi = F[i-1]

      \ \ \ \ \ \ fj = F[j-1]

      \ \ \ \ \ \ print("For ",(i,j)," Spoly = ", Spoly(fi,fj), end=" ")

      \ \ \ \ \ \ print(" \\tremainder = ", div(Spoly(fi,fj), F))
    <|unfolded-io>
      For \ (1, 2) \ Spoly = \ -x^2 \ \ \ \ \ remainder = \ 0

      For \ (1, 3) \ Spoly = \ -2*x*y \ \ \ remainder = \ 0

      For \ (1, 4) \ Spoly = \ -2*x*y^2 \ \ \ \ \ \ \ \ \ remainder = \ 0

      For \ (1, 5) \ Spoly = \ 2*x^2*y^2 - 2*x*y \ \ \ \ \ \ \ \ remainder =
      \ 0

      For \ (2, 3) \ Spoly = \ x - 2*y^2 \ \ \ \ \ \ \ \ remainder = \ 0

      For \ (2, 4) \ Spoly = \ x - 2*y^2 \ \ \ \ \ \ \ \ remainder = \ 0

      For \ (2, 5) \ Spoly = \ 2*x*y^3 + x - 2*y^2 \ \ \ \ \ \ remainder =
      \ 0

      For \ (3, 4) \ Spoly = \ 0 \ \ \ \ \ \ \ \ remainder = \ 0

      For \ (3, 5) \ Spoly = \ 2*x*y^2 \ \ remainder = \ 0

      For \ (4, 5) \ Spoly = \ 2*y^3 \ \ \ \ remainder = \ 0
    </unfolded-io>

    <\input>
      \<gtr\>\<gtr\>\<gtr\>\ 
    <|input>
      \;
    </input>
  </session>
</body>

<\initial>
  <\collection>
    <associate|font-base-size|14>
    <associate|info-flag|minimal>
    <associate|page-medium|paper>
  </collection>
</initial>