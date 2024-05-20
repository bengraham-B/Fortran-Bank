program read_binary_file

    implicit none

    character(len=50) :: name 
    integer :: age 
    real :: balance 
    integer :: unit_number = 10

    open(unit=unit_number, file='data.bin', form='unformatted', status='old', action='read')

    read(unit_number) name, age, balance 

    close(unit_number)

    print *, "======= Values from the Binary File ======="
    print *, "Name: ", name
    print *, "Age: ", age
    print *, "Balance: $", balance

end program read_binary_file
