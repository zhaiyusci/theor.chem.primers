      program main
        implicit none
        !integer i
        real*8 x, psi0,psi1,psi2,psi3,psi4
        integer f
        do x=-10.0d0,10.0d0,0.01d0
        call harmonicwf(1.0d0,0 ,x,psi0)
        call harmonicwf(1.0d0,1 ,x,psi1)
        call harmonicwf(1.0d0,2 ,x,psi2)
        call harmonicwf(1.0d0,3 ,x,psi3)
        call harmonicwf(1.0d0,4 ,x,psi4)
        write(*,"(6f18.6)") x, psi0,psi1,psi2,psi3,psi4
        end do
        stop
      end program main


      subroutine harmonicwf(alpha,n,x,psi)
        implicit none
        real*8 :: alpha
        real*8, parameter :: pi=dacos(-1.0d0)
        real*8 :: x, psi
        integer :: n, f

        ! Ref: Bernath Spectr. Atom. Mol. P215
        call hermitepoly(n,alpha**0.5d0*x,psi)
        !psi=1.0d0
        !write(*,*) "Hn(x)", psi
        call factorial(n,f)
        psi=psi*(2**n*f)**(-0.5d0)
     &     *(alpha/pi)**0.25d0
     &     *dexp(-alpha*x**2*0.5d0)
        return
      end subroutine harmonicwf

      subroutine hermitepoly(n,x,h)
        implicit none
        integer :: a(0:999,0:999)=0
        ! Store the coefficients of Hermite Polynomial
        ! The 2nd index is the range of the Polynomial
        integer :: n
        integer :: oldn=1
        integer :: i,j
        real*8 :: x, h
        save oldn, a
        a(0,0)=1
        a(1,1)=2
        if(n.gt.oldn.and.n.gt.1)then
          do i=oldn+1 ,n
          do j=i,1,-2
          a(j,i)=2*a(j-1,i-1)-2*(i-1)*a(j,i-2)
          end do
          a(0,i)=-2*(i-1)*a(0,i-2)
          end do
          oldn=n
        end if
        
        h=0.0d0
        do i=n,0,-2
        h=h+a(i,n)*x**i
        end do
        return
      end subroutine hermitepoly

          

      subroutine factorial(n,f)
        implicit none
        integer :: a(0:999)=1
        integer :: n, f
        integer :: oldn=0
        integer :: i,j
        save oldn, a

        a(0)=1
        if(n.gt.oldn.and.n.gt.0)then
          !write(*,*) "more", n
          do i=oldn+1 ,n
          a(i)=i*a(i-1)
          !write(*,*) i, a(i)
          end do
          !return
          oldn=n
        end if

        f=a(n)
        
        return
      end subroutine factorial


