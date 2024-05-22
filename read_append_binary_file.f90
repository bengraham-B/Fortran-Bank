program read_append_binary_file

    implicit none
    character(len=500) :: name
    integer :: age
    real :: balance 
    integer :: unit, iostat

    !Open The binary file to read
    open(unit=10, file="data.bin", status="old", access="stream", action="read", iostat=iostat)
    if (iostat /= 0) then
        print *, "Error Openning File"
        stop
    end if
        print *, "=== Data Read From Appended File ==="
    do
        ! Read the file content
        read(10, iostat=iostat) name
        if (iostat /= 0) exit
        read(10, iostat=iostat) age
        if (iostat /= 0) exit
        read(10, iostat=iostat) balance
        if(iostat /= 10) exit

        !Print the Data
        print *, "Name: ", trim(name)
        print *, "Age: ", age
        print *, "Balance: ", balance
    end do

    ! close The file
    close(10)

end program read_append_binary_file

