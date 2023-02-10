program lab2
    ! Nicholas Maynard
    ! CSI 501
    ! Lab 2
    ! 02/09/23

    ! This program is meant to perform some basic averaging.

    ! Clean up memory
    implicit none
    
    ! Initialize values
    integer :: i, n
    real :: total = 0
    real, allocatable :: A(:)
    ! Open the file reader
    open(unit=13, file='LabData.txt')

    ! Read the first line of the file
    read(13,*) n
    
    ! Allocate memory for the array
    allocate(A(n))

    ! Add data from file to array
    do i=1,n
        read(13,*) A(i)
        total = total + A(i)
    enddo

    ! Print our values
    print*, 'The Array is: ', A
    print*, 'The Sum is: ', total

    ! Funnily enough we can also just sum across the array instead of hand computing this.
    print*, 'The Sum is: ', sum(A)
    
    print*, 'The Average is: ', total / float(n)
    ! Close the file reader
    close(13)

    ! Deallocate the memory used
    deallocate(A)

end program lab2