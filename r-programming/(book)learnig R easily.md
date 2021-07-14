sys_date <- Sys.Date()
sys_date
class(sys_date)
sys_date_char <- as.character(sys_date)
sys_date_char
class(sys_date_char)
as.integer(sys_date)
as.integer(sys_date_char)
date_of_origin <- as.Date("1970-01-01")
as.integer(date_of_origin)
beyond_start <- as.Date("1983-12-31")
as.integer(beyond_start)
days_diff <- Sys.Date()-beyond_start
years_diff <- days_diff/365
days_diff
years_diff
a <- as.integer(Sys.Date())
b <- as.integer(beyond_start)
b
a-b
inherits(a-b, what = "numeric")
class(a-b)
inherits(a-b, what = "integer")
?inherits
is.integer(a-b)
as.logical("hi")
as.logical("t")
as.logical("true")
major_quake_time <- "1999-09-21 01:47:16"
first_aftershock_time <- "1999-09-21 01:57:15"
major_quake_time <- as.POSIXct(major_quake_time)
first_aftershock_time <- as.POSIXct(first_aftershock_time)
first_aftershock_time
first_aftershock_time - major_quake_time
