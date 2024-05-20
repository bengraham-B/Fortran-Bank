program one
    implicit none

    character (len = 20)::name = "GOOSE" ! This stores text
    integer :: age = 23
    real :: balance = 3567.90
    logical :: premium = .true.
    
    print * , "Fortran"

    print *, "Name of Client: ", name

end program one

