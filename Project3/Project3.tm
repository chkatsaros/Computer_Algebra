<TeXmacs|1.99.11>

<style|generic>

<\body>
  <\session|python|default>
    <\input>
      \<gtr\>\<gtr\>\<gtr\>\ 
    <|input>
      import math

      import sympy

      from sympy import *

      \;

      list1 = []

      \;

      def cf(a,b):

      \ \ \ \ global list1

      \ \ \ \ if (b \<gtr\> a):

      \ \ \ \ \ \ \ \ return cf(b, a)

      \;

      \ \ \ \ list1.append(ZZ.quo(a,b))

      \ \ \ \ if (ZZ.rem(a,b) == 0):

      \;

      \ \ \ \ \ \ \ \ str = ""

      \ \ \ \ \ \ \ \ for i in range (0,len(list1)):

      \ \ \ \ \ \ \ \ \ \ \ \ if (i==len(list1)-1):

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ str += "{}" .format(list1[i])

      \ \ \ \ \ \ \ \ \ \ \ \ else:

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ str += "{} + 1/(" .format(list1[i])

      \ \ \ \ \ \ \ \ for i in range (0,len(list1)-1):

      \ \ \ \ \ \ \ \ \ \ \ \ str += ")"

      \ \ \ \ \ \ \ \ print (list1)

      \ \ \ \ \ \ \ \ print (str)

      \ \ \ \ \ \ \ \ return (str)

      \;

      \ \ \ \ return cf(b, ZZ.rem(a,b))

      \ \ \ \ 
    </input>

    <\unfolded-io>
      \<gtr\>\<gtr\>\<gtr\>\ 
    <|unfolded-io>
      cf(13,21)
    <|unfolded-io>
      [1, 1, 1, 1, 1, 2]

      1 + 1/(1 + 1/(1 + 1/(1 + 1/(1 + 1/(2)))))

      1 + 1/(1 + 1/(1 + 1/(1 + 1/(1 + 1/(2)))))
    </unfolded-io>

    <\input>
      \<gtr\>\<gtr\>\<gtr\>\ 
    <|input>
      import math

      import sympy

      from sympy import *

      \;

      list2 = []

      \;

      def qcf(a,n):

      \ \ \ \ global list2

      \ \ \ \ c = math.floor(a)

      \ \ \ \ b = a-c

      \;

      \ \ \ \ if (b==0 or n==0):

      \;

      \ \ \ \ \ \ \ \ str = ""

      \ \ \ \ \ \ \ \ for i in range (0,len(list2)):

      \ \ \ \ \ \ \ \ \ \ \ \ if (i==len(list2)-1):

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ str += "{}" .format(list2[i])

      \ \ \ \ \ \ \ \ \ \ \ \ else:

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ str += "{} + 1/(" .format(list2[i])

      \ \ \ \ \ \ \ \ for i in range (0,len(list2)-1):

      \ \ \ \ \ \ \ \ \ \ \ \ str += ")"

      \ \ \ \ \ \ \ \ print (list2)

      \ \ \ \ \ \ \ \ print (str)

      \ \ \ \ \ \ \ \ return (str)

      \;

      \ \ \ \ list2.append(int(c))

      \;

      \ \ \ \ ai = 1/b

      \ \ \ \ qcf(ai,n-1)
    </input>

    <\unfolded-io>
      \<gtr\>\<gtr\>\<gtr\>\ 
    <|unfolded-io>
      qcf(pi,13)
    <|unfolded-io>
      [3, 7, 15, 1, 292, 1, 1, 1, 2, 1, 3, 1, 14]

      3 + 1/(7 + 1/(15 + 1/(1 + 1/(292 + 1/(1 + 1/(1 + 1/(1 + 1/(2 + 1/(1 +
      1/(3 + 1/(1 + 1/(14))))))))))))
    </unfolded-io>

    <\input>
      \<gtr\>\<gtr\>\<gtr\>\ 
    <|input>
      import math

      import sympy

      from sympy import *

      x = symbols('x')

      \;

      def local_max(p,x):

      \ \ \ \ ub = 0

      \ \ \ \ temp = 0

      \ \ \ \ p = expand(p)

      \ \ \ \ j = degree(p) + 1

      \ \ \ \ list3 = []

      \ \ \ \ for i in range (degree(p),-1,-1):

      \ \ \ \ \ \ \ \ list3.append(p.coeff(x,i))

      \ \ \ \ 

      \ \ \ 

      \ \ \ \ list3.reverse()

      \ \ \ \ 

      \ \ \ \ if (j\<less\>=1):

      \ \ \ \ \ \ \ \ print (ub)

      \ \ \ \ \ \ \ \ return ub

      \ \ \ \ t=1

      \ \ \ \ for i in range (len(list3),0,-1):

      \ \ \ \ \ \ \ \ if (list3[i-1]\<less\>0):

      \ \ \ \ \ \ \ \ \ \ \ \ temp=(2**t*((-1)*list3[i-1]/list3[j-1])**1/(j-i))

      \ \ \ \ \ \ \ \ \ \ \ \ if (temp\<gtr\>ub):

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ ub = temp

      \ \ \ \ \ \ \ \ \ \ \ \ t+=1

      \ \ \ \ \ \ \ \ else:

      \ \ \ \ \ \ \ \ \ \ \ \ if (list3[i-1]\<gtr\>list3[j-1]):

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ j=i

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ t=1

      \ \ \ \ print ("The upper boundary of the possitive roots is: ",ub)

      \ \ \ \ return (ub)
    </input>

    <\unfolded-io>
      \<gtr\>\<gtr\>\<gtr\>\ 
    <|unfolded-io>
      local_max(x**3+10**100*x**2-10**100*x-1,x)
    <|unfolded-io>
      ('The upper boundary of the possitive roots is: ', 2)

      2
    </unfolded-io>

    <\input>
      \<gtr\>\<gtr\>\<gtr\>\ 
    <|input>
      import math

      import sympy

      x = symbols('x')

      \;

      def vca(p,x,a,b):

      \ \ \ \ global fin

      \ \ \ \ f = ((x+1)**degree(p))*p.subs(x,1/(x+1))

      \ \ \ \ f = expand(f)

      \ \ \ \ f = simplify(f)

      \ \ \ \ f = Poly(f,x)

      \ \ \ \ coeffs = f.all_coeffs()

      \ \ \ \ var = 0

      \ \ \ \ last = coeffs[0]

      \ \ \ \ for i in range(0,len(coeffs)-1):

      \ \ \ \ \ \ \ \ if (last*coeffs[i+1]\<less\>0):

      \ \ \ \ \ \ \ \ \ \ \ \ var+=1

      \ \ \ \ \ \ \ \ \ \ \ \ last = coeffs[i+1]

      \ \ \ \ 

      \ \ \ \ set1 = Interval(a,b)

      \;

      \ \ \ \ if (var == 0):

      \ \ \ \ \ \ \ \ print (())

      \ \ \ \ \ \ \ \ return (S.EmptySet)

      \ \ \ \ if (var == 1):

      \ \ \ \ \ \ \ \ print (set1)

      \ \ \ \ \ \ \ \ return (set1)

      \ \ \ \ \ \ \ \ 

      \ \ \ \ p0 = (2**degree(p))*p.subs(x,x/2)

      \ \ \ \ m = float((a+b))/2

      \ \ \ \ p1 = (2**degree(p))*p.subs(x,(x+1)/2)

      \ \ \ \ 

      \ \ \ \ if (p.subs(x,1/2)!=0):

      \ \ \ \ \ \ \ \ set1 = vca(p0,x,a,m).union(vca(p1,x,m,b))

      \ \ \ \ \ \ \ \ return (set1)

      \ \ \ \ else:

      \ \ \ \ \ \ \ \ set1 = (vca(p0,x,a,m).union(Interval(m,m))).union(vca(p1,x,m,b))

      \ \ \ \ \ \ \ \ return (set1) \ \ \ 

      \ \ \ \ \ 
    </input>

    <\unfolded-io>
      \<gtr\>\<gtr\>\<gtr\>\ 
    <|unfolded-io>
      vca(64*x**3-28*x +7,x,0,4)
    <|unfolded-io>
      ()

      Interval(1.00000000000000, 1.50000000000000)

      Interval(1.50000000000000, 2.00000000000000)

      ()

      Interval(1.00000000000000, 2.00000000000000)
    </unfolded-io>

    <\unfolded-io>
      \<gtr\>\<gtr\>\<gtr\>\ 
    <|unfolded-io>
      import math

      import sympy

      x = symbols('x')

      \;

      \;

      def var(p,m,x):

      \ \ \ \ print"Entering"

      \ \ \ \ f = expand(p)

      \ \ \ \ f = simplify(f)

      \ \ \ \ f = Poly(f,x)

      \ \ \ \ coeffs = f.all_coeffs()\ 

      \ \ \ \ 

      \ \ \ \ va = 0

      \ \ \ \ last = coeffs[0]

      \ \ \ \ for i in range(0,len(coeffs)-1):

      \ \ \ \ \ \ \ \ if (last*coeffs[i+1]\<less\>0):

      \ \ \ \ \ \ \ \ \ \ \ \ va+=1

      \ \ \ \ \ \ \ \ \ \ \ \ last = coeffs[i+1]

      \ \ \ \ if (va==0):

      \ \ \ \ \ \ \ \ print "ending"

      \ \ \ \ \ \ \ \ return(S.EmptySet)

      \ \ \ \ if (va==1):

      \ \ \ \ \ \ \ \ a = min(m.subs(x,0),m.subs(x,oo))

      \ \ \ \ \ \ \ \ b = max(m.subs(x,0),m.subs(x,oo))

      \ \ \ \ \ \ \ \ if (b == oo):

      \ \ \ \ \ \ \ \ \ \ \ \ print "ending2"

      \ \ \ \ \ \ \ \ \ \ \ \ b = local_max(p,x)

      \ \ \ \ \ \ \ \ return (Interval(a,b))

      \ \ \ \ 

      \ \ \ \ 

      \ \ \ 

      \ \ \ \ 

      \ \ \ \ #p = p.subs(x,1/x)

      \ \ \ \ #print p

      \ \ \ \ lb = 1/(local_max(p,x))

      \ \ \ \ #print "NOT HERE"

      \ \ \ \ if (lb\<gtr\>=1):

      \ \ \ \ \ \ \ \ p = p.subs(x,x+lb)

      \ \ \ \ \ \ \ \ m = m.subs(x,x+lb)

      \ \ \ \ 

      \ \ \ \ p01 = (x+1)**degree(p) * p.subs(x,1/(x+1))

      \ \ \ \ m01 = m.subs(x,1/(x+1))

      \ \ \ \ mroot = m.subs(x,1)

      \ \ \ \ p1_inf = p.subs(x,x+1)

      \ \ \ \ m1_inf = m.subs(x,x+1)

      \ \ \ \ if (p.subs(x,1) != 0):

      \ \ \ \ \ \ \ \ return (var(p01,m01,x)).union(var(p1_inf,m1_inf,x))

      \ \ \ \ else:

      \ \ \ \ \ \ \ \ return (var(p01,m01,x).union(Interval(m,m))).union(var(p1_inf,m1_inf,x))

      \ \ \ \ \ \ \ \ \ \ 

      \ \ \ \ 

      \;
    <|unfolded-io>
      <script-busy>
    </unfolded-io>

    <\unfolded-io>
      \<gtr\>\<gtr\>\<gtr\>\ 
    <|unfolded-io>
      var(64*x**7-112*x**5+56*x**3-7*x,x,x)
    <|unfolded-io>
      <script-busy>
    </unfolded-io>

    <\input>
      \<gtr\>\<gtr\>\<gtr\>\ 
    <|input>
      \;
    </input>

    <\input>
      \<gtr\>\<gtr\>\<gtr\>\ 
    <|input>
      \;
    </input>
  </session>
</body>

<initial|<\collection>
</collection>>