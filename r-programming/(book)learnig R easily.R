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

# dim=1 vector factor
weekdays <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
favorite_day <- weekdays[5]
favorite_day

weekdays <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
not_blue_monday <- weekdays != "Monday"
not_blue_monday
without_monday <- weekdays[not_blue_monday]
without_monday

without_monday01 <- weekdays[c(-1)] 
without_monday01

speed_char <- c("slow", "fast")
speed_factor <- factor(speed_char, ordered = T, levels = c("slow", "fast"))
speed_factor
 
## dim=2 matrix data.frame
my_mat <- matrix(1:9, nrow = 3) # default fill by col
my_mat[2,3]
my_mat1 <- matrix(1:9, nrow = 3, byrow = TRUE)
my_mat1[2,3]
my_mat
my_mat1
filter <- my_mat %%2 !=0
my_mat[filter]

team_name <- c("Chicago Bulls", "Golden State Warriors")
wins <- c(72, 73)
losses <- c(10, 9)
is_champion <- c(TRUE, FALSE)
season <- c("1995-96", "2015-16")
great_nba_teams <- data.frame(team_name, wins, losses, is_champion, season)
#stringsAsFactors = FALSE)
great_nba_teams$is_champion
great_nba_teams[,"is_champion"]
str(great_nba_teams)

## multi dim array list
my_arr <- array(1:20, dim = c(2, 2, 5)) # 5 2by2 matrix
my_arr[1, 2, 2] # select 7

my_arr[1, , 2] # select row=1 of the 2nd matrix

my_arr[, 2, 2] # select col=2 of the 2nd matrix


title <- "Great NBA Teams"
teams <- c("Chicago Bulls", "Golden State Warriors")
wins <- c(72, 73)
losses <- c(10, 9)
winning_percentage <- wins / (wins + losses)
season <- c("1995-96", "2015-16")
wins_losses <- matrix(c(wins, losses), nrow = 2)
wins_losses
df <- data.frame(teams, winning_percentage,season)
great_nba_teams <- list(title, teams, wins_losses, df)
#great_nba_teams <- list(one_title = title, two_teams = teams, three_wins_losses = wins_losses, four_df = df)
great_nba_teams[[3]][1, ] # 選出芝加哥公牛隊 1995-96 的戰績
#[1] 72 10
great_nba_teams[[4]]$winning_percentage # 選出創紀錄的球季勝率
#[1] 0.8780488 0.8902439

my_array <- array(1:1000, dim = c(10,10,10))
my_array[5,2,4]

title <- "Worst NBA Teams"
teams <- c("Charlotte Bobcats", "Philadelphia 76ers")
wins <- c(7, 9)
losses <- c(59, 73)
worst_nba_teams <- list(title, teams, wins, losses)
worst_nba_teams[[3]]
worst_nba_teams <- list(Title = title, Teams = teams, Wins = wins, Losses = losses)
worst_nba_teams$Teams
