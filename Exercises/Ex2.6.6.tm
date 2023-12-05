<TeXmacs|2.1.2>

<style|generic>

<\body>
  Exercise 2.6.6

  Does S(f, g) depend on which monomial order is used?

  \;

  Yes. Example:

  <\session|sage|default>
    <\output>
      \;
    </output>

    <\unfolded-io>
      \<gtr\>\<gtr\>\<gtr\>\ 
    <|unfolded-io>
      var('x, y')
    <|unfolded-io>
      (x, y)
    </unfolded-io>

    <\input>
      \<gtr\>\<gtr\>\<gtr\>\ 
    <|input>
      load("~/Desktop/buch.sage")
    </input>

    <\input>
      \<gtr\>\<gtr\>\<gtr\>\ 
    <|input>
      \;
    </input>

    <\input>
      \<gtr\>\<gtr\>\<gtr\>\ 
    <|input>
      f=2*x^2 - x*y - 2*y^2 + 2*x + 4*y; <line-break>g=-2*y^2 - x + y - 1;
    </input>

    <\input>
      \<gtr\>\<gtr\>\<gtr\>\ 
    <|input>
      S0=Spoly(f,g, 0) # 0 for lex order
    </input>

    <\input>
      \<gtr\>\<gtr\>\<gtr\>\ 
    <|input>
      S1=Spoly(f,g, 1) # 1 for grlex order
    </input>

    <\unfolded-io>
      \<gtr\>\<gtr\>\<gtr\>\ 
    <|unfolded-io>
      expand(S0)
    <|unfolded-io>
      <math|-2*<space|0.17em>x*y<rsup|2>+<frac|1|2>*<space|0.17em>x*y-y<rsup|2>+2*<space|0.17em>y>
    </unfolded-io>

    <\unfolded-io>
      \<gtr\>\<gtr\>\<gtr\>\ 
    <|unfolded-io>
      expand(S1)
    <|unfolded-io>
      <math|-<frac|1|2>*<space|0.17em>x*y<rsup|3>-y<rsup|4>-<frac|1|2>*<space|0.17em>x<rsup|3>+<frac|1|2>*<space|0.17em>x<rsup|2>*y+x*y<rsup|2>+2*<space|0.17em>y<rsup|3>-<frac|1|2>*<space|0.17em>x<rsup|2>>
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
    <associate|page-medium|paper>
  </collection>
</initial>