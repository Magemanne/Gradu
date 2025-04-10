!code which generate random numbers for lammps to use when changing the middle position for bubble
program proba
  implicit none

  logical :: exist
  real    :: x1,x2
  call random_number(x1)
  call random_number(x2)
  x1 = x1*3100
  x2 = x2*3100

  inquire(file="vartotal.txt", exist=exist)
  if (exist) then
    open(12, file="vartotal.txt", status="old", position="append", action="write")
  else
    open(12, file="vartotal.txt", status="new", action="write")
  end if
  write(12, *) x1,x2
  close(12)

 open(13, file="var.txt")
  write(13, *) "variable random1 equal", x1
  write(13, *) "variable random2 equal", x2
  close(13)


end program proba
