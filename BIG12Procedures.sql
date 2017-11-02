use BIG12BB;

go
-- find the names of all the players who have been playing for a particular year
create procedure procPlayerYear
(
	@PlayerYear int
)
as
begin

select PLAYERNAME as 'Player Name', SCHOOL as "Player's School" 
from PLAYER as P inner join TEAM as T on P.TEAMID = T.TEAMID
where PLAYERYEAR = @PlayerYear
order by SCHOOL;

end

--execute procPlayerYear
--	@PlayerYear = 2;

go
-- find all the average salary for coaches in a particular State

create procedure proAvgCoachSalaryPerState
(
	@State varchar(20)
)
as
begin

Select AVG(SALARY) as 'Average Coach Salary Per State' from
COACH AS C inner join TEAM as T
on C.COACHID = T.COACHID
inner join LOCATION as L 
on L.LOCATIONID = T.LOCATIONID
where L.STATES = @State;

end;

--execute proAvgCoachSalaryPerState
--	@State = 'Texas'

go

--create procedure to add players to a team

create procedure procAddPlayers
(
	@PlayerId int,
	@PlayerName varchar(30),
	@PlayerYear int,
	@TeamId int
)
as
begin

insert PLAYER (PLAYERID, PLAYERNAME, PLAYERYEAR, TEAMID)
values
(@PlayerId, @PlayerName, @PlayerYear, @TeamId)

end

	

go

--find the Match Ups (Game date, AwayTeamId, and NetworkId) of played at a particular arena
create procedure procArenaMatchup
(
	@ArenaName varchar(40)
)
as
begin

select M.MATCHUPDATE as 'Date' , TA.TEAMNAME as 'Away Team', N.NETWORKNAME as 'Network' from 
MATCHUP as M inner join TEAM as T 
on M.HOMETEAMID = T.TEAMID inner join
LOCATION as L on L.LOCATIONID = T.LOCATIONID inner join
ARENA as A on A.ARENAID = L.ARENAID
inner join NETWORK as N on N.NETWORKID = M.NETWORKID
inner join TEAM as TA on TA.TEAMID = M.AWAYTEAMID
where ARENANAME = @ArenaName;

end

--execute procArenaMatchup
--@ArenaName = 'Allen Fieldhouse'


go
-- procedure to create a matchup

create procedure procAddMatchup
(
	@HomeTeam int,
	@AwayTeam int, 
	@Matchupdate date = null,
	@MatchupTime time = null,
	@NetworkId int
)
as
begin

insert MATCHUP (HOMETEAMID, AWAYTEAMID, MATCHUPDATE, MATCHUPTIME, NETWORKID)
values 
(@HomeTeam, @AwayTeam, @Matchupdate, @MatchupTime, @NetworkId)

end

--execute procAddMatchup
--	@HomeTeam = 29,
--	@AwayTeam = 21,
--	@Matchupdate = '01/05/2018',
--	@MatchupTime = '09:30',
--	@NetworkId = 3
go


create procedure procFullBig12Schedule
as
select T.SCHOOL as 'Home Team', T2.SCHOOL as 'Away Team', MATCHUPDATE as 'Date', MATCHUPTIME as 'Time', N.NETWORKNAME as 'Network'
from MATCHUP as M join TEAM as T on M.HOMETEAMID = T.TEAMID
join NETWORK as N on N.NETWORKID = M.NETWORKID 
join TEAM as T2 on T2.TEAMID = M.AWAYTEAMID
order by MATCHUPDATE, MATCHUPTIME

execute procFullBig12Schedule

go

--amount of matchups per netowrk
create procedure procMatchUpPerNetwork
(
	@NetworkName varchar(30)
)
as
begin
select Sum(MATCHUPID) as 'Amount of Matchups Per Network'
from MATCHUP as M inner join NETWORK as N 
on M.NETWORKID = N.NETWORKID
where NETWORKNAME = @NetworkName

end

--execute procMatchupUpPerNework
--@NetworkName = ESPN2









