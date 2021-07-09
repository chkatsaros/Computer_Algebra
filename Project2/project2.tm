<TeXmacs|1.99.11>

<style|generic>

<\body>
  \<#39F\>\<#3BC\>\<#3AC\>\<#3B4\>\<#3B1\>: 31

  \<#395\>\<#3C5\>\<#3C3\>\<#3C4\>\<#3AC\>\<#3B8\>\<#3B9\>\<#3BF\>\<#3C2\>
  \<#3A4\>\<#3C3\>\<#3B9\>\<#3C4\>\<#3C3\>\<#3CC\>\<#3C0\>\<#3BF\>\<#3C5\>\<#3BB\>\<#3BF\>\<#3C2\>
  2283

  \<#395\>\<#3BB\>\<#3B2\>\<#3AF\>\<#3C1\>\<#3B1\>
  \<#39C\>\<#3AD\>\<#3BC\>\<#3BF\>\<#3C5\> 2300

  \<#3A7\>\<#3C1\>\<#3AE\>\<#3C3\>\<#3C4\>\<#3BF\>\<#3C2\>
  \<#39A\>\<#3B1\>\<#3C4\>\<#3C3\>\<#3B1\>\<#3C1\>\<#3CC\>\<#3C2\> 2240

  <\session|python|default>
    <\input>
      \<gtr\>\<gtr\>\<gtr\>\ 
    <|input>
      "Askisi 2 - trigwnopoisi"

      from sympy.polys.subresultants_qq_zz import *

      from sympy import *

      \;

      x = symbols('x')

      "f = x**3 +3*x**2 -7*x + 7"

      f = x**4 - x**3 +x**2 -7*x +7

      g = 4*x**3 - 3*x**2 +2*x -7

      "g = 3*x**2 + 6*x -7"

      \;

      def pivot(m,l,c,k):

      \ \ \ \ r1=0

      \ \ \ \ rows,columns = m.shape;

      \ \ \ \ premultiplier = m[l,c];

      \ \ \ \ for i in range(-k,rows-1):

      \ \ \ \ \ \ \ \ if (m[i + 1,c] != 0):

      \ \ \ \ \ \ \ \ \ \ \ \ multiplier = m[i+1,c] / m[l,c];

      \ \ \ \ \ \ \ \ \ \ \ \ for j in range(0,columns):

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ m[i+1,j] -= multiplier*m[l,j];

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ m[i+1,j] = m[i+1,j] * premultiplier;

      \ \ \ \ for i in range(0,columns):

      \ \ \ \ \ \ \ \ r1 += m[rows-1,i]*x**(columns-1-i);

      \ \ \ \ return(m,r1)

      \ \ \ \ 

      last = 0

      r = []

      r.append(f)

      r.append(g)

      def euclid_triang(f,g,x):

      \ \ \ \ global last

      \ \ \ \ global r

      \ \ \ \ temp = g

      \ \ \ \ m = zeros(3,degree(f)+1)

      \ \ \ \ deg = degree(f)

      \ \ \ \ for j in range(0,deg-1):

      \ \ \ \ \ \ \ \ m[0,j] = LC(g)

      \ \ \ \ \ \ \ \ g -= LT(g)

      \ \ \ \ m[0,j+1] = g

      \ \ \ \ m[1,0] = 0

      \ \ \ \ for j in range(1,deg+1):

      \ \ \ \ \ \ \ \ m[1,j] = m[0,j-1]

      \ \ \ \ for j in range(0,deg):

      \ \ \ \ \ \ \ \ m[2,j] = LC(f)

      \ \ \ \ \ \ \ \ f -= LT(f)

      \ \ \ \ m[2,j+1] = f

      \ \ \ \ for i in range(0,2):

      \ \ \ \ \ \ \ \ m,r1 = pivot(m,i,i,-i)

      \ \ \ \ \ \ \ 

      \ \ \ \ g = r1

      \ \ \ \ f = temp

      \ \ \ \ r.append(r1)

      \ \ \ \ if (degree(r1) != 0):

      \ \ \ \ \ \ \ \ euclid_triang(f,g,x)

      \ \ \ \ if (last == 0):

      \ \ \ \ \ \ \ \ last = 1

      \ \ \ \ \ \ \ \ print(r)

      "\<Omicron\>\<pi\>\<omega\>\<varsigma\>
      \<beta\>\<lambda\>\<#3AD\>\<pi\>\<omicron\>\<upsilon\>\<mu\>\<varepsilon\>
      \<pi\>\<alpha\>\<rho\>\<alpha\>\<#3BA\>\<#3AC\>\<tau\>\<omega\>
      \<alpha\>\<pi\>\<#3CC\> \<tau\>\<iota\>\<varsigma\>
      \<varepsilon\>\<kappa\>\<tau\>\<varepsilon\>\<lambda\>\<#3AD\>\<sigma\>\<varepsilon\>\<iota\>\<varsigma\>
      \<tau\>\<omega\>\<nu\> \<delta\>\<#3CD\>\<omicron\>
      \<zeta\>\<varepsilon\>\<upsilon\>\<gamma\>\<alpha\>\<rho\>\<iota\>\<#3CE\>\<nu\>
      \<pi\>\<omicron\>\<lambda\>\<upsilon\>\<omega\>\<nu\>\<#3CD\>\<mu\>\<omega\>\<nu\>
      \<alpha\>\<pi\>\<#3CC\> \<tau\>\<eta\>\<nu\>
      \<delta\>\<iota\>\<kappa\>\<iota\>\<#3AC\> \<mu\>\<alpha\>\<varsigma\>
      euclid_triang \<kappa\>\<alpha\>\<iota\> \<tau\>\<eta\>\<nu\>
      euclid_amv \<tau\>\<omicron\>\<upsilon\> sympy,\<eta\>
      \<delta\>\<iota\>\<alpha\>\<phi\>\<omicron\>\<rho\>\<#3AC\>
      \<varepsilon\>\<#3AF\>\<nu\>\<alpha\>\<iota\>
      \<sigma\>\<tau\>\<omicron\> \<#3CC\>\<tau\>\<iota\>
      \<varepsilon\>\<nu\>\<omega\> \<pi\>\<rho\>\<omicron\>\<pi\>\<omicron\>\<lambda\>\<lambda\>\<alpha\>\<pi\>\<lambda\>\<alpha\>\<sigma\>\<iota\>\<#3AC\>\<zeta\>\<omicron\>\<upsilon\>\<mu\>\<varepsilon\>
      \<sigma\>\<varepsilon\> \<kappa\>\<#3AC\>\<theta\>\<varepsilon\>
      \<kappa\>\<lambda\>\<#3AE\>\<sigma\>\<eta\> \<tau\>\<eta\>\<varsigma\>
      pivot \<mu\>\<varepsilon\> \<kappa\>\<alpha\>\<tau\>\<#3AC\>\<lambda\>\<lambda\>\<eta\>\<lambda\>\<omicron\>
      \<pi\>\<omicron\>\<lambda\>\<lambda\>\<alpha\>\<pi\>\<lambda\>\<alpha\>\<sigma\>\<iota\>\<alpha\>\<sigma\>\<tau\>\<#3AE\>
      \<gamma\>\<iota\>\<alpha\> \<nu\>\<alpha\> \<mu\>\<eta\>\<nu\>
      \<#3AD\>\<chi\>\<omicron\>\<upsilon\>\<mu\>\<varepsilon\>
      \<rho\>\<eta\>\<tau\>\<omicron\>\<#3CD\>\<varsigma\>,\<delta\>\<varepsilon\>\<nu\>
      \<delta\>\<iota\>\<alpha\>\<iota\>\<rho\>\<#3CC\>\<upsilon\>\<mu\>\<varepsilon\>
      \<sigma\>\<tau\>\<omicron\> \<tau\>\<#3AD\>\<lambda\>\<omicron\>\<varsigma\>
      \<tau\>\<omicron\>\<nu\> \<kappa\>\<#3AC\>\<theta\>\<varepsilon\>
      \<#3CC\>\<rho\>\<omicron\> \<mu\>\<varepsilon\> \<tau\>\<omicron\>
      \<alpha\>\<nu\>\<tau\>\<#3AF\>\<sigma\>\<tau\>\<omicron\>\<iota\>\<chi\>\<omicron\>
      \<beta\>i.(allazoume tin f,g sinartiseis mesa ston arxiko kwdika)"

      \ 
    </input>

    \;

    <\unfolded-io>
      \<gtr\>\<gtr\>\<gtr\>\ 
    <|unfolded-io>
      euclid_triang(f,g,x)
    <|unfolded-io>
      [x**3 + 3*x**2 - 7*x + 7, 3*x**2 + 6*x - 7, 84 - 60*x, 26208]
    </unfolded-io>

    <\unfolded-io>
      \<gtr\>\<gtr\>\<gtr\>\ 
    <|unfolded-io>
      euclid_triang(f,g,x)
    <|unfolded-io>
      [x**4 - x**3 + x**2 - 7*x + 7, 4*x**3 - 3*x**2 + 2*x - 7, 5*x**2 - 82*x
      + 105, 23616*x - 33040, 35974400]
    </unfolded-io>

    <\unfolded-io>
      \<gtr\>\<gtr\>\<gtr\>\ 
    <|unfolded-io>
      euclid_amv(f,g,x)
    <|unfolded-io>
      [x**3 + 3*x**2 - 7*x + 7, 3*x**2 + 6*x - 7, 84 - 60*x, 2912]
    </unfolded-io>

    <\unfolded-io>
      \<gtr\>\<gtr\>\<gtr\>\ 
    <|unfolded-io>
      euclid_amv(f,g,x)
    <|unfolded-io>
      [x**4 - x**3 + x**2 - 7*x + 7, 4*x**3 - 3*x**2 + 2*x - 7, 5*x**2 - 82*x
      + 105, 1476*x - 2065, 5621]
    </unfolded-io>

    <\input>
      \<gtr\>\<gtr\>\<gtr\>\ 
    <|input>
      \;

      \;

      \;

      \ 
    </input>

    <\input>
      \<gtr\>\<gtr\>\<gtr\>\ 
    <|input>
      "Askisi 3 - sylvester 1,2 Epilogi mesw argument"

      from sympy.polys.subresultants_qq_zz import *

      from sympy import *

      \;

      x = symbols('x')

      f = x**3 + 3*x**2 -7*x +7

      g = 3*x**2 + 6*x - 7

      h = x**8 + x**6 -3*x**4 - 3*x**3 + 8*x**2 +2*x -5 \ 

      q = 3*x**6 +5*x**4 - 4*x**2 - 9*x +21

      \;

      \;

      def sylvester(f,g,x,arg):

      \ \ \ \ 

      \ \ \ \ degg = degree(g)

      \ \ \ \ degf = degree(f)

      \ \ \ \ results = [f,g]

      \ \ \ \ 

      \ \ \ \ if (arg == 1):

      \ \ \ \ \ \ \ \ rows = degg+degf

      \ \ \ \ \ \ \ \ cols = rows

      \ \ \ \ \ \ \ \ m1 = zeros(rows,cols)\ 

      \ \ \ \ \ \ \ \ for i in range(0,degg):

      \ \ \ \ \ \ \ \ \ \ \ \ temp1 = f

      \ \ \ \ \ \ \ \ \ \ \ \ for j in range(0,degf):

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ if (LM(temp1) == x**(degf-j)):

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ m1[i,j+i] = LC(temp1)

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ temp1 -= LT(temp1)

      \ \ \ \ \ \ \ \ \ \ \ \ m1[i,j+i+1] = temp1

      \ \ \ \ \ \ \ \ for i in range(degg,cols):

      \ \ \ \ \ \ \ \ \ \ \ \ \ temp2 = g

      \ \ \ \ \ \ \ \ \ \ \ \ \ for j in range(0,degg):

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ if (degree(temp2) != 0):

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ if (LM(temp2) ==
      x**(degg-j)):

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ m1[i,j+i-degg] =
      LC(temp2)

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ temp2 -= LT(temp2)

      \ \ \ \ \ \ \ \ \ \ \ \ \ m1[i,j+i-degg+1] = temp2

      \ \ \ \ \ \ \ \ check = degg

      \ \ \ \ \ \ \ \ 

      \ \ \ \ \ \ \ \ 

      \ \ \ \ \ \ \ \ while True:

      \ \ \ \ \ \ \ \ \ \ \ \ if (check \<less\>= 1):

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ break

      \ \ \ \ \ \ \ \ \ \ \ \ temp = m1[:,:]

      \ \ \ \ \ \ \ \ \ \ \ \ for i in range(rows-check+1,cols):

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ temp.row_del(rows - check+1)

      \ \ \ \ \ \ \ \ \ \ \ \ for i in range (degg - check + 1,degg):

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ temp.row_del(degg - check+1)

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 

      \ \ \ \ \ \ \ \ \ \ \ \ temp_results = []

      \ \ \ \ \ \ \ \ \ \ \ \ p = 0

      \ \ \ \ \ \ \ \ \ \ \ \ while (p \<less\>= check - 1):

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ temp_results.append(temp[:, 0 :
      temp.rows].det())

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ temp.col_swap(temp.rows -1, temp.rows +
      p)

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ p +=1

      \ \ \ \ \ \ \ \ \ \ \ \ check -= 1

      \ \ \ \ \ \ \ \ \ \ \ \ if (degree((Poly(temp_results,x).as_expr())) !=
      degree(results[-1])):

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ results.append(Poly(temp_results,x).as_expr())

      \ \ \ \ \ \ \ \ \ \ \ \ 

      \ \ \ \ \ \ \ \ results.append(m1.det())

      \ \ \ \ \ \ \ \ print(results)

      \ \ \ \ "sylvester 2"\ 

      \ \ \ \ if (arg == 2):

      \ \ \ \ \ \ \ \ rows = 2*degf

      \ \ \ \ \ \ \ \ cols = rows

      \ \ \ \ \ \ \ \ m1 = zeros(rows,cols)\ 

      \ \ \ \ \ \ \ \ for i in range(0,rows,2):

      \ \ \ \ \ \ \ \ \ \ \ \ temp1 = f

      \ \ \ \ \ \ \ \ \ \ \ \ temp2 = g

      \ \ \ \ \ \ \ \ \ \ \ \ for j in range(0,cols):

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ if (degree(temp1) \<gtr\> 0):

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ if (LM(temp1) == x**(degf-j)):

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ m1[i,j+i/2] = LC(temp1)

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ temp1 -= LT(temp1)

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ elif (temp1 !=0):

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ m1[i,j+i/2] = temp1

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ temp1 = 0

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ if (degree(temp2) \<gtr\> 0):

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ if (LM(temp2) == x**(degg-j)):\ 

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ m1[i+1,j+i/2+degf-degg]
      = LC(temp2)

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ temp2 -= LT(temp2)

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ elif (temp2!=0): \ \ \ \ \ \ \ 

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ m1[i+1,j+i/2 + degf- degg] =
      temp2

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ temp2 = 0

      \ \ \ \ \ \ \ \ check = degg

      \ \ \ \ \ \ \ \ 

      \ \ \ \ \ \ \ \ while True:

      \ \ \ \ \ \ \ \ \ \ \ \ if (check\<less\>=1):

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ break

      \ \ \ \ \ \ \ \ \ \ \ \ temp = zeros(rows-2*check+2,cols)

      \ \ \ \ \ \ \ \ \ \ \ \ for i in range (0,rows-2*check+2):

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ for j in range (0,cols):

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ temp[i,j] = m1[i,j]

      \ \ \ \ \ \ \ \ \ \ \ \ 

      \ \ \ \ \ \ \ \ \ \ \ \ temp_results = []

      \ \ \ \ \ \ \ \ \ \ \ \ p = 0

      \ \ \ \ \ \ \ \ \ \ \ \ while (p \<less\>= check - 1):

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ temp_results.append(temp[:, 0 :
      temp.rows].det())

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ temp.col_swap(temp.rows -1, temp.rows +
      p)

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ p +=1

      \ \ \ \ \ \ \ \ \ \ \ \ check -= 1

      \ \ \ \ \ \ \ \ \ \ \ \ if (degree((Poly(temp_results,x).as_expr())) !=
      degree(results[-1])):

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ results.append(Poly(temp_results,x).as_expr())

      \ \ \ \ \ \ \ \ results.append(m1.det())

      \ \ \ \ \ \ \ \ print(results)

      \ \ \ \ "paratiroume oti me tin xrisi tou sylvester2 ta prosima einai
      anti8eta apo auta tis amv.Ston sylvester1 allazoun mono ta prosima twn
      poliwnimwn pou arxika eixan arnitiko leading coefficient."\ 

      \;
    </input>

    <\unfolded-io>
      \<gtr\>\<gtr\>\<gtr\>\ 
    <|unfolded-io>
      sylvester(f,g,x,1)
    <|unfolded-io>
      [x**3 + 3*x**2 - 7*x + 7, 3*x**2 + 6*x - 7, 84 - 60*x, 2912]
    </unfolded-io>

    <\unfolded-io>
      \<gtr\>\<gtr\>\<gtr\>\ 
    <|unfolded-io>
      sylvester(h,q,x,1)
    <|unfolded-io>
      [x**8 + x**6 - 3*x**4 - 3*x**3 + 8*x**2 + 2*x - 5, 3*x**6 + 5*x**4 -
      4*x**2 - 9*x + 21, 15*x**4 - 3*x**2 + 9, 65*x**2 + 125*x - 245, 9326*x
      - 12300, 260708]
    </unfolded-io>

    <\unfolded-io>
      \<gtr\>\<gtr\>\<gtr\>\ 
    <|unfolded-io>
      sylvester(f,g,x,2)
    <|unfolded-io>
      [x**3 + 3*x**2 - 7*x + 7, 3*x**2 + 6*x - 7, 60*x - 84, -2912]
    </unfolded-io>

    <\unfolded-io>
      \<gtr\>\<gtr\>\<gtr\>\ 
    <|unfolded-io>
      sylvester(h,q,x,2)
    <|unfolded-io>
      [x**8 + x**6 - 3*x**4 - 3*x**3 + 8*x**2 + 2*x - 5, 3*x**6 + 5*x**4 -
      4*x**2 - 9*x + 21, -15*x**4 + 3*x**2 - 9, 65*x**2 + 125*x - 245, 12300
      - 9326*x, 260708]
    </unfolded-io>

    <\unfolded-io>
      \<gtr\>\<gtr\>\<gtr\>\ 
    <|unfolded-io>
      euclid_amv(f,g,x)
    <|unfolded-io>
      [x**3 + 3*x**2 - 7*x + 7, 3*x**2 + 6*x - 7, 84 - 60*x, 2912]
    </unfolded-io>

    <\unfolded-io>
      \<gtr\>\<gtr\>\<gtr\>\ 
    <|unfolded-io>
      euclid_amv(h,q,x)
    <|unfolded-io>
      [x**8 + x**6 - 3*x**4 - 3*x**3 + 8*x**2 + 2*x - 5, 3*x**6 + 5*x**4 -
      4*x**2 - 9*x + 21, -15*x**4 + 3*x**2 - 9, -65*x**2 - 125*x + 245,
      9326*x - 12300, -260708]
    </unfolded-io>

    <\input>
      \<gtr\>\<gtr\>\<gtr\>\ 
    <|input>
      \;

      \;

      \;
    </input>

    <\unfolded-io>
      \<gtr\>\<gtr\>\<gtr\>\ 
    <|unfolded-io>
      "Askisi 4 \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ Erwtisi
      1: Blepoume oti stis tropopoiimenes akolouthies, den mporoume na exoume
      leading coefficient arnitiko.Opote otan auto einai
      arnitiko,pollaplasiazei to poliwnimo me -1 kai exoume anti8eta prosima
      sto sigkekrimeno poliwnimo apo ti stin kanoniki eukleideia akolouthia.
      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ Erwtisi 2:H euclid_sylv1 allazei ta
      prosima kai leitourgei opws oi tropopoimenes.Wstoso den isxyei to idio
      gia tin euclid_sylv2, tis opoias ta poliwnima exoun prsima opws oi
      kanonikes eukeleideies akolouthies(mporei to leading coefficient na
      einai arnitiko.)"
    <|unfolded-io>
      \;
    </unfolded-io>

    <\input>
      \<gtr\>\<gtr\>\<gtr\>\ 
    <|input>
      \;

      \;

      \;
    </input>

    <\input>
      \<gtr\>\<gtr\>\<gtr\>\ 
    <|input>
      "Askisi 5- Euresi rizwn me theorima sturm"

      from sympy.polys.subresultants_qq_zz import *

      from sympy import *

      \;

      x = symbols('x')

      f = x**3 - 7*x + 7

      g = 32*x**6 - 48*x**4 + 18*x**2 - 1

      \;

      def cauchy_upper_bound(f,x):

      \ \ \ \ c = zeros(1,degree(f)+1)

      \ \ \ \ l = 0

      \ \ \ \ 

      \ \ \ \ degf = degree(f)

      \ \ \ \ for i in range(0,degf):

      \ \ \ \ \ \ \ \ if (degree(f) \<gtr\> 0):\ 

      \ \ \ \ \ \ \ \ \ \ \ \ if (LM(f) == x**(degf-i)):\ 

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ c[0,i] = LC(f)

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ if (LC(f) \<less\> 0):

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ l += 1

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ f -= LT(f)

      \ \ \ \ c[0,i+1] = f

      \ \ \ \ if (f\<less\>0):

      \ \ \ \ \ \ \ \ l += 1

      \ \ \ \ 

      \ \ \ \ b = 0

      \ \ \ \ maxb = 0

      \ \ \ \ for i in range(0,degf):

      \ \ \ \ \ \ \ \ if (c[i]\<less\>0):

      \ \ \ \ \ \ \ \ \ \ \ \ b = (-c[i]*l/c[0])**(1./i)\ 

      \ \ \ \ \ \ \ \ if (maxb\<less\>b):

      \ \ \ \ \ \ \ \ \ \ \ \ maxb = b

      \ \ \ \ 

      \ \ \ \ maxb = int(round(maxb))

      \ \ \ \ return (maxb)

      \ \ \ \ 

      def sign_var(num_list):

      \ \ \ \ 

      \ \ \ \ v = 0

      \ \ \ \ last = num_list[0]

      \ \ \ \ for i in range(0,len(num_list)-1):

      \ \ \ \ \ \ \ \ if (last*num_list[i+1]\<less\>0):

      \ \ \ \ \ \ \ \ \ \ \ \ v+=1

      \ \ \ \ \ \ \ \ \ \ \ \ last = num_list[i+1]

      \ \ \ \ \ \ \ \ \ \ \ \ 

      \ \ \ \ return (v)

      \;

      def roots(f,l,r):

      \ \ \ \ root_isolation_intervals = []

      \ \ \ \ degf = degree(f)

      \ \ \ \ "f = square_free_factors(f,x)"

      \ \ \ \ seq = sturm(f)

      \ \ \ \ sleft = []

      \ \ \ \ sright = []

      \ \ \ \ 

      \ \ \ \ for i in range(0,degf + 1):

      \ \ \ \ \ \ \ \ sleft.append(seq[i].subs(x,l))

      \ \ \ \ \ \ \ \ sright.append(seq[i].subs(x,r))

      \ \ \ \ 

      \ \ \ \ ro = sign_var(sleft) - sign_var(sright)

      \ \ \ \ 

      \ \ \ \ if (ro == 0):

      \ \ \ \ \ \ \ \ return (root_isolation_intervals)

      \ \ \ \ elif (ro == 1):

      \ \ \ \ \ \ \ \ root_isolation_intervals.append([l,r])

      \ \ \ \ \ \ \ \ return (root_isolation_intervals)

      \ \ \ \ else:

      \ \ \ \ \ \ \ \ mp = float((l+r)/float(2))

      \ \ \ \ \ \ \ \ left_intervals = roots(f,l,mp)

      \ \ \ \ \ \ \ \ for i in range(0,len(left_intervals)):

      \ \ \ \ \ \ \ \ \ \ \ \ root_isolation_intervals.append(left_intervals[i])

      \ \ \ \ \ \ \ \ \ \ \ \ 

      \ \ \ \ \ \ \ \ right_intervals = roots(f,mp,r)

      \ \ \ \ \ \ \ \ for i in range(0,len(right_intervals)):

      \ \ \ \ \ \ \ \ \ \ \ \ root_isolation_intervals.append(right_intervals[i])

      \ \ \ \ \ \ \ \ return (root_isolation_intervals)\ 

      \;

      def square_free_factors(f,x):

      \ \ \ \ sqfreefactorList = []

      \ \ \ \ s,h,r = gcdex(f,f.diff(x))

      \ \ \ \ t = div(p,r,domain=ZZ)

      \ \ \ \ 

      \ \ \ \ while (degree(r)\<gtr\>0):

      \ \ \ \ \ \ \ \ s,h,v = gcdex(r,t)

      \ \ \ \ \ \ \ \ sqfreefactorList.append(div(t,v,domain=ZZ))

      \ \ \ \ \ \ \ \ r = div(r,v,domain=ZZ)

      \ \ \ \ \ \ \ \ t = v

      \ \ \ \ sqfreefactorList.append(t)

      \ \ \ \ 

      \ \ \ \ print (sqfreefactorList)

      \ \ \ \ 

      \ \ \ \ mult = 1

      \ \ \ \ for i in range(1,len(sqfreefactorList)):

      \ \ \ \ \ \ \ \ mult = mult*(sqfreefactorList[i]**i)

      \ \ \ \ 

      \ \ \ \ return (mult)

      \;

      def sturm_isolation(f,x):

      \ \ \ \ negative = f.subs(x,-x)

      \ \ \ \ if (LC(negative) \<less\> 0):

      \ \ \ \ \ \ \ \ negative = -negative

      \ \ \ \ root_intervals = roots(f, 0, cauchy_upper_bound(f,x))

      \ \ \ \ neg_root_intervals = roots(negative, 0,
      cauchy_upper_bound(negative,x))

      \ \ \ \ for i in neg_root_intervals:

      \ \ \ \ \ \ \ \ root_intervals.insert(0, [-i[1], -i[0]])

      \ \ \ \ for i in range(0,len(root_intervals)-1):

      \ \ \ \ \ \ \ \ print (refine_root(f,root_intervals[i][0],root_intervals[i+1][0],eps=1e-7))

      \ \ \ \ return (root_intervals)
    </input>

    <\unfolded-io>
      \<gtr\>\<gtr\>\<gtr\>\ 
    <|unfolded-io>
      sturm_isolation(f,x)
    <|unfolded-io>
      (-3802/1247, -58152/19073)

      (13341/9832, 3532/2603)

      [[-4, 0], [0, 1.5], [1.5, 3]]
    </unfolded-io>

    <\unfolded-io>
      \<gtr\>\<gtr\>\<gtr\>\ 
    <|unfolded-io>
      sturm_isolation(g,x)
    <|unfolded-io>
      (-14429/14938, -13777/14263)

      (-3363/4756, -2378/3363)

      (-2722/10517, -675/2608)

      (675/2608, 2722/10517)

      (2378/3363, 3363/4756)

      [[-1.0, -0.75], [-0.75, -0.5], [-0.5, 0], [0, 0.5], [0.5, 0.75], [0.75,
      1.0]]
    </unfolded-io>

    <\input>
      \<gtr\>\<gtr\>\<gtr\>\ 
    <|input>
      \;
    </input>
  </session>
</body>

<initial|<\collection>
</collection>>