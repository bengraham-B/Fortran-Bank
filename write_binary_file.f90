program write_binary_file

implicit none
character(len=50) :: name = "Samb Tomb"
    integer :: age = 23
    real :: balance = 52040.78
    integer :: unit_number

    unit_number = 10

    open(unit=unit_number, file='data.bin', form='unformatted', status='replace', action='write')

    write(unit_number) name, age, balance 

    close(unit_number)

end program write_binary_file
