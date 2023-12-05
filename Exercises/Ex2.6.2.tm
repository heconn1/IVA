<TeXmacs|1.99.20>

<style|<tuple|generic|macaulay2>>

<\body>
  <\session|macaulay2|default>
    <\output>
      <\errput>
        Macaulay2, version 1.15

        --loading configuration for package "FourTiTwo" from file
        /u03/heconn/.Macaulay2/init-FourTiTwo.m2

        --loading configuration for package "Topcom" from file
        /u03/heconn/.Macaulay2/init-Topcom.m2

        with packages: ConwayPolynomials, Elimination, IntegralClosure,
        InverseSystems,

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ LLLBases,
        PrimaryDecomposition, ReesAlgebra, TangentCone,

        \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ Truncations
      </errput>
    </output>

    <\input>
      i1 :\ 
    <|input>
      load("div.m2")
    </input>

    <\unfolded-io>
      i3 :\ 
    <|unfolded-io>
      R=QQ[x,y,z]
    <|unfolded-io>
      <html-text|<math|<tabular|<tformat|<cwith|1|-1|1|1|cell-halign|r>|<cwith|1|-1|2|2|cell-halign|c>|<cwith|1|-1|3|3|cell-halign|l>|<table|<row|<cell|<with|color|red|o3>>|<cell|<with|color|red|=>>|<cell|R>>|<row|<cell|>|<cell|>|<cell|>>|<row|<cell|<with|color|red|o3>>|<cell|<with|color|red|:>>|<cell|<with|mode|text|PolynomialRing>>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      i4 :\ 
    <|unfolded-io>
      div(x*y, [x+z, y-z], 0) \ -- 0 for Lex
    <|unfolded-io>
      quotients = {y, -z}

      <html-text|<math|<tabular|<tformat|<cwith|1|-1|1|1|cell-halign|r>|<cwith|1|-1|2|2|cell-halign|c>|<cwith|1|-1|3|3|cell-halign|l>|<table|<row|<cell|<with|color|red|o4>>|<cell|<with|color|red|=>>|<cell|-z<rsup|2>>>|<row|<cell|>|<cell|>|<cell|>>|<row|<cell|<with|color|red|o4>>|<cell|<with|color|red|:>>|<cell|\<bbb-Q\><around*|[|x,y,z,w|]>>>>>>>>
    </unfolded-io>

    <\unfolded-io>
      i5 :\ 
    <|unfolded-io>
      div(x*y, [y-z, x+z], 0)
    <|unfolded-io>
      quotients = {x, z}

      <html-text|<math|<tabular|<tformat|<cwith|1|-1|1|1|cell-halign|r>|<cwith|1|-1|2|2|cell-halign|c>|<cwith|1|-1|3|3|cell-halign|l>|<table|<row|<cell|<with|color|red|o5>>|<cell|<with|color|red|=>>|<cell|-z<rsup|2>>>|<row|<cell|>|<cell|>|<cell|>>|<row|<cell|<with|color|red|o5>>|<cell|<with|color|red|:>>|<cell|\<bbb-Q\><around*|[|x,y,z,w|]>>>>>>>>
    </unfolded-io>

    \;
  </session>

  So the remainders are the same, but the quotients are different.

  Since the remainder is not 0, the polynomial <math|x*y> is not in the
  ideal.

  \;
</body>

<\initial>
  <\collection>
    <associate|font-base-size|14>
    <associate|info-flag|minimal>
    <associate|page-medium|paper>
  </collection>
</initial>