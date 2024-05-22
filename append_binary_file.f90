program append_binary_file

    implicit none
    character(len=500) :: name 
    integer :: age
    real :: balance 
    integer :: unit, iostat

    ! Initilize the data 
    name = 'James'
    age = 22 
    balance = 45986.13

    !Open the binary file for append
    open(unit=10, file='data.bin', status='old', access='stream', action='write', position='append', iostat=iostat)

    if (iostat /= 0) then
        print *, 'Error opening the file'
        stop
    end if

    !Writing data to the file
    write(10) name
    write(10) age 
    write(10) balance 

    !Close the file
    close(10)


end program append_binary_file
