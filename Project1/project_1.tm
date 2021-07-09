<TeXmacs|1.99.11>

<style|generic>

<\body>
  Project 1

  \;

  \<#39C\>\<#395\>\<#39C\>\<#39F\>\<#3A5\>
  \<#395\>\<#39B\>\<#392\>\<#399\>\<#3A1\>\<#391\> 2300

  \<#3A4\>\<#3A3\>\<#399\>\<#3A4\>\<#3A3\>\<#39F\>\<#3A0\>\<#39F\>\<#3A5\>\<#39B\>\<#39F\>\<#3A3\>
  \<#395\>\<#3A5\>\<#3A3\>\<#3A4\>\<#391\>\<#398\>\<#399\>\<#39F\>\<#3A3\>
  2283

  \<#39A\>\<#391\>\<#3A4\>\<#3A3\>\<#391\>\<#3A1\>\<#39F\>\<#3A3\>
  \<#3A7\>\<#3A1\>\<#397\>\<#3A3\>\<#3A4\>\<#39F\>\<#3A3\> 2240

  \;

  <\session|python|default>
    <\input>
      \<gtr\>\<gtr\>\<gtr\>\ 
    <|input>
      def my_igcd1(a,b):

      \ \ \ \ if (b==0):

      \ \ \ \ \ \ \ \ print 'The gcd is: ',a,

      \ \ \ \ \ \ \ \ return(a)

      \ \ \ \ if(a\<gtr\>=b):

      \ \ \ \ \ \ \ \ my_igcd1(b, a - b)

      \ \ \ \ elif(b\<gtr\>a):

      \ \ \ \ \ \ \ \ my_igcd1(a,b -a)
    </input>

    <\unfolded-io>
      \<gtr\>\<gtr\>\<gtr\>\ 
    <|unfolded-io>
      my_igcd1(612,342)
    <|unfolded-io>
      The gcd is: \ 18
    </unfolded-io>

    <\input>
      \<gtr\>\<gtr\>\<gtr\>\ 
    <|input>
      from sympy import ZZ

      epanalipseis = 0

      gcd = 0

      print_once = 1

      def my_igcd2(a,b):

      \ \ \ \ global epanalipseis

      \ \ \ \ global gcd

      \ \ \ \ global print_once

      \ \ \ \ if (b!=0):

      \ \ \ \ \ \ \ \ epanalipseis+=1

      \ \ \ \ \ \ \ \ ypoloipo = int(ZZ.rem(a,b))

      \ \ \ \ \ \ \ \ phliko = int(ZZ.quo(a,b))

      \ \ \ \ \ \ \ \ if (ypoloipo\<less\>=abs(b)/2):

      \ \ \ \ \ \ \ \ \ \ \ \ a = b*phliko + ypoloipo

      \ \ \ \ \ \ \ \ else:

      \ \ \ \ \ \ \ \ \ \ \ \ if int(ZZ.quo(a,b)) \<gtr\> 0:

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ phliko+=1

      \ \ \ \ \ \ \ \ \ \ \ \ else:

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ phliko -= 1

      \ \ \ \ \ \ \ \ \ \ \ \ ypoloipo = -b*phliko + a

      \ \ \ \ \ \ \ \ gcd = b

      \ \ \ \ \ \ \ \ my_igcd2(b,ypoloipo)

      \ \ \ \ \ \ \ \ if print_once == 1:

      \ \ \ \ \ \ \ \ \ \ \ \ print 'Eginan',epanalipseis,'epanalipseis kai o
      gcd einai',abs(gcd)

      \ \ \ \ \ \ \ \ \ \ \ \ print_once = 0
    </input>

    <\unfolded-io>
      \<gtr\>\<gtr\>\<gtr\>\ 
    <|unfolded-io>
      my_igcd2(612,342)
    <|unfolded-io>
      Eginan 3 epanalipseis kai o gcd einai 18
    </unfolded-io>

    <\input>
      \<gtr\>\<gtr\>\<gtr\>\ 
    <|input>
      from sympy import *

      \;

      lista = []

      \;

      def eigcdl(a,b):

      \ \ \ \ global lista\ 

      \ \ \ \ if (b==0):

      \ \ \ \ \ \ \ \ print 'The gcd is:', a, 'and is equal to'

      \ \ \ \ \ \ \ \ length = len(lista) - 1

      \ \ \ \ \ \ \ \ for i in range(length):

      \ \ \ \ \ \ \ \ \ \ \ \ t,s,gcd = gcdex(int(lista[length]),int(lista[length-1]))

      \ \ \ \ \ \ \ \ \ \ \ \ print '(',t,') * (',int(lista[length]),') +
      (',s,') * (',int(lista[length-1]),')'

      \ \ \ \ \ \ \ \ \ \ \ \ length -= 1

      \ \ \ \ \ \ \ \ print 'So s is' ,s, 'and t is' ,t,'\\n'

      \ \ \ \ \ \ \ \ print gcd,'= (',int(lista[0]),'*',s,') +
      (',t,'*',int(lista[1]),')'

      \ \ \ \ if (b!=0):

      \ \ \ \ \ \ \ \ lista.append(a)

      \ \ \ \ \ \ \ \ print a,'=',ZZ.quo(a,b),'*',b,'+',ZZ.rem(a,b)

      \ \ \ \ \ \ \ \ return eigcdl(b,ZZ.rem(a,b))
    </input>

    <\input>
      \<gtr\>\<gtr\>\<gtr\>\ 
    <|input>
      \;
    </input>

    <\unfolded-io>
      \<gtr\>\<gtr\>\<gtr\>\ 
    <|unfolded-io>
      eigcdl(612,342)
    <|unfolded-io>
      612 = 1 * 342 + 270

      342 = 1 * 270 + 72

      270 = 3 * 72 + 54

      72 = 1 * 54 + 18

      54 = 3 * 18 + 0

      The gcd is: 18 and is equal to

      ( -1 ) * ( 54 ) + ( 1 ) * ( 72 )

      ( 4 ) * ( 72 ) + ( -1 ) * ( 270 )

      ( -5 ) * ( 270 ) + ( 4 ) * ( 342 )

      ( 9 ) * ( 342 ) + ( -5 ) * ( 612 )

      So s is -5 and t is 9\ 

      \;

      18 = ( 612 * -5 ) + ( 9 * 342 )
    </unfolded-io>

    <\input>
      \<gtr\>\<gtr\>\<gtr\>\ 
    <|input>
      \;
    </input>

    <\input>
      \<gtr\>\<gtr\>\<gtr\>\ 
    <|input>
      from sympy import ZZ

      t0=0

      t1=1

      s0=1

      s1=0

      def my_igcd(a,b):

      \ \ \ \ global t0, t1, s0, s1\ 

      \ \ \ \ if(b==0):

      \ \ \ \ \ \ \ \ print'r0 =',a, \ 's0 =',s0, \ 't0 =',t0,

      \ \ \ \ \ \ \ \ return

      \ \ \ \ if(a\<gtr\>=b):

      \ \ \ \ \ \ \ \ q= int(ZZ.quo(a,b))

      \ \ \ \ \ \ \ \ temp=t1

      \ \ \ \ \ \ \ \ t1=t0-t1*q

      \ \ \ \ \ \ \ \ t0=temp

      \ \ \ \ \ \ \ \ temp=s1

      \ \ \ \ \ \ \ \ s1=s0-s1*q

      \ \ \ \ \ \ \ \ s0=temp

      \ \ \ \ \ \ \ \ print(q, a, b, s0, s1, t0, t1)

      \ \ \ \ \ \ \ \ a = int(ZZ.rem(a,b))

      \ \ \ \ \ \ \ \ my_igcd(b,a)

      \ \ \ \ elif(b\<gtr\>a):

      \ \ \ \ \ \ \ \ my_igcd(b,a)
    </input>

    <\unfolded-io>
      \<gtr\>\<gtr\>\<gtr\>\ 
    <|unfolded-io>
      my_igcd(342,612)
    <|unfolded-io>
      (1, 612, 342, 0, 1, 1, -1)

      (1, 342, 270, 1, -1, -1, 2)

      (3, 270, 72, -1, 4, 2, -7)

      (1, 72, 54, 4, -5, -7, 9)

      (3, 54, 18, -5, 19, 9, -34)

      r0 = 18 s0 = -5 t0 = 9
    </unfolded-io>

    <\input>
      \<gtr\>\<gtr\>\<gtr\>\ 
    <|input>
      \;
    </input>

    <\input>
      \<gtr\>\<gtr\>\<gtr\>\ 
    <|input>
      from sympy import *

      def modInv (m,n):

      \ \ \ \ m = int(ZZ.rem(m,n))

      \ \ \ \ for i in range(1,n):

      \ \ \ \ \ \ \ \ if (ZZ.rem((m*i),n) == 1):

      \ \ \ \ \ \ \ \ \ \ \ \ return i

      \ \ \ \ return 1
    </input>

    <\unfolded-io>
      \<gtr\>\<gtr\>\<gtr\>\ 
    <|unfolded-io>
      for i in range(1,29):

      \ \ \ \ print (modInv(i,29))
    <|unfolded-io>
      1

      15

      10

      22

      6

      5

      25

      11

      13

      3

      8

      17

      9

      27

      2

      20

      12

      21

      26

      16

      18

      4

      24

      23

      7

      19

      14

      28
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