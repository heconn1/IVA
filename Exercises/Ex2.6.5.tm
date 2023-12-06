<TeXmacs|1.99.20>

<style|generic>

<\body>
  <next-line>Exercise 2.6.5

  Compute S(f, g) using the lex order.

  <\session|sage|default>
    <\output>
      SageMath version 9.2, Release Date: 2020-10-24

      \ \ \ \ \ \ \ \ 
    </output>

    <\unfolded-io>
      \<gtr\>\<gtr\>\<gtr\>\ 
    <|unfolded-io>
      var('x,y,z,w')
    <|unfolded-io>
      (x, y, z, w)
    </unfolded-io>

    <\input>
      \<gtr\>\<gtr\>\<gtr\>\ 
    <|input>
      load("~/Desktop/IVA/buch.sage")
    </input>

    <\input>
      \<gtr\>\<gtr\>\<gtr\>\ 
    <|input>
      \;
    </input>

    <\input>
      \<gtr\>\<gtr\>\<gtr\>\ 
    <|input>
      #(a)
    </input>

    <\input>
      \<gtr\>\<gtr\>\<gtr\>\ 
    <|input>
      f = 4*x^2*z - 7*y^2; g = x*y*z^2 + 3*x*z^4;
    </input>

    <\unfolded-io>
      \<gtr\>\<gtr\>\<gtr\>\ 
    <|unfolded-io>
      Spoly(f, g, 0) # 0 for lex order
    <|unfolded-io>
      <math|-12*<space|0.17em>x<rsup|2>*z<rsup|4>-7*<space|0.17em>y<rsup|3>*z>
    </unfolded-io>

    <\input>
      \<gtr\>\<gtr\>\<gtr\>\ 
    <|input>
      \;
    </input>

    <\input>
      \<gtr\>\<gtr\>\<gtr\>\ 
    <|input>
      #(b)
    </input>

    <\input>
      \<gtr\>\<gtr\>\<gtr\>\ 
    <|input>
      f = x^4*y - z^2; g = 3*x*z^2 - y;
    </input>

    <\unfolded-io>
      \<gtr\>\<gtr\>\<gtr\>\ 
    <|unfolded-io>
      Spoly(f, g, 0)
    <|unfolded-io>
      <math|x<rsup|3>*y<rsup|2>-3*<space|0.17em>z<rsup|4>>
    </unfolded-io>

    <\input>
      \<gtr\>\<gtr\>\<gtr\>\ 
    <|input>
      \;
    </input>

    <\input>
      \<gtr\>\<gtr\>\<gtr\>\ 
    <|input>
      #(c) - use a fourth variable w in place of i
    </input>

    <\input>
      \<gtr\>\<gtr\>\<gtr\>\ 
    <|input>
      f = x^7*y^2*z + 2*w*x*y*z; g = 2*x^7*y^2*z + 4;
    </input>

    <\unfolded-io>
      \<gtr\>\<gtr\>\<gtr\>\ 
    <|unfolded-io>
      Spoly(f, g, 0)
    <|unfolded-io>
      <math|2*<space|0.17em>w*x*y*z-2>
    </unfolded-io>

    <\input>
      \<gtr\>\<gtr\>\<gtr\>\ 
    <|input>
      \;
    </input>

    <\input>
      \<gtr\>\<gtr\>\<gtr\>\ 
    <|input>
      #(d)
    </input>

    <\input>
      \<gtr\>\<gtr\>\<gtr\>\ 
    <|input>
      f = x*y + z^3; g = z^2 - 3*z;
    </input>

    <\unfolded-io>
      \<gtr\>\<gtr\>\<gtr\>\ 
    <|unfolded-io>
      Spoly(f, g, 0)
    <|unfolded-io>
      <math|z<rsup|5>+3*<space|0.17em>x*y*z>
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